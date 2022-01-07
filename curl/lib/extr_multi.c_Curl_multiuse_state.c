
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int multiuse; struct connectdata* multi; struct connectdata* data; struct connectdata* bundle; } ;


 int DEBUGASSERT (struct connectdata*) ;
 int process_pending_handles (struct connectdata*) ;

void Curl_multiuse_state(struct connectdata *conn,
                         int bundlestate)
{
  DEBUGASSERT(conn);
  DEBUGASSERT(conn->bundle);
  DEBUGASSERT(conn->data);
  DEBUGASSERT(conn->data->multi);

  conn->bundle->multiuse = bundlestate;
  process_pending_handles(conn->data->multi);
}
