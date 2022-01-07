
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int snziNodeOrRoot; } ;
typedef TYPE_1__ ptw32_oll_ticket_t ;
typedef int BOOL ;


 int ptw32_oll_TreeDepart (int ) ;

BOOL
ptw32_oll_Depart(ptw32_oll_ticket_t ticket)
{
  return ptw32_oll_TreeDepart(ticket.snziNodeOrRoot);
}
