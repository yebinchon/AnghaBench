
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int timediff_t ;
typedef scalar_t__ time_t ;
struct curltime {unsigned int tv_usec; scalar_t__ tv_sec; } ;
struct Curl_multi {int timetree; } ;
struct TYPE_5__ {struct Curl_easy* payload; } ;
struct TYPE_4__ {TYPE_2__ timenode; struct curltime expiretime; } ;
struct Curl_easy {TYPE_1__ state; struct Curl_multi* multi; } ;
typedef int expire_id ;


 struct curltime Curl_now () ;
 int Curl_splayinsert (struct curltime,int ,TYPE_2__*) ;
 int Curl_splayremovebyaddr (int ,TYPE_2__*,int *) ;
 int Curl_timediff (struct curltime,struct curltime) ;
 int DEBUGASSERT (int) ;
 int EXPIRE_LAST ;
 int infof (struct Curl_easy*,char*,int) ;
 int multi_addtimeout (struct Curl_easy*,struct curltime*,int ) ;
 int multi_deltimeout (struct Curl_easy*,int ) ;

void Curl_expire(struct Curl_easy *data, timediff_t milli, expire_id id)
{
  struct Curl_multi *multi = data->multi;
  struct curltime *nowp = &data->state.expiretime;
  struct curltime set;



  if(!multi)
    return;

  DEBUGASSERT(id < EXPIRE_LAST);

  set = Curl_now();
  set.tv_sec += (time_t)(milli/1000);
  set.tv_usec += (unsigned int)(milli%1000)*1000;

  if(set.tv_usec >= 1000000) {
    set.tv_sec++;
    set.tv_usec -= 1000000;
  }


  multi_deltimeout(data, id);



  multi_addtimeout(data, &set, id);

  if(nowp->tv_sec || nowp->tv_usec) {



    timediff_t diff = Curl_timediff(set, *nowp);
    int rc;

    if(diff > 0) {


      return;
    }



    rc = Curl_splayremovebyaddr(multi->timetree,
                                &data->state.timenode,
                                &multi->timetree);
    if(rc)
      infof(data, "Internal error removing splay node = %d\n", rc);
  }



  *nowp = set;
  data->state.timenode.payload = data;
  multi->timetree = Curl_splayinsert(*nowp, multi->timetree,
                                     &data->state.timenode);
}
