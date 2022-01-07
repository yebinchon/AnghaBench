
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ ipv6_scope_id; } ;
struct TYPE_4__ {scalar_t__ Id; TYPE_3__ IpAddress; } ;
typedef int LIST ;
typedef TYPE_1__ AC ;


 scalar_t__ IsIP6 (TYPE_3__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;

void NormalizeAcList(LIST *o)
{
 UINT i;

 if (o == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  AC *ac = LIST_DATA(o, i);

  if (IsIP6(&ac->IpAddress))
  {
   ac->IpAddress.ipv6_scope_id = 0;
  }

  ac->Id = (i + 1);
 }
}
