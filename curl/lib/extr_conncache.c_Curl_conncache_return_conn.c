
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {int lastused; struct Curl_easy* data; } ;
struct Curl_easy {TYPE_1__* multi; } ;
struct TYPE_2__ {int maxconnects; int num_easy; } ;


 struct connectdata* Curl_conncache_extract_oldest (struct Curl_easy*) ;
 size_t Curl_conncache_size (struct Curl_easy*) ;
 int Curl_disconnect (struct Curl_easy*,struct connectdata*,int) ;
 int Curl_now () ;
 int FALSE ;
 int TRUE ;
 int infof (struct Curl_easy*,char*) ;

bool Curl_conncache_return_conn(struct connectdata *conn)
{
  struct Curl_easy *data = conn->data;


  size_t maxconnects =
    (data->multi->maxconnects < 0) ? data->multi->num_easy * 4:
    data->multi->maxconnects;
  struct connectdata *conn_candidate = ((void*)0);

  conn->data = ((void*)0);
  conn->lastused = Curl_now();
  if(maxconnects > 0 &&
     Curl_conncache_size(data) > maxconnects) {
    infof(data, "Connection cache is full, closing the oldest one.\n");

    conn_candidate = Curl_conncache_extract_oldest(data);
    if(conn_candidate) {

      (void)Curl_disconnect(data, conn_candidate, FALSE);
    }
  }

  return (conn_candidate == conn) ? FALSE : TRUE;

}
