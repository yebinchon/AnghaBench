
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int * NonSslList; } ;
typedef int NON_SSL ;
typedef TYPE_1__ CEDAR ;


 int Free (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;

void FreeNoSslList(CEDAR *c)
{
 UINT i;

 if (c == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(c->NonSslList);i++)
 {
  NON_SSL *n = LIST_DATA(c->NonSslList, i);

  Free(n);
 }

 ReleaseList(c->NonSslList);
 c->NonSslList = ((void*)0);
}
