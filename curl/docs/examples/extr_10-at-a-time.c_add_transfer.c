
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLM ;
typedef int CURL ;


 int CURLOPT_PRIVATE ;
 int CURLOPT_URL ;
 int CURLOPT_WRITEFUNCTION ;
 int * curl_easy_init () ;
 int curl_easy_setopt (int *,int ,int ) ;
 int curl_multi_add_handle (int *,int *) ;
 int * urls ;
 int write_cb ;

__attribute__((used)) static void add_transfer(CURLM *cm, int i)
{
  CURL *eh = curl_easy_init();
  curl_easy_setopt(eh, CURLOPT_WRITEFUNCTION, write_cb);
  curl_easy_setopt(eh, CURLOPT_URL, urls[i]);
  curl_easy_setopt(eh, CURLOPT_PRIVATE, urls[i]);
  curl_multi_add_handle(cm, eh);
}
