
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ timediff_t ;
struct curltime {int dummy; } ;
struct curl_llist_element {struct curl_llist_element* next; struct connectdata* ptr; } ;
struct connectdata {struct Curl_easy* data; int lastused; } ;
struct TYPE_4__ {struct curl_llist_element* head; } ;
struct connectbundle {TYPE_1__ conn_list; } ;
struct TYPE_6__ {TYPE_2__* conn_cache; } ;
struct Curl_easy {TYPE_3__ state; } ;
struct TYPE_5__ {int num_conn; } ;


 int CONN_INUSE (struct connectdata*) ;
 struct curltime Curl_now () ;
 scalar_t__ Curl_timediff (struct curltime,int ) ;
 int DEBUGF (int ) ;
 int bundle_remove_conn (struct connectbundle*,struct connectdata*) ;
 int infof (struct Curl_easy*,char*,int ) ;

struct connectdata *
Curl_conncache_extract_bundle(struct Curl_easy *data,
                              struct connectbundle *bundle)
{
  struct curl_llist_element *curr;
  timediff_t highscore = -1;
  timediff_t score;
  struct curltime now;
  struct connectdata *conn_candidate = ((void*)0);
  struct connectdata *conn;

  (void)data;

  now = Curl_now();

  curr = bundle->conn_list.head;
  while(curr) {
    conn = curr->ptr;

    if(!CONN_INUSE(conn) && !conn->data) {

      score = Curl_timediff(now, conn->lastused);

      if(score > highscore) {
        highscore = score;
        conn_candidate = conn;
      }
    }
    curr = curr->next;
  }
  if(conn_candidate) {

    bundle_remove_conn(bundle, conn_candidate);
    data->state.conn_cache->num_conn--;
    DEBUGF(infof(data, "The cache now contains %zu members\n",
                 data->state.conn_cache->num_conn));
    conn_candidate->data = data;
  }

  return conn_candidate;
}
