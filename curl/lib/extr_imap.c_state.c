
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imap_conn {size_t state; } ;
struct TYPE_2__ {struct imap_conn imapc; } ;
struct connectdata {int data; TYPE_1__ proto; } ;
typedef size_t imapstate ;


 int infof (int ,char*,void*,char const* const,char const* const) ;

__attribute__((used)) static void state(struct connectdata *conn, imapstate newstate)
{
  struct imap_conn *imapc = &conn->proto.imapc;
  imapc->state = newstate;
}
