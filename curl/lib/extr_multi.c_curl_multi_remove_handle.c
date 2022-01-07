
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


struct curl_llist_element {struct Curl_message* ptr; struct curl_llist_element* next; } ;
struct TYPE_14__ {struct curl_llist_element* head; } ;
struct Curl_multi {int num_easy; TYPE_5__* easylp; TYPE_4__* easyp; TYPE_7__ msglist; int psl; TYPE_7__ pending; int num_alive; scalar_t__ in_callback; } ;
struct TYPE_10__ {struct Curl_easy* easy_handle; } ;
struct Curl_message {TYPE_3__ extmsg; } ;
struct TYPE_9__ {int * conn_cache; int timeoutlist; } ;
struct TYPE_8__ {scalar_t__ hostcachetype; int * hostcache; } ;
struct Curl_easy {scalar_t__ mstate; TYPE_5__* prev; TYPE_4__* next; int * multi; int * psl; TYPE_6__* conn; TYPE_2__ state; int wildcard; TYPE_1__ dns; struct curl_llist_element connect_queue; int result; } ;
struct TYPE_13__ {struct Curl_easy* data; } ;
struct TYPE_12__ {TYPE_4__* next; } ;
struct TYPE_11__ {TYPE_5__* prev; } ;
typedef int CURLMcode ;


 int CURLM_BAD_EASY_HANDLE ;
 int CURLM_BAD_HANDLE ;
 int CURLM_OK ;
 int CURLM_RECURSIVE_API_CALL ;
 scalar_t__ CURLM_STATE_COMPLETED ;
 scalar_t__ CURLM_STATE_DO ;
 int Curl_expire_clear (struct Curl_easy*) ;
 int Curl_llist_destroy (int *,int *) ;
 int Curl_llist_remove (TYPE_7__*,struct curl_llist_element*,int *) ;
 int Curl_update_timer (struct Curl_multi*) ;
 int Curl_wildcard_dtor (int *) ;
 int FALSE ;
 int GOOD_EASY_HANDLE (struct Curl_easy*) ;
 int GOOD_MULTI_HANDLE (struct Curl_multi*) ;
 scalar_t__ HCACHE_MULTI ;
 scalar_t__ HCACHE_NONE ;
 int TRUE ;
 int detach_connnection (struct Curl_easy*) ;
 int multi_done (struct Curl_easy*,int ,int) ;
 int singlesocket (struct Curl_multi*,struct Curl_easy*) ;
 int streamclose (TYPE_6__*,char*) ;

CURLMcode curl_multi_remove_handle(struct Curl_multi *multi,
                                   struct Curl_easy *data)
{
  struct Curl_easy *easy = data;
  bool premature;
  bool easy_owns_conn;
  struct curl_llist_element *e;


  if(!GOOD_MULTI_HANDLE(multi))
    return CURLM_BAD_HANDLE;


  if(!GOOD_EASY_HANDLE(data))
    return CURLM_BAD_EASY_HANDLE;


  if(!data->multi)
    return CURLM_OK;

  if(multi->in_callback)
    return CURLM_RECURSIVE_API_CALL;

  premature = (data->mstate < CURLM_STATE_COMPLETED) ? TRUE : FALSE;
  easy_owns_conn = (data->conn && (data->conn->data == easy)) ?
    TRUE : FALSE;



  if(premature) {


    multi->num_alive--;
  }

  if(data->conn &&
     data->mstate > CURLM_STATE_DO &&
     data->mstate < CURLM_STATE_COMPLETED) {


    data->conn->data = easy;
    streamclose(data->conn, "Removed with partial response");
    easy_owns_conn = TRUE;
  }

  if(data->conn) {



    if(easy_owns_conn) {






      (void)multi_done(data, data->result, premature);
    }
  }




  Curl_expire_clear(data);

  if(data->connect_queue.ptr)


    Curl_llist_remove(&multi->pending, &data->connect_queue, ((void*)0));

  if(data->dns.hostcachetype == HCACHE_MULTI) {


    data->dns.hostcache = ((void*)0);
    data->dns.hostcachetype = HCACHE_NONE;
  }

  Curl_wildcard_dtor(&data->wildcard);



  Curl_llist_destroy(&data->state.timeoutlist, ((void*)0));



  data->state.conn_cache = ((void*)0);



  data->mstate = CURLM_STATE_COMPLETED;
  singlesocket(multi, easy);



  if(data->conn) {
    data->conn->data = ((void*)0);
    detach_connnection(data);
  }







  data->multi = ((void*)0);




  for(e = multi->msglist.head; e; e = e->next) {
    struct Curl_message *msg = e->ptr;

    if(msg->extmsg.easy_handle == easy) {
      Curl_llist_remove(&multi->msglist, e, ((void*)0));

      break;
    }
  }


  if(data->prev)
    data->prev->next = data->next;
  else
    multi->easyp = data->next;


  if(data->next)
    data->next->prev = data->prev;
  else
    multi->easylp = data->prev;



  multi->num_easy--;

  Curl_update_timer(multi);
  return CURLM_OK;
}
