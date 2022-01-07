
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transfer_status {int counter; int halted; } ;


 size_t CURL_WRITEFUNC_PAUSE ;
 int fwrite (void*,size_t,size_t,int ) ;
 int printf (char*,int) ;
 int stdout ;

__attribute__((used)) static size_t write_callback(void *ptr, size_t size, size_t nmemb, void *userp)
{
  struct transfer_status *st = (struct transfer_status *)userp;
  size_t len = size * nmemb;
  st->counter++;
  if(st->counter > 1) {


    fwrite(ptr, size, nmemb, stdout);
    return len;
  }
  printf("Got %d bytes but pausing!\n", (int)len);
  st->halted = 1;
  return CURL_WRITEFUNC_PAUSE;
}
