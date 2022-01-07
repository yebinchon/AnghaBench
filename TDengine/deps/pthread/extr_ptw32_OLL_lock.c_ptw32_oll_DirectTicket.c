
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * rootPtr; } ;
struct TYPE_7__ {TYPE_1__ snziNodeOrRoot; } ;
typedef TYPE_2__ ptw32_oll_ticket_t ;
struct TYPE_8__ {int proxyRoot; } ;
typedef TYPE_3__ ptw32_oll_csnzi_t ;



ptw32_oll_ticket_t
ptw32_oll_DirectTicket(ptw32_oll_csnzi_t* csnziPtr)
{
  ptw32_oll_ticket_t ticket;
  ticket.snziNodeOrRoot.rootPtr = &csnziPtr->proxyRoot;
  return ticket;
}
