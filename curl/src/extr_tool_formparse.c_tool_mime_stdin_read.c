
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; scalar_t__ curpos; int * config; scalar_t__ data; } ;
typedef TYPE_1__ tool_mime ;
typedef scalar_t__ curl_off_t ;


 size_t CURL_READFUNC_ABORT ;
 size_t curlx_sotouz (scalar_t__) ;
 scalar_t__ curlx_uztoso (size_t) ;
 int errno ;
 scalar_t__ ferror (int ) ;
 size_t fread (char*,int,size_t,int ) ;
 int memcpy (char*,scalar_t__,size_t) ;
 int stdin ;
 int strerror (int ) ;
 int warnf (int *,char*,int ) ;

size_t tool_mime_stdin_read(char *buffer,
                            size_t size, size_t nitems, void *arg)
{
  tool_mime *sip = (tool_mime *) arg;
  curl_off_t bytesleft;
  (void) size;

  if(sip->size >= 0) {
    if(sip->curpos >= sip->size)
      return 0;
    bytesleft = sip->size - sip->curpos;
    if(curlx_uztoso(nitems) > bytesleft)
      nitems = curlx_sotouz(bytesleft);
  }
  if(nitems) {
    if(sip->data) {

      memcpy(buffer, sip->data + curlx_sotouz(sip->curpos), nitems);
    }
    else {

      nitems = fread(buffer, 1, nitems, stdin);
      if(ferror(stdin)) {

        if(sip->config) {
          warnf(sip->config, "stdin: %s\n", strerror(errno));
          sip->config = ((void*)0);
        }
        return CURL_READFUNC_ABORT;
      }
    }
    sip->curpos += curlx_uztoso(nitems);
  }
  return nitems;
}
