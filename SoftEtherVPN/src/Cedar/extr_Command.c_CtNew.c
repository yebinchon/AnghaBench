
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* Rows; void* Columns; } ;
typedef TYPE_1__ CT ;


 void* NewList (int *) ;
 TYPE_1__* ZeroMalloc (int) ;

CT *CtNew()
{
 CT *ct;

 ct = ZeroMalloc(sizeof(CT));
 ct->Columns = NewList(((void*)0));
 ct->Rows = NewList(((void*)0));

 return ct;
}
