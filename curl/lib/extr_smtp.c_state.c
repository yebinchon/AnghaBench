
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smtp_conn {size_t state; } ;
struct TYPE_2__ {struct smtp_conn smtpc; } ;
struct connectdata {int data; TYPE_1__ proto; } ;
typedef size_t smtpstate ;


 int infof (int ,char*,void*,char const* const,char const* const) ;

__attribute__((used)) static void state(struct connectdata *conn, smtpstate newstate)
{
  struct smtp_conn *smtpc = &conn->proto.smtpc;
  smtpc->state = newstate;
}
