
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int maxredirs; int followlocation; void* httpreq; int keep_post; int opt_no_body; scalar_t__ http_auto_referer; } ;
struct TYPE_7__ {char* wouldredirect; int httpcode; } ;
struct TYPE_6__ {int referer_alloc; char* referer; char* url; int url_alloc; } ;
struct TYPE_5__ {void* allow_port; int uh; void* this_is_a_follow; } ;
struct Curl_easy {TYPE_4__ set; TYPE_3__ info; TYPE_2__ change; TYPE_1__ state; } ;
typedef scalar_t__ followtype ;
typedef int CURLcode ;
typedef scalar_t__ CURLUcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLE_TOO_MANY_REDIRECTS ;
 int CURLUPART_URL ;
 int CURLU_NON_SUPPORT_SCHEME ;
 int CURLU_URLENCODE ;
 int CURL_REDIR_POST_301 ;
 int CURL_REDIR_POST_302 ;
 int CURL_REDIR_POST_303 ;
 scalar_t__ Curl_is_absolute_url (char*,int *,int ) ;
 int Curl_pgrsResetTransferSizes (struct Curl_easy*) ;
 int Curl_pgrsTime (struct Curl_easy*,int ) ;
 int Curl_safefree (char*) ;
 int Curl_uc_to_curlcode (scalar_t__) ;
 int DEBUGASSERT (int ) ;
 void* FALSE ;
 scalar_t__ FOLLOW_FAKE ;
 scalar_t__ FOLLOW_REDIR ;
 void* HTTPREQ_GET ;
 void* HTTPREQ_POST ;
 void* HTTPREQ_POST_FORM ;
 void* HTTPREQ_POST_MIME ;
 int MAX_SCHEME_LEN ;
 int TIMER_REDIRECT ;
 void* TRUE ;
 scalar_t__ curl_url_get (int ,int ,char**,int ) ;
 scalar_t__ curl_url_set (int ,int ,char*,int ) ;
 int failf (struct Curl_easy*,char*,int) ;
 int infof (struct Curl_easy*,char*,...) ;
 void* strdup (char*) ;

CURLcode Curl_follow(struct Curl_easy *data,
                     char *newurl,
                     followtype type)
{
  bool disallowport = FALSE;
  bool reachedmax = FALSE;
  CURLUcode uc;

  if(type == FOLLOW_REDIR) {
    if((data->set.maxredirs != -1) &&
       (data->set.followlocation >= data->set.maxredirs)) {
      reachedmax = TRUE;
      type = FOLLOW_FAKE;

    }
    else {

      data->state.this_is_a_follow = TRUE;

      data->set.followlocation++;

      if(data->set.http_auto_referer) {




        if(data->change.referer_alloc) {
          Curl_safefree(data->change.referer);
          data->change.referer_alloc = FALSE;
        }

        data->change.referer = strdup(data->change.url);
        if(!data->change.referer)
          return CURLE_OUT_OF_MEMORY;
        data->change.referer_alloc = TRUE;
      }
    }
  }

  if(Curl_is_absolute_url(newurl, ((void*)0), MAX_SCHEME_LEN))

    disallowport = TRUE;

  DEBUGASSERT(data->state.uh);
  uc = curl_url_set(data->state.uh, CURLUPART_URL, newurl,
                    (type == FOLLOW_FAKE) ? CURLU_NON_SUPPORT_SCHEME :
                    ((type == FOLLOW_REDIR) ? CURLU_URLENCODE : 0) );
  if(uc) {
    if(type != FOLLOW_FAKE)
      return Curl_uc_to_curlcode(uc);



    newurl = strdup(newurl);
    if(!newurl)
      return CURLE_OUT_OF_MEMORY;
  }
  else {

    uc = curl_url_get(data->state.uh, CURLUPART_URL, &newurl, 0);
    if(uc)
      return Curl_uc_to_curlcode(uc);
  }

  if(type == FOLLOW_FAKE) {


    data->info.wouldredirect = newurl;

    if(reachedmax) {
      failf(data, "Maximum (%ld) redirects followed", data->set.maxredirs);
      return CURLE_TOO_MANY_REDIRECTS;
    }
    return CURLE_OK;
  }

  if(disallowport)
    data->state.allow_port = FALSE;

  if(data->change.url_alloc)
    Curl_safefree(data->change.url);

  data->change.url = newurl;
  data->change.url_alloc = TRUE;

  infof(data, "Issue another request to this URL: '%s'\n", data->change.url);
  switch(data->info.httpcode) {







  default:



    break;
  case 301:
    if((data->set.httpreq == HTTPREQ_POST
        || data->set.httpreq == HTTPREQ_POST_FORM
        || data->set.httpreq == HTTPREQ_POST_MIME)
       && !(data->set.keep_post & CURL_REDIR_POST_301)) {
      infof(data, "Switch from POST to GET\n");
      data->set.httpreq = HTTPREQ_GET;
    }
    break;
  case 302:
    if((data->set.httpreq == HTTPREQ_POST
        || data->set.httpreq == HTTPREQ_POST_FORM
        || data->set.httpreq == HTTPREQ_POST_MIME)
       && !(data->set.keep_post & CURL_REDIR_POST_302)) {
      infof(data, "Switch from POST to GET\n");
      data->set.httpreq = HTTPREQ_GET;
    }
    break;

  case 303:


    if(data->set.httpreq != HTTPREQ_GET
      && !(data->set.keep_post & CURL_REDIR_POST_303)) {
      data->set.httpreq = HTTPREQ_GET;
      infof(data, "Disables POST, goes with %s\n",
            data->set.opt_no_body?"HEAD":"GET");
    }
    break;
  case 304:



    break;
  case 305:







    break;
  }
  Curl_pgrsTime(data, TIMER_REDIRECT);
  Curl_pgrsResetTransferSizes(data);

  return CURLE_OK;

}
