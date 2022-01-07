
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ timediff_t ;
struct time_node {int time; } ;
struct curltime {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct curl_llist_element {scalar_t__ ptr; struct curl_llist_element* next; } ;
struct curl_llist {struct curl_llist_element* head; } ;
struct Curl_multi {int timetree; } ;
struct TYPE_2__ {int timenode; struct curl_llist timeoutlist; struct curltime expiretime; } ;
struct Curl_easy {TYPE_1__ state; } ;
typedef int CURLMcode ;


 int CURLM_OK ;
 int Curl_llist_remove (struct curl_llist*,struct curl_llist_element*,int *) ;
 int Curl_splayinsert (struct curltime,int ,int *) ;
 scalar_t__ Curl_timediff (int ,struct curltime) ;
 int memcpy (struct curltime*,int *,int) ;

__attribute__((used)) static CURLMcode add_next_timeout(struct curltime now,
                                  struct Curl_multi *multi,
                                  struct Curl_easy *d)
{
  struct curltime *tv = &d->state.expiretime;
  struct curl_llist *list = &d->state.timeoutlist;
  struct curl_llist_element *e;
  struct time_node *node = ((void*)0);




  for(e = list->head; e;) {
    struct curl_llist_element *n = e->next;
    timediff_t diff;
    node = (struct time_node *)e->ptr;
    diff = Curl_timediff(node->time, now);
    if(diff <= 0)

      Curl_llist_remove(list, e, ((void*)0));
    else

      break;
    e = n;
  }
  e = list->head;
  if(!e) {


    tv->tv_sec = 0;
    tv->tv_usec = 0;
  }
  else {

    memcpy(tv, &node->time, sizeof(*tv));



    multi->timetree = Curl_splayinsert(*tv, multi->timetree,
                                       &d->state.timenode);
  }
  return CURLM_OK;
}
