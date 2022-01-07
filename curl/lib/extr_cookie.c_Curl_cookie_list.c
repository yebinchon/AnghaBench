
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {int dummy; } ;
struct Curl_easy {int dummy; } ;


 int CURL_LOCK_ACCESS_SINGLE ;
 int CURL_LOCK_DATA_COOKIE ;
 int Curl_share_lock (struct Curl_easy*,int ,int ) ;
 int Curl_share_unlock (struct Curl_easy*,int ) ;
 struct curl_slist* cookie_list (struct Curl_easy*) ;

struct curl_slist *Curl_cookie_list(struct Curl_easy *data)
{
  struct curl_slist *list;
  Curl_share_lock(data, CURL_LOCK_DATA_COOKIE, CURL_LOCK_ACCESS_SINGLE);
  list = cookie_list(data);
  Curl_share_unlock(data, CURL_LOCK_DATA_COOKIE);
  return list;
}
