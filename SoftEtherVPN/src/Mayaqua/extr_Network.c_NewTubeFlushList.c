
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int List; } ;
typedef TYPE_1__ TUBE_FLUSH_LIST ;


 int NewListFast (int *) ;
 TYPE_1__* ZeroMalloc (int) ;

TUBE_FLUSH_LIST *NewTubeFlushList()
{
 TUBE_FLUSH_LIST *f = ZeroMalloc(sizeof(TUBE_FLUSH_LIST));

 f->List = NewListFast(((void*)0));

 return f;
}
