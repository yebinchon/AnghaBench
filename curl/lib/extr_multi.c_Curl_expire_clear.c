
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct curltime {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct curl_llist {scalar_t__ size; int tail; } ;
struct Curl_multi {int timetree; } ;
struct TYPE_2__ {int timenode; struct curl_llist timeoutlist; struct curltime expiretime; } ;
struct Curl_easy {TYPE_1__ state; struct Curl_multi* multi; } ;


 int Curl_llist_remove (struct curl_llist*,int ,int *) ;
 int Curl_splayremovebyaddr (int ,int *,int *) ;
 int infof (struct Curl_easy*,char*,...) ;

void Curl_expire_clear(struct Curl_easy *data)
{
  struct Curl_multi *multi = data->multi;
  struct curltime *nowp = &data->state.expiretime;



  if(!multi)
    return;

  if(nowp->tv_sec || nowp->tv_usec) {


    struct curl_llist *list = &data->state.timeoutlist;
    int rc;

    rc = Curl_splayremovebyaddr(multi->timetree,
                                &data->state.timenode,
                                &multi->timetree);
    if(rc)
      infof(data, "Internal error clearing splay node = %d\n", rc);


    while(list->size > 0) {
      Curl_llist_remove(list, list->tail, ((void*)0));
    }




    nowp->tv_sec = 0;
    nowp->tv_usec = 0;
  }
}
