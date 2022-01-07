
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct curl_slist {struct curl_slist* next; int data; } ;
struct TYPE_4__ {struct curl_slist* cookielist; } ;
struct TYPE_3__ {int cookiesession; } ;
struct Curl_easy {TYPE_2__ change; struct CookieInfo* cookies; TYPE_1__ set; } ;
struct CookieInfo {int dummy; } ;


 int CURL_LOCK_ACCESS_SINGLE ;
 int CURL_LOCK_DATA_COOKIE ;
 struct CookieInfo* Curl_cookie_init (struct Curl_easy*,int ,struct CookieInfo*,int ) ;
 int Curl_share_lock (struct Curl_easy*,int ,int ) ;
 int Curl_share_unlock (struct Curl_easy*,int ) ;
 int curl_slist_free_all (struct curl_slist*) ;
 int infof (struct Curl_easy*,char*,int ) ;

void Curl_cookie_loadfiles(struct Curl_easy *data)
{
  struct curl_slist *list = data->change.cookielist;
  if(list) {
    Curl_share_lock(data, CURL_LOCK_DATA_COOKIE, CURL_LOCK_ACCESS_SINGLE);
    while(list) {
      struct CookieInfo *newcookies = Curl_cookie_init(data,
                                        list->data,
                                        data->cookies,
                                        data->set.cookiesession);
      if(!newcookies)



        infof(data, "ignoring failed cookie_init for %s\n", list->data);
      else
        data->cookies = newcookies;
      list = list->next;
    }
    curl_slist_free_all(data->change.cookielist);
    data->change.cookielist = ((void*)0);
    Curl_share_unlock(data, CURL_LOCK_DATA_COOKIE);
  }
}
