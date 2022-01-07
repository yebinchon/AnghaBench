
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_URL {int dummy; } ;
typedef int CURLU ;


 int * calloc (int,int) ;

CURLU *curl_url(void)
{
  return calloc(sizeof(struct Curl_URL), 1);
}
