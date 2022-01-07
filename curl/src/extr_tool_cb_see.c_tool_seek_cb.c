
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct InStruct {int fd; } ;
typedef scalar_t__ curl_off_t ;


 int CURL_SEEKFUNC_CANTSEEK ;
 int CURL_SEEKFUNC_FAIL ;
 int CURL_SEEKFUNC_OK ;
 scalar_t__ LSEEK_ERROR ;
 long OUR_MAX_SEEK_L ;
 scalar_t__ OUR_MAX_SEEK_O ;
 int SEEK_CUR ;
 int SEEK_SET ;
 scalar_t__ lseek (int ,scalar_t__,int) ;

int tool_seek_cb(void *userdata, curl_off_t offset, int whence)
{
  struct InStruct *in = userdata;
  if(LSEEK_ERROR == lseek(in->fd, offset, whence))



    return CURL_SEEKFUNC_CANTSEEK;

  return CURL_SEEKFUNC_OK;
}
