
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int IsInFlushList; } ;
struct TYPE_7__ {int List; } ;
typedef TYPE_1__ TUBE_FLUSH_LIST ;
typedef TYPE_2__ TUBE ;


 int DeleteAll (int ) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseTube (TYPE_2__*) ;
 int TubeFlush (TYPE_2__*) ;

void FlushTubeFlushList(TUBE_FLUSH_LIST *f)
{
 UINT i;

 if (f == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(f->List);i++)
 {
  TUBE *t = LIST_DATA(f->List, i);

  TubeFlush(t);
  t->IsInFlushList = 0;

  ReleaseTube(t);
 }

 DeleteAll(f->List);
}
