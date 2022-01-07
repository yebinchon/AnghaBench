
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httprequest {char* testno; int skip; int writedelay; void* close; void* upgrade; void* connmon; int rcmd; void* open; void* auth_req; } ;
typedef int FILE ;


 int CMD_AUTH_REQUIRED ;
 int CMD_CONNECTIONMONITOR ;
 int CMD_IDLE ;
 int CMD_STREAM ;
 int CMD_SWSCLOSE ;
 int CMD_UPGRADE ;
 void* FALSE ;
 int RCMD_IDLE ;
 int RCMD_STREAM ;
 void* TRUE ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int getpart (char**,size_t*,char*,char*,int *) ;
 int logmsg (char*,...) ;
 int sscanf (char*,char*,int*) ;
 char* strchr (char*,char) ;
 int strerror (int) ;
 int strlen (int ) ;
 int strncmp (int ,char*,int ) ;
 char* test2file (char*) ;

__attribute__((used)) static int parse_servercmd(struct httprequest *req)
{
  FILE *stream;
  char *filename;
  int error;

  filename = test2file(req->testno);
  req->close = FALSE;
  stream = fopen(filename, "rb");
  if(!stream) {
    error = errno;
    logmsg("fopen() failed with error: %d %s", error, strerror(error));
    logmsg("  [1] Error opening file: %s", filename);
    logmsg("  Couldn't open test file %ld", req->testno);
    req->open = FALSE;
    return 1;
  }
  else {
    char *orgcmd = ((void*)0);
    char *cmd = ((void*)0);
    size_t cmdsize = 0;
    int num = 0;


    error = getpart(&orgcmd, &cmdsize, "reply", "servercmd", stream);
    fclose(stream);
    if(error) {
      logmsg("getpart() failed with error: %d", error);
      req->open = FALSE;
      return 1;
    }

    req->connmon = FALSE;

    cmd = orgcmd;
    while(cmd && cmdsize) {
      char *check;

      if(!strncmp(CMD_AUTH_REQUIRED, cmd, strlen(CMD_AUTH_REQUIRED))) {
        logmsg("instructed to require authorization header");
        req->auth_req = TRUE;
      }
      else if(!strncmp(CMD_IDLE, cmd, strlen(CMD_IDLE))) {
        logmsg("instructed to idle");
        req->rcmd = RCMD_IDLE;
        req->open = TRUE;
      }
      else if(!strncmp(CMD_STREAM, cmd, strlen(CMD_STREAM))) {
        logmsg("instructed to stream");
        req->rcmd = RCMD_STREAM;
      }
      else if(!strncmp(CMD_CONNECTIONMONITOR, cmd,
                       strlen(CMD_CONNECTIONMONITOR))) {
        logmsg("enabled connection monitoring");
        req->connmon = TRUE;
      }
      else if(!strncmp(CMD_UPGRADE, cmd, strlen(CMD_UPGRADE))) {
        logmsg("enabled upgrade to http2");
        req->upgrade = TRUE;
      }
      else if(!strncmp(CMD_SWSCLOSE, cmd, strlen(CMD_SWSCLOSE))) {
        logmsg("swsclose: close this connection after response");
        req->close = TRUE;
      }
      else if(1 == sscanf(cmd, "skip: %d", &num)) {
        logmsg("instructed to skip this number of bytes %d", num);
        req->skip = num;
      }
      else if(1 == sscanf(cmd, "writedelay: %d", &num)) {
        logmsg("instructed to delay %d secs between packets", num);
        req->writedelay = num;
      }
      else {
        logmsg("Unknown <servercmd> instruction found: %s", cmd);
      }

      check = strchr(cmd, '\r');
      if(!check)
        check = strchr(cmd, '\n');

      if(check) {

        while((*check == '\r') || (*check == '\n'))
          check++;

        if(!*check)

          break;
        cmd = check;
      }
      else
        break;
    }
    free(orgcmd);
  }

  return 0;
}
