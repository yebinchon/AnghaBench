
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {int * data; struct connectbundle* bundle; } ;
struct connectbundle {scalar_t__ num_connections; } ;
struct conncache {int num_conn; } ;
struct TYPE_2__ {struct conncache* conn_cache; } ;
struct Curl_easy {TYPE_1__ state; } ;


 int CONN_LOCK (struct Curl_easy*) ;
 int CONN_UNLOCK (struct Curl_easy*) ;
 int DEBUGF (int ) ;
 int bundle_remove_conn (struct connectbundle*,struct connectdata*) ;
 int conncache_remove_bundle (struct conncache*,struct connectbundle*) ;
 int infof (struct Curl_easy*,char*,int ) ;

void Curl_conncache_remove_conn(struct Curl_easy *data,
                                struct connectdata *conn, bool lock)
{
  struct connectbundle *bundle = conn->bundle;
  struct conncache *connc = data->state.conn_cache;



  if(bundle) {
    if(lock) {
      CONN_LOCK(data);
    }
    bundle_remove_conn(bundle, conn);
    if(bundle->num_connections == 0)
      conncache_remove_bundle(connc, bundle);
    conn->bundle = ((void*)0);
    if(connc) {
      connc->num_conn--;
      DEBUGF(infof(data, "The cache now contains %zu members\n",
                   connc->num_conn));
    }
    conn->data = ((void*)0);
    if(lock) {
      CONN_UNLOCK(data);
    }
  }
}
