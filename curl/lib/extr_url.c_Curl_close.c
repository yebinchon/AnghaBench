
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct Curl_multi {int dummy; } ;
struct TYPE_17__ {int headers; TYPE_7__* probe; } ;
struct TYPE_18__ {TYPE_8__ doh; struct Curl_easy* newurl; } ;
struct TYPE_13__ {int resolver; int * ulbuf; int * headerbuff; int * buffer; int * scratch; int * first_host; struct Curl_easy* range; scalar_t__ rangestringalloc; int timeoutlist; } ;
struct TYPE_12__ {int * wouldredirect; int * contenttype; } ;
struct TYPE_11__ {int * str; } ;
struct TYPE_10__ {int * referer; scalar_t__ referer_alloc; } ;
struct Curl_easy {int wildcard; TYPE_9__ req; TYPE_5__* share; TYPE_4__ state; TYPE_3__ info; int * asi; TYPE_2__ set; TYPE_1__ change; scalar_t__ magic; int * multi_easy; struct Curl_multi* multi; } ;
struct TYPE_15__ {struct Curl_easy* memory; } ;
struct TYPE_16__ {TYPE_6__ serverdoh; } ;
struct TYPE_14__ {int dirty; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURL_LOCK_ACCESS_SINGLE ;
 int CURL_LOCK_DATA_SHARE ;
 int Curl_altsvc_cleanup (int *) ;
 int Curl_altsvc_save (int *,int ) ;
 int Curl_convert_close (struct Curl_easy*) ;
 int Curl_expire_clear (struct Curl_easy*) ;
 int Curl_flush_cookies (struct Curl_easy*,int ) ;
 int Curl_free_request_state (struct Curl_easy*) ;
 int Curl_freeset (struct Curl_easy*) ;
 int Curl_http2_cleanup_dependencies (struct Curl_easy*) ;
 int Curl_http_auth_cleanup_digest (struct Curl_easy*) ;
 int Curl_llist_destroy (int *,int *) ;
 int Curl_resolver_cleanup (int ) ;
 int Curl_safefree (int *) ;
 int Curl_share_lock (struct Curl_easy*,int ,int ) ;
 int Curl_share_unlock (struct Curl_easy*,int ) ;
 int Curl_ssl_close_all (struct Curl_easy*) ;
 int Curl_ssl_free_certinfo (struct Curl_easy*) ;
 int Curl_wildcard_dtor (int *) ;
 scalar_t__ FALSE ;
 size_t STRING_ALTSVC ;
 int TRUE ;
 int curl_multi_cleanup (int *) ;
 int curl_multi_remove_handle (struct Curl_multi*,struct Curl_easy*) ;
 int curl_slist_free_all (int ) ;
 int free (struct Curl_easy*) ;
 int up_free (struct Curl_easy*) ;

CURLcode Curl_close(struct Curl_easy **datap)
{
  struct Curl_multi *m;
  struct Curl_easy *data;

  if(!datap || !*datap)
    return CURLE_OK;

  data = *datap;
  *datap = ((void*)0);

  Curl_expire_clear(data);

  m = data->multi;
  if(m)


    curl_multi_remove_handle(data->multi, data);

  if(data->multi_easy) {


    curl_multi_cleanup(data->multi_easy);
    data->multi_easy = ((void*)0);
  }




  Curl_llist_destroy(&data->state.timeoutlist, ((void*)0));

  data->magic = 0;



  if(data->state.rangestringalloc)
    free(data->state.range);


  Curl_free_request_state(data);


  Curl_ssl_close_all(data);
  Curl_safefree(data->state.first_host);
  Curl_safefree(data->state.scratch);
  Curl_ssl_free_certinfo(data);


  free(data->req.newurl);
  data->req.newurl = ((void*)0);

  if(data->change.referer_alloc) {
    Curl_safefree(data->change.referer);
    data->change.referer_alloc = FALSE;
  }
  data->change.referer = ((void*)0);

  up_free(data);
  Curl_safefree(data->state.buffer);
  Curl_safefree(data->state.headerbuff);
  Curl_safefree(data->state.ulbuf);
  Curl_flush_cookies(data, TRUE);






  Curl_http_auth_cleanup_digest(data);

  Curl_safefree(data->info.contenttype);
  Curl_safefree(data->info.wouldredirect);


  Curl_resolver_cleanup(data->state.resolver);

  Curl_http2_cleanup_dependencies(data);
  Curl_convert_close(data);


  if(data->share) {
    Curl_share_lock(data, CURL_LOCK_DATA_SHARE, CURL_LOCK_ACCESS_SINGLE);
    data->share->dirty--;
    Curl_share_unlock(data, CURL_LOCK_DATA_SHARE);
  }


  free(data->req.doh.probe[0].serverdoh.memory);
  free(data->req.doh.probe[1].serverdoh.memory);
  curl_slist_free_all(data->req.doh.headers);



  Curl_wildcard_dtor(&data->wildcard);
  Curl_freeset(data);
  free(data);
  return CURLE_OK;
}
