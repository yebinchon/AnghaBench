
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_hash {int dummy; } ;


 int Curl_hash_clean_with_criterium (struct curl_hash*,int *,int *) ;

void
Curl_hash_clean(struct curl_hash *h)
{
  Curl_hash_clean_with_criterium(h, ((void*)0), ((void*)0));
}
