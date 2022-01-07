
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {TYPE_2__* data; } ;
struct TYPE_3__ {int chunk; } ;
struct TYPE_4__ {TYPE_1__ req; } ;


 int Curl_pgrsTime (TYPE_2__*,int ) ;
 int FALSE ;
 int TIMER_PRETRANSFER ;

__attribute__((used)) static void do_complete(struct connectdata *conn)
{
  conn->data->req.chunk = FALSE;
  Curl_pgrsTime(conn->data, TIMER_PRETRANSFER);
}
