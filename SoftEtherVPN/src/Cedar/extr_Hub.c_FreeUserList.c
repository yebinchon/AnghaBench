
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USERLIST ;
typedef scalar_t__ UINT ;
typedef int LIST ;


 int FreeUserListEntry (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;

void FreeUserList(LIST *o)
{
 UINT i;

 if (o == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  USERLIST *u = LIST_DATA(o, i);

  FreeUserListEntry(u);
 }

 ReleaseList(o);
}
