
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct curl_llist_element {struct Curl_easy* ptr; } ;
struct TYPE_4__ {struct curl_llist_element* head; } ;
struct Curl_multi {TYPE_2__ pending; } ;
struct TYPE_3__ {int previouslypending; } ;
struct Curl_easy {scalar_t__ mstate; TYPE_1__ state; } ;


 int CURLM_STATE_CONNECT ;
 scalar_t__ CURLM_STATE_CONNECT_PEND ;
 int Curl_expire (struct Curl_easy*,int ,int ) ;
 int Curl_llist_remove (TYPE_2__*,struct curl_llist_element*,int *) ;
 int DEBUGASSERT (int) ;
 int EXPIRE_RUN_NOW ;
 int TRUE ;
 int multistate (struct Curl_easy*,int ) ;

__attribute__((used)) static void process_pending_handles(struct Curl_multi *multi)
{
  struct curl_llist_element *e = multi->pending.head;
  if(e) {
    struct Curl_easy *data = e->ptr;

    DEBUGASSERT(data->mstate == CURLM_STATE_CONNECT_PEND);

    multistate(data, CURLM_STATE_CONNECT);


    Curl_llist_remove(&multi->pending, e, ((void*)0));


    Curl_expire(data, 0, EXPIRE_RUN_NOW);


    data->state.previouslypending = TRUE;
  }
}
