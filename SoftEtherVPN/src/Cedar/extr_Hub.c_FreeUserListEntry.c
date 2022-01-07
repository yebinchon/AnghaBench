
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int UserHashList; } ;
typedef TYPE_1__ USERLIST ;


 int Free (TYPE_1__*) ;
 int ReleaseInt64List (int ) ;

void FreeUserListEntry(USERLIST *u)
{

 if (u == ((void*)0))
 {
  return;
 }

 ReleaseInt64List(u->UserHashList);

 Free(u);
}
