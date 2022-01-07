
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Local; int State; int Country; int Unit; int Organization; int CommonName; } ;
typedef TYPE_1__ NAME ;


 TYPE_1__* NewName (int ,int ,int ,int ,int ,int ) ;

NAME *CopyName(NAME *n)
{

 if (n == ((void*)0))
 {
  return ((void*)0);
 }

 return NewName(n->CommonName, n->Organization, n->Unit,
  n->Country, n->State, n->Local);
}
