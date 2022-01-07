
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curlioerr ;
typedef int CURL ;


 int CURLIOCMD_RESTARTREAD ;
 int CURLIOE_OK ;
 int CURLIOE_UNKNOWNCMD ;
 scalar_t__ current_offset ;
 int printf (char*) ;

__attribute__((used)) static curlioerr ioctl_callback(CURL *handle, int cmd, void *clientp)
{
  (void)clientp;
  if(cmd == CURLIOCMD_RESTARTREAD) {
    printf("APPLICATION: received a CURLIOCMD_RESTARTREAD request\n");
    printf("APPLICATION: ** REWINDING! **\n");
    current_offset = 0;
    return CURLIOE_OK;
  }
  (void)handle;
  return CURLIOE_UNKNOWNCMD;
}
