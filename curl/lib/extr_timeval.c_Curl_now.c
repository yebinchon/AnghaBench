
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curltime {scalar_t__ tv_usec; int tv_sec; } ;


 int time (int *) ;

struct curltime Curl_now(void)
{



  struct curltime now;
  now.tv_sec = time(((void*)0));
  now.tv_usec = 0;
  return now;
}
