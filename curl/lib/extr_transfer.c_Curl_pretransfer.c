
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct WildcardData {scalar_t__ state; } ;
struct TYPE_13__ {int want; int picked; } ;
struct TYPE_12__ {int want; int picked; } ;
struct TYPE_14__ {int infilesize; scalar_t__ wildcardmatch; TYPE_6__ authproxy; TYPE_5__ authhost; int prev_signal; int allow_port; void* authproblem; scalar_t__ httpversion; void* errorbuf; void* this_is_a_follow; } ;
struct TYPE_8__ {int max_ssl_sessions; } ;
struct TYPE_11__ {scalar_t__ httpreq; int filesize; int postfieldsize; int no_signal; scalar_t__ postfields; int proxyauth; int httpauth; scalar_t__ followlocation; scalar_t__ wildcard_enabled; TYPE_1__ general_ssl; int ** str; scalar_t__ uh; } ;
struct TYPE_10__ {scalar_t__ resolve; scalar_t__ cookielist; int * url; void* url_alloc; } ;
struct TYPE_9__ {int * wouldredirect; } ;
struct Curl_easy {TYPE_7__ state; struct WildcardData wildcard; TYPE_4__ set; TYPE_3__ change; TYPE_2__ info; } ;
typedef int curl_off_t ;
typedef scalar_t__ CURLcode ;
typedef scalar_t__ CURLUcode ;


 scalar_t__ CURLE_OUT_OF_MEMORY ;
 scalar_t__ CURLE_URL_MALFORMAT ;
 int CURLUPART_URL ;
 scalar_t__ CURLWC_INIT ;
 int Curl_cookie_loadfiles (struct Curl_easy*) ;
 int Curl_http2_init_state (TYPE_7__*) ;
 int Curl_initinfo (struct Curl_easy*) ;
 scalar_t__ Curl_loadhostpairs (struct Curl_easy*) ;
 int Curl_pgrsResetTransferSizes (struct Curl_easy*) ;
 int Curl_pgrsStartNow (struct Curl_easy*) ;
 int Curl_safefree (int *) ;
 scalar_t__ Curl_ssl_initsessions (struct Curl_easy*,int ) ;
 scalar_t__ Curl_wildcard_init (struct WildcardData*) ;
 void* FALSE ;
 scalar_t__ HTTPREQ_GET ;
 scalar_t__ HTTPREQ_HEAD ;
 scalar_t__ HTTPREQ_PUT ;
 int SIGPIPE ;
 int SIG_IGN ;
 size_t STRING_SET_URL ;
 int TRUE ;
 scalar_t__ curl_url_get (scalar_t__,int ,int **,int ) ;
 int failf (struct Curl_easy*,char*) ;
 int signal (int ,int ) ;
 scalar_t__ strlen (scalar_t__) ;

CURLcode Curl_pretransfer(struct Curl_easy *data)
{
  CURLcode result;

  if(!data->change.url && !data->set.uh) {

    failf(data, "No URL set!");
    return CURLE_URL_MALFORMAT;
  }


  if(data->change.url_alloc) {

    Curl_safefree(data->change.url);
    data->change.url_alloc = FALSE;
  }

  if(!data->change.url && data->set.uh) {
    CURLUcode uc;
    uc = curl_url_get(data->set.uh,
                        CURLUPART_URL, &data->set.str[STRING_SET_URL], 0);
    if(uc) {
      failf(data, "No URL set!");
      return CURLE_URL_MALFORMAT;
    }
  }

  data->change.url = data->set.str[STRING_SET_URL];




  result = Curl_ssl_initsessions(data, data->set.general_ssl.max_ssl_sessions);
  if(result)
    return result;

  data->state.wildcardmatch = data->set.wildcard_enabled;
  data->set.followlocation = 0;
  data->state.this_is_a_follow = FALSE;
  data->state.errorbuf = FALSE;
  data->state.httpversion = 0;

  data->state.authproblem = FALSE;
  data->state.authhost.want = data->set.httpauth;
  data->state.authproxy.want = data->set.proxyauth;
  Curl_safefree(data->info.wouldredirect);
  data->info.wouldredirect = ((void*)0);

  if(data->set.httpreq == HTTPREQ_PUT)
    data->state.infilesize = data->set.filesize;
  else if((data->set.httpreq != HTTPREQ_GET) &&
          (data->set.httpreq != HTTPREQ_HEAD)) {
    data->state.infilesize = data->set.postfieldsize;
    if(data->set.postfields && (data->state.infilesize == -1))
      data->state.infilesize = (curl_off_t)strlen(data->set.postfields);
  }
  else
    data->state.infilesize = 0;


  if(data->change.cookielist)
    Curl_cookie_loadfiles(data);


  if(data->change.resolve)
    result = Curl_loadhostpairs(data);

  if(!result) {



    data->state.allow_port = TRUE;
    Curl_initinfo(data);
    Curl_pgrsResetTransferSizes(data);
    Curl_pgrsStartNow(data);




    data->state.authhost.picked &= data->state.authhost.want;
    data->state.authproxy.picked &= data->state.authproxy.want;


    if(data->state.wildcardmatch) {
      struct WildcardData *wc = &data->wildcard;
      if(wc->state < CURLWC_INIT) {
        result = Curl_wildcard_init(wc);
        if(result)
          return CURLE_OUT_OF_MEMORY;
      }
    }

    Curl_http2_init_state(&data->state);
  }

  return result;
}
