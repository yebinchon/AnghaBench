
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ UpdatedTime; scalar_t__ DhcpAllocated; } ;
typedef int LIST ;
typedef TYPE_1__ IP_TABLE_ENTRY ;


 int Add (int *,TYPE_1__*) ;
 int Delete (int *,TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 scalar_t__ IP_TABLE_EXPIRE_TIME ;
 scalar_t__ IP_TABLE_EXPIRE_TIME_DHCP ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 scalar_t__ Tick64 () ;

void DeleteExpiredIpTableEntry(LIST *o)
{
 LIST *o2;
 UINT i;

 if (o == ((void*)0))
 {
  return;
 }

 o2 = NewListFast(((void*)0));

 for (i = 0;i < LIST_NUM(o);i++)
 {
  IP_TABLE_ENTRY *e = LIST_DATA(o, i);
  if ((e->UpdatedTime + (UINT64)(e->DhcpAllocated ? IP_TABLE_EXPIRE_TIME_DHCP : IP_TABLE_EXPIRE_TIME)) <= Tick64())
  {
   Add(o2, e);
  }
 }

 for (i = 0;i < LIST_NUM(o2);i++)
 {
  IP_TABLE_ENTRY *e = LIST_DATA(o2, i);
  Delete(o, e);
  Free(e);
 }

 ReleaseList(o2);
}
