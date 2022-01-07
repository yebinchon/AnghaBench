
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Size; int IntValue; } ;
typedef TYPE_1__ VALUE ;
typedef int UINT ;


 TYPE_1__* Malloc (int) ;

VALUE *NewIntValue(UINT i)
{
 VALUE *v;


 v = Malloc(sizeof(VALUE));
 v->IntValue = i;
 v->Size = sizeof(UINT);

 return v;
}
