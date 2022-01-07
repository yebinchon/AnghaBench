
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {scalar_t__ connection_id; struct Curl_easy* data; } ;
struct connectbundle {int dummy; } ;
struct conncache {int num_conn; int next_connection_id; } ;
struct TYPE_2__ {int conn_cache; } ;
struct Curl_easy {TYPE_1__ state; } ;
typedef int key ;
typedef scalar_t__ CURLcode ;


 int CONN_UNLOCK (struct Curl_easy*) ;
 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 struct connectbundle* Curl_conncache_find_bundle (struct connectdata*,int ,int *) ;
 int DEBUGF (int ) ;
 int HASHKEY_SIZE ;
 int bundle_add_conn (struct connectbundle*,struct connectdata*) ;
 scalar_t__ bundle_create (struct Curl_easy*,struct connectbundle**) ;
 int bundle_destroy (struct connectbundle*) ;
 int conncache_add_bundle (int ,char*,struct connectbundle*) ;
 int hashkey (struct connectdata*,char*,int,int *) ;
 int infof (struct Curl_easy*,char*,scalar_t__,int ) ;

CURLcode Curl_conncache_add_conn(struct conncache *connc,
                                 struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct connectbundle *bundle;
  struct connectbundle *new_bundle = ((void*)0);
  struct Curl_easy *data = conn->data;


  bundle = Curl_conncache_find_bundle(conn, data->state.conn_cache, ((void*)0));
  if(!bundle) {
    int rc;
    char key[HASHKEY_SIZE];

    result = bundle_create(data, &new_bundle);
    if(result) {
      goto unlock;
    }

    hashkey(conn, key, sizeof(key), ((void*)0));
    rc = conncache_add_bundle(data->state.conn_cache, key, new_bundle);

    if(!rc) {
      bundle_destroy(new_bundle);
      result = CURLE_OUT_OF_MEMORY;
      goto unlock;
    }
    bundle = new_bundle;
  }

  bundle_add_conn(bundle, conn);
  conn->connection_id = connc->next_connection_id++;
  connc->num_conn++;

  DEBUGF(infof(conn->data, "Added connection %ld. "
               "The cache now contains %zu members\n",
               conn->connection_id, connc->num_conn));

  unlock:
  CONN_UNLOCK(data);

  return result;
}
