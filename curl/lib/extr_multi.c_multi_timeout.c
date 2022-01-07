
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ timediff_t ;
struct curltime {int member_1; int member_0; } ;
struct Curl_multi {TYPE_1__* timetree; } ;
struct TYPE_3__ {int key; } ;
typedef int CURLMcode ;


 int CURLM_OK ;
 struct curltime Curl_now () ;
 TYPE_1__* Curl_splay (struct curltime,TYPE_1__*) ;
 scalar_t__ Curl_splaycomparekeys (int ,struct curltime) ;
 scalar_t__ Curl_timediff (int ,struct curltime) ;

__attribute__((used)) static CURLMcode multi_timeout(struct Curl_multi *multi,
                               long *timeout_ms)
{
  static struct curltime tv_zero = {0, 0};

  if(multi->timetree) {

    struct curltime now = Curl_now();


    multi->timetree = Curl_splay(tv_zero, multi->timetree);

    if(Curl_splaycomparekeys(multi->timetree->key, now) > 0) {

      timediff_t diff = Curl_timediff(multi->timetree->key, now);
      if(diff <= 0)







        *timeout_ms = 1;
      else


        *timeout_ms = (long)diff;
    }
    else

      *timeout_ms = 0;
  }
  else
    *timeout_ms = -1;

  return CURLM_OK;
}
