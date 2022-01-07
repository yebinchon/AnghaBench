
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testcase {char* testno; int writedelay; } ;
typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int getpart (char**,size_t*,char*,char*,int *) ;
 int logmsg (char*,...) ;
 int sscanf (char*,char*,int*) ;
 char* strchr (char*,char) ;
 int strerror (int) ;
 char* test2file (char*) ;

__attribute__((used)) static int parse_servercmd(struct testcase *req)
{
  FILE *stream;
  char *filename;
  int error;

  filename = test2file(req->testno);

  stream = fopen(filename, "rb");
  if(!stream) {
    error = errno;
    logmsg("fopen() failed with error: %d %s", error, strerror(error));
    logmsg("  [1] Error opening file: %s", filename);
    logmsg("  Couldn't open test file %ld", req->testno);
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
      return 1;
    }

    cmd = orgcmd;
    while(cmd && cmdsize) {
      char *check;
      if(1 == sscanf(cmd, "writedelay: %d", &num)) {
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
