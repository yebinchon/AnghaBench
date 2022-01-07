
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int UseNat; TYPE_4__* NatTable; TYPE_3__* NativeNat; } ;
typedef TYPE_5__ VH ;
struct TYPE_11__ {scalar_t__ num_item; } ;
struct TYPE_10__ {TYPE_2__* NatTableForRecv; } ;
struct TYPE_9__ {TYPE_1__* AllList; } ;
struct TYPE_8__ {scalar_t__ num_item; } ;


 scalar_t__ NAT_MAX_SESSIONS ;
 scalar_t__ NAT_MAX_SESSIONS_KERNEL ;
 scalar_t__ NnIsActive (TYPE_5__*) ;

bool CanCreateNewNatEntry(VH *v)
{

 if (v == ((void*)0))
 {
  return 0;
 }

 if (v->UseNat == 0)
 {

  return 0;
 }

 if (NnIsActive(v) && v->NativeNat != ((void*)0) && v->NativeNat->NatTableForRecv != ((void*)0))
 {
  if (v->NativeNat->NatTableForRecv->AllList->num_item > NAT_MAX_SESSIONS_KERNEL)
  {

   return 0;
  }
 }
 else
 {
  if (v->NatTable->num_item > NAT_MAX_SESSIONS)
  {

   return 0;
  }
 }

 return 1;
}
