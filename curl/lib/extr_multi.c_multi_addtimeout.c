
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ timediff_t ;
struct time_node {size_t eid; int list; int time; } ;
struct curltime {int dummy; } ;
struct curl_llist_element {scalar_t__ ptr; struct curl_llist_element* next; } ;
struct curl_llist {struct curl_llist_element* head; } ;
struct TYPE_2__ {struct time_node* expires; struct curl_llist timeoutlist; } ;
struct Curl_easy {TYPE_1__ state; } ;
typedef size_t expire_id ;
typedef int CURLMcode ;


 int CURLM_OK ;
 size_t Curl_llist_count (struct curl_llist*) ;
 int Curl_llist_insert_next (struct curl_llist*,struct curl_llist_element*,struct time_node*,int *) ;
 scalar_t__ Curl_timediff (int ,int ) ;
 int memcpy (int *,struct curltime*,int) ;

__attribute__((used)) static CURLMcode
multi_addtimeout(struct Curl_easy *data,
                 struct curltime *stamp,
                 expire_id eid)
{
  struct curl_llist_element *e;
  struct time_node *node;
  struct curl_llist_element *prev = ((void*)0);
  size_t n;
  struct curl_llist *timeoutlist = &data->state.timeoutlist;

  node = &data->state.expires[eid];


  memcpy(&node->time, stamp, sizeof(*stamp));
  node->eid = eid;

  n = Curl_llist_count(timeoutlist);
  if(n) {

    for(e = timeoutlist->head; e; e = e->next) {
      struct time_node *check = (struct time_node *)e->ptr;
      timediff_t diff = Curl_timediff(check->time, node->time);
      if(diff > 0)
        break;
      prev = e;
    }

  }



  Curl_llist_insert_next(timeoutlist, prev, node, &node->list);
  return CURLM_OK;
}
