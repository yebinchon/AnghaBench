
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_connect_state {int dummy; } ;
struct connectdata {struct http_connect_state* connect_state; } ;
struct Curl_easy {struct connectdata* conn; } ;


 int free (struct http_connect_state*) ;

void Curl_connect_free(struct Curl_easy *data)
{
  struct connectdata *conn = data->conn;
  struct http_connect_state *s = conn->connect_state;
  if(s) {
    free(s);
    conn->connect_state = ((void*)0);
  }
}
