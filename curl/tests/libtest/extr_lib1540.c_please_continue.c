
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transfer_status {int halted; int please; int easy; } ;
typedef int curl_off_t ;


 int CURLPAUSE_CONT ;
 int curl_easy_pause (int ,int ) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static int please_continue(void *userp,
                           curl_off_t dltotal,
                           curl_off_t dlnow,
                           curl_off_t ultotal,
                           curl_off_t ulnow)
{
  struct transfer_status *st = (struct transfer_status *)userp;
  (void)dltotal;
  (void)dlnow;
  (void)ultotal;
  (void)ulnow;
  if(st->halted) {
    st->please++;
    if(st->please == 2) {

      curl_easy_pause(st->easy, CURLPAUSE_CONT);
    }
  }
  fprintf(stderr, "xferinfo: paused %d\n", st->halted);
  return 0;
}
