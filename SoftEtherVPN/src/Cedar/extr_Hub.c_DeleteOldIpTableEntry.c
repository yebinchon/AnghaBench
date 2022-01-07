
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LIST ;
typedef int IP_TABLE_ENTRY ;


 int Delete (int *,int *) ;
 int Free (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;

void DeleteOldIpTableEntry(LIST *o)
{
 UINT i;
 IP_TABLE_ENTRY *old = ((void*)0);

 if (o == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  IP_TABLE_ENTRY *e = LIST_DATA(o, i);
  old = e;
 }

 if (old != ((void*)0))
 {
  Delete(o, old);
  Free(old);
 }
}
