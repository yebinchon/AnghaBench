
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t count; int state; } ;
struct TYPE_7__ {TYPE_1__ internal; } ;
struct TYPE_8__ {TYPE_2__ counter; } ;
struct TYPE_9__ {TYPE_3__ proxyRoot; } ;
typedef TYPE_4__ ptw32_oll_csnzi_t ;
typedef scalar_t__ BOOL ;


 int ptw32_oll_snziRoot_closed ;
 int ptw32_oll_snziRoot_open ;

void
ptw32_oll_OpenWithArrivals(ptw32_oll_csnzi_t* csnziPtr, size_t count, BOOL close)
{
  csnziPtr->proxyRoot.counter.internal.count = count;
  csnziPtr->proxyRoot.counter.internal.state = (close ? ptw32_oll_snziRoot_closed : ptw32_oll_snziRoot_open);
}
