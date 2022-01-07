
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int easyq; } ;
struct Curl_easy {struct connectdata* conn; int conn_queue; } ;


 int Curl_llist_remove (int *,int *,int *) ;

__attribute__((used)) static void detach_connnection(struct Curl_easy *data)
{
  struct connectdata *conn = data->conn;
  if(conn)
    Curl_llist_remove(&conn->easyq, &data->conn_queue, ((void*)0));
  data->conn = ((void*)0);
}
