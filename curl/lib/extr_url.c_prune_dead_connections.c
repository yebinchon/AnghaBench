
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef long timediff_t ;
struct prunedead {int * extracted; struct Curl_easy* data; } ;
struct curltime {int dummy; } ;
struct TYPE_3__ {TYPE_2__* conn_cache; } ;
struct Curl_easy {TYPE_1__ state; } ;
struct TYPE_4__ {struct curltime last_cleanup; } ;


 scalar_t__ Curl_conncache_foreach (struct Curl_easy*,TYPE_2__*,struct prunedead*,int ) ;
 int Curl_disconnect (struct Curl_easy*,int *,int ) ;
 struct curltime Curl_now () ;
 long Curl_timediff (struct curltime,struct curltime) ;
 int TRUE ;
 int call_extract_if_dead ;

__attribute__((used)) static void prune_dead_connections(struct Curl_easy *data)
{
  struct curltime now = Curl_now();
  timediff_t elapsed =
    Curl_timediff(now, data->state.conn_cache->last_cleanup);

  if(elapsed >= 1000L) {
    struct prunedead prune;
    prune.data = data;
    prune.extracted = ((void*)0);
    while(Curl_conncache_foreach(data, data->state.conn_cache, &prune,
                                 call_extract_if_dead)) {

      (void)Curl_disconnect(data, prune.extracted, TRUE);
    }
    data->state.conn_cache->last_cleanup = now;
  }
}
