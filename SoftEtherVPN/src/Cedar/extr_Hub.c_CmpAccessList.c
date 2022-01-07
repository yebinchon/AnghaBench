
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef int UINT ;
struct TYPE_2__ {scalar_t__ Priority; scalar_t__ Discard; int Active; int UniqueId; } ;
typedef TYPE_1__ ACCESS ;


 int Cmp (int *,int *,int ) ;

int CmpAccessList(void *p1, void *p2)
{
 ACCESS *a1, *a2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 a1 = *(ACCESS **)p1;
 a2 = *(ACCESS **)p2;
 if (a1 == ((void*)0) || a2 == ((void*)0))
 {
  return 0;
 }

 if (a1->Priority > a2->Priority)
 {
  return 1;
 }
 else if (a1->Priority < a2->Priority)
 {
  return -1;
 }
 else if (a1->Discard > a2->Discard)
 {
  return 1;
 }
 else if (a1->Discard < a2->Discard)
 {
  return -1;
 }
 else
 {
  UINT64 size64 = ((UINT64)(&a1->UniqueId) - (UINT64)(&a1->Active));
  UINT size32 = (UINT)size64;

  return Cmp(&a1->Active, &a2->Active, size32);
 }
}
