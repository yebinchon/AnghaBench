
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * cookielist; } ;
struct TYPE_4__ {scalar_t__* str; } ;
struct Curl_easy {int * cookies; TYPE_3__* share; TYPE_2__ change; TYPE_1__ set; } ;
struct TYPE_6__ {int * cookies; } ;


 int CURL_LOCK_ACCESS_SINGLE ;
 int CURL_LOCK_DATA_COOKIE ;
 int Curl_cookie_cleanup (int *) ;
 int Curl_cookie_loadfiles (struct Curl_easy*) ;
 int Curl_share_lock (struct Curl_easy*,int ,int ) ;
 int Curl_share_unlock (struct Curl_easy*,int ) ;
 size_t STRING_COOKIEJAR ;
 scalar_t__ cookie_output (int *,scalar_t__) ;
 int curl_slist_free_all (int *) ;
 int infof (struct Curl_easy*,char*,scalar_t__) ;

void Curl_flush_cookies(struct Curl_easy *data, bool cleanup)
{
  if(data->set.str[STRING_COOKIEJAR]) {
    if(data->change.cookielist) {



      Curl_cookie_loadfiles(data);
    }

    Curl_share_lock(data, CURL_LOCK_DATA_COOKIE, CURL_LOCK_ACCESS_SINGLE);


    if(cookie_output(data->cookies, data->set.str[STRING_COOKIEJAR]))
      infof(data, "WARNING: failed to save cookies in %s\n",
            data->set.str[STRING_COOKIEJAR]);
  }
  else {
    if(cleanup && data->change.cookielist) {


      curl_slist_free_all(data->change.cookielist);
      data->change.cookielist = ((void*)0);
    }
    Curl_share_lock(data, CURL_LOCK_DATA_COOKIE, CURL_LOCK_ACCESS_SINGLE);
  }

  if(cleanup && (!data->share || (data->cookies != data->share->cookies))) {
    Curl_cookie_cleanup(data->cookies);
    data->cookies = ((void*)0);
  }
  Curl_share_unlock(data, CURL_LOCK_DATA_COOKIE);
}
