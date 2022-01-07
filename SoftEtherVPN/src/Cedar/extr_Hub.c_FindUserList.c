
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int t ;
struct TYPE_6__ {int Filename; } ;
typedef TYPE_1__ USERLIST ;
typedef int LIST ;


 TYPE_1__* Search (int *,TYPE_1__*) ;
 int StrCpy (int ,int,char*) ;
 int Zero (TYPE_1__*,int) ;

USERLIST *FindUserList(LIST *o, char *filename)
{
 USERLIST t, *u;

 if (o == ((void*)0) || filename == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&t, sizeof(t));

 StrCpy(t.Filename, sizeof(t.Filename), filename);

 u = Search(o, &t);

 return u;
}
