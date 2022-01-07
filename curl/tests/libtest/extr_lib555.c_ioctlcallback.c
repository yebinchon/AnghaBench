
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curlioerr ;
typedef int CURL ;


 int CURLIOCMD_RESTARTREAD ;
 int CURLIOE_OK ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static curlioerr ioctlcallback(CURL *handle,
                               int cmd,
                               void *clientp)
{
  int *counter = (int *)clientp;
  (void)handle;
  if(cmd == CURLIOCMD_RESTARTREAD) {
    fprintf(stderr, "REWIND!\n");
    *counter = 0;
  }
  return CURLIOE_OK;
}
