
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int timediff_t ;
struct curltime {int dummy; } ;
struct curl_llist_element {struct curl_llist_element* next; struct connectdata* ptr; } ;
struct curl_hash_iterator {int dummy; } ;
struct curl_hash_element {struct connectbundle* ptr; } ;
struct connectdata {struct Curl_easy* data; int lastused; } ;
struct TYPE_4__ {struct curl_llist_element* head; } ;
struct connectbundle {TYPE_2__ conn_list; } ;
struct conncache {int num_conn; int hash; } ;
struct TYPE_3__ {struct conncache* conn_cache; } ;
struct Curl_easy {TYPE_1__ state; } ;


 int CONN_INUSE (struct connectdata*) ;
 int CONN_LOCK (struct Curl_easy*) ;
 int CONN_UNLOCK (struct Curl_easy*) ;
 struct curl_hash_element* Curl_hash_next_element (struct curl_hash_iterator*) ;
 int Curl_hash_start_iterate (int *,struct curl_hash_iterator*) ;
 struct curltime Curl_now () ;
 int Curl_timediff (struct curltime,int ) ;
 int DEBUGF (int ) ;
 int bundle_remove_conn (struct connectbundle*,struct connectdata*) ;
 int infof (struct Curl_easy*,char*,int ) ;

struct connectdata *
Curl_conncache_extract_oldest(struct Curl_easy *data)
{
  struct conncache *connc = data->state.conn_cache;
  struct curl_hash_iterator iter;
  struct curl_llist_element *curr;
  struct curl_hash_element *he;
  timediff_t highscore =- 1;
  timediff_t score;
  struct curltime now;
  struct connectdata *conn_candidate = ((void*)0);
  struct connectbundle *bundle;
  struct connectbundle *bundle_candidate = ((void*)0);

  now = Curl_now();

  CONN_LOCK(data);
  Curl_hash_start_iterate(&connc->hash, &iter);

  he = Curl_hash_next_element(&iter);
  while(he) {
    struct connectdata *conn;

    bundle = he->ptr;

    curr = bundle->conn_list.head;
    while(curr) {
      conn = curr->ptr;

      if(!CONN_INUSE(conn) && !conn->data) {

        score = Curl_timediff(now, conn->lastused);

        if(score > highscore) {
          highscore = score;
          conn_candidate = conn;
          bundle_candidate = bundle;
        }
      }
      curr = curr->next;
    }

    he = Curl_hash_next_element(&iter);
  }
  if(conn_candidate) {

    bundle_remove_conn(bundle_candidate, conn_candidate);
    connc->num_conn--;
    DEBUGF(infof(data, "The cache now contains %zu members\n",
                 connc->num_conn));
    conn_candidate->data = data;
  }
  CONN_UNLOCK(data);

  return conn_candidate;
}
