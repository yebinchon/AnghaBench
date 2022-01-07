
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Size; int Int64Value; } ;
typedef TYPE_1__ VALUE ;
typedef int UINT64 ;


 TYPE_1__* Malloc (int) ;

VALUE *NewInt64Value(UINT64 i)
{
 VALUE *v;

 v = Malloc(sizeof(VALUE));
 v->Int64Value = i;
 v->Size = sizeof(UINT64);

 return v;
}
