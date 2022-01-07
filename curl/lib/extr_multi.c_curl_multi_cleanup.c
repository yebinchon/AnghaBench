
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct Curl_multi {int psl; int hostcache; int pending; int msglist; int conn_cache; int sockhash; struct Curl_easy* easyp; scalar_t__ type; scalar_t__ in_callback; } ;
struct TYPE_4__ {int * conn_cache; int done; } ;
struct TYPE_3__ {scalar_t__ hostcachetype; int * hostcache; } ;
struct Curl_easy {int * psl; int * multi; TYPE_2__ state; TYPE_1__ dns; scalar_t__ conn; struct Curl_easy* next; } ;
typedef int CURLMcode ;


 int CURLE_OK ;
 int CURLM_BAD_HANDLE ;
 int CURLM_OK ;
 int CURLM_RECURSIVE_API_CALL ;
 int Curl_conncache_close_all_connections (int *) ;
 int Curl_conncache_destroy (int *) ;
 int Curl_hash_destroy (int *) ;
 int Curl_hostcache_clean (struct Curl_easy*,int *) ;
 int Curl_llist_destroy (int *,int *) ;
 int Curl_psl_destroy (int *) ;
 scalar_t__ GOOD_MULTI_HANDLE (struct Curl_multi*) ;
 scalar_t__ HCACHE_MULTI ;
 scalar_t__ HCACHE_NONE ;
 int TRUE ;
 int free (struct Curl_multi*) ;
 int multi_done (struct Curl_easy*,int ,int ) ;

CURLMcode curl_multi_cleanup(struct Curl_multi *multi)
{
  struct Curl_easy *data;
  struct Curl_easy *nextdata;

  if(GOOD_MULTI_HANDLE(multi)) {
    if(multi->in_callback)
      return CURLM_RECURSIVE_API_CALL;

    multi->type = 0;


    data = multi->easyp;
    while(data) {
      nextdata = data->next;
      if(!data->state.done && data->conn)

        (void)multi_done(data, CURLE_OK, TRUE);
      if(data->dns.hostcachetype == HCACHE_MULTI) {

        Curl_hostcache_clean(data, data->dns.hostcache);
        data->dns.hostcache = ((void*)0);
        data->dns.hostcachetype = HCACHE_NONE;
      }


      data->state.conn_cache = ((void*)0);
      data->multi = ((void*)0);






      data = nextdata;
    }


    Curl_conncache_close_all_connections(&multi->conn_cache);

    Curl_hash_destroy(&multi->sockhash);
    Curl_conncache_destroy(&multi->conn_cache);
    Curl_llist_destroy(&multi->msglist, ((void*)0));
    Curl_llist_destroy(&multi->pending, ((void*)0));

    Curl_hash_destroy(&multi->hostcache);
    Curl_psl_destroy(&multi->psl);
    free(multi);

    return CURLM_OK;
  }
  return CURLM_BAD_HANDLE;
}
