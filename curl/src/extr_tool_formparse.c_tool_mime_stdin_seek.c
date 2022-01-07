
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ curpos; scalar_t__ origin; int data; int size; } ;
typedef TYPE_1__ tool_mime ;
typedef scalar_t__ curl_off_t ;


 int CURL_SEEKFUNC_CANTSEEK ;
 int CURL_SEEKFUNC_OK ;


 int SEEK_SET ;
 scalar_t__ fseek (int ,long,int ) ;
 int stdin ;

int tool_mime_stdin_seek(void *instream, curl_off_t offset, int whence)
{
  tool_mime *sip = (tool_mime *) instream;

  switch(whence) {
  case 129:
    offset += sip->curpos;
    break;
  case 128:
    offset += sip->size;
    break;
  }
  if(offset < 0)
    return CURL_SEEKFUNC_CANTSEEK;
  if(!sip->data) {
    if(fseek(stdin, (long) (offset + sip->origin), SEEK_SET))
      return CURL_SEEKFUNC_CANTSEEK;
  }
  sip->curpos = offset;
  return CURL_SEEKFUNC_OK;
}
