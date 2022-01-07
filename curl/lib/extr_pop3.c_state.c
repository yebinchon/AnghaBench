
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pop3_conn {size_t state; } ;
struct TYPE_2__ {struct pop3_conn pop3c; } ;
struct connectdata {int data; TYPE_1__ proto; } ;
typedef size_t pop3state ;


 int infof (int ,char*,void*,char const* const,char const* const) ;

__attribute__((used)) static void state(struct connectdata *conn, pop3state newstate)
{
  struct pop3_conn *pop3c = &conn->proto.pop3c;
  pop3c->state = newstate;
}
