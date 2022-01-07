
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EINTR ;
 char* REQUEST_DUMP ;
 char* REQUEST_PROXY_DUMP ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fwrite (char const*,int,size_t,int *) ;
 scalar_t__ got_exit_signal ;
 scalar_t__ is_proxy ;
 int logmsg (char*,...) ;
 int strerror (int) ;

__attribute__((used)) static void storerequest(const char *reqbuf, size_t totalsize)
{
  int res;
  int error = 0;
  size_t written;
  size_t writeleft;
  FILE *dump;
  const char *dumpfile = is_proxy?REQUEST_PROXY_DUMP:REQUEST_DUMP;

  if(reqbuf == ((void*)0))
    return;
  if(totalsize == 0)
    return;

  do {
    dump = fopen(dumpfile, "ab");
  } while((dump == ((void*)0)) && ((error = errno) == EINTR));
  if(dump == ((void*)0)) {
    logmsg("[2] Error opening file %s error: %d %s",
           dumpfile, error, strerror(error));
    logmsg("Failed to write request input ");
    return;
  }

  writeleft = totalsize;
  do {
    written = fwrite(&reqbuf[totalsize-writeleft],
                     1, writeleft, dump);
    if(got_exit_signal)
      goto storerequest_cleanup;
    if(written > 0)
      writeleft -= written;
  } while((writeleft > 0) && ((error = errno) == EINTR));

  if(writeleft == 0)
    logmsg("Wrote request (%zu bytes) input to %s", totalsize, dumpfile);
  else if(writeleft > 0) {
    logmsg("Error writing file %s error: %d %s",
           dumpfile, error, strerror(error));
    logmsg("Wrote only (%zu bytes) of (%zu bytes) request input to %s",
           totalsize-writeleft, totalsize, dumpfile);
  }

storerequest_cleanup:

  do {
    res = fclose(dump);
  } while(res && ((error = errno) == EINTR));
  if(res)
    logmsg("Error closing file %s error: %d %s",
           dumpfile, error, strerror(error));
}
