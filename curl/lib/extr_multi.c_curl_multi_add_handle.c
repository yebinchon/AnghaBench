
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


struct TYPE_12__ {TYPE_4__* closure_handle; } ;
struct Curl_multi {int timer_lastcall; int num_alive; int num_easy; struct Curl_easy* easyp; struct Curl_easy* easylp; int psl; TYPE_5__ conn_cache; int hostcache; scalar_t__ in_callback; } ;
struct TYPE_14__ {int no_signal; int server_response_timeout; int timeout; scalar_t__* errorbuffer; } ;
struct TYPE_13__ {TYPE_5__* conn_cache; int timeoutlist; } ;
struct TYPE_8__ {scalar_t__ hostcachetype; int * hostcache; } ;
struct Curl_easy {TYPE_7__ set; TYPE_6__ state; struct Curl_multi* multi; struct Curl_easy* prev; struct Curl_easy* next; int * psl; TYPE_2__* share; TYPE_1__ dns; } ;
struct TYPE_10__ {int no_signal; int server_response_timeout; int timeout; } ;
struct TYPE_11__ {TYPE_3__ set; } ;
struct TYPE_9__ {int specifier; int psl; TYPE_5__ conn_cache; } ;
typedef int CURLMcode ;


 int CURLM_ADDED_ALREADY ;
 int CURLM_BAD_EASY_HANDLE ;
 int CURLM_BAD_HANDLE ;
 int CURLM_OK ;
 int CURLM_RECURSIVE_API_CALL ;
 int CURLM_STATE_INIT ;
 int CURL_LOCK_DATA_CONNECT ;
 int CURL_LOCK_DATA_PSL ;
 int Curl_expire (struct Curl_easy*,int ,int ) ;
 int Curl_llist_init (int *,int *) ;
 int Curl_update_timer (struct Curl_multi*) ;
 int EXPIRE_RUN_NOW ;
 int GOOD_EASY_HANDLE (struct Curl_easy*) ;
 int GOOD_MULTI_HANDLE (struct Curl_multi*) ;
 scalar_t__ HCACHE_MULTI ;
 scalar_t__ HCACHE_NONE ;
 int memset (int *,int ,int) ;
 int multistate (struct Curl_easy*,int ) ;

CURLMcode curl_multi_add_handle(struct Curl_multi *multi,
                                struct Curl_easy *data)
{

  if(!GOOD_MULTI_HANDLE(multi))
    return CURLM_BAD_HANDLE;


  if(!GOOD_EASY_HANDLE(data))
    return CURLM_BAD_EASY_HANDLE;



  if(data->multi)
    return CURLM_ADDED_ALREADY;

  if(multi->in_callback)
    return CURLM_RECURSIVE_API_CALL;


  Curl_llist_init(&data->state.timeoutlist, ((void*)0));







  if(data->set.errorbuffer)
    data->set.errorbuffer[0] = 0;


  multistate(data, CURLM_STATE_INIT);



  if(!data->dns.hostcache ||
     (data->dns.hostcachetype == HCACHE_NONE)) {
    data->dns.hostcache = &multi->hostcache;
    data->dns.hostcachetype = HCACHE_MULTI;
  }


  if(data->share && (data->share->specifier & (1<< CURL_LOCK_DATA_CONNECT)))
    data->state.conn_cache = &data->share->conn_cache;
  else
    data->state.conn_cache = &multi->conn_cache;
  data->next = ((void*)0);
  if(multi->easyp) {
    struct Curl_easy *last = multi->easylp;
    last->next = data;
    data->prev = last;
    multi->easylp = data;
  }
  else {

    data->prev = ((void*)0);
    multi->easylp = multi->easyp = data;
  }


  data->multi = multi;







  Curl_expire(data, 0, EXPIRE_RUN_NOW);


  multi->num_easy++;


  multi->num_alive++;
  memset(&multi->timer_lastcall, 0, sizeof(multi->timer_lastcall));





  data->state.conn_cache->closure_handle->set.timeout = data->set.timeout;
  data->state.conn_cache->closure_handle->set.server_response_timeout =
    data->set.server_response_timeout;
  data->state.conn_cache->closure_handle->set.no_signal =
    data->set.no_signal;

  Curl_update_timer(multi);
  return CURLM_OK;
}
