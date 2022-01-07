
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ftp_conn {size_t state; } ;
struct TYPE_2__ {struct ftp_conn ftpc; } ;
struct connectdata {int data; TYPE_1__ proto; } ;
typedef size_t ftpstate ;


 int * ftp_state_names ;
 int infof (int ,char*,void*,int,int ,int ) ;

__attribute__((used)) static void _state(struct connectdata *conn,
                   ftpstate newstate



  )
{
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  ftpc->state = newstate;
}
