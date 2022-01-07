
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int IsInFlushList; int Ref; } ;
struct TYPE_7__ {int List; } ;
typedef TYPE_1__ TUBE_FLUSH_LIST ;
typedef TYPE_2__ TUBE ;


 int Add (int ,TYPE_2__*) ;
 int AddRef (int ) ;
 int IsInList (int ,TYPE_2__*) ;

void AddTubeToFlushList(TUBE_FLUSH_LIST *f, TUBE *t)
{

 if (f == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 if (t->IsInFlushList)
 {
  return;
 }

 if (IsInList(f->List, t) == 0)
 {
  Add(f->List, t);

  AddRef(t->Ref);

  t->IsInFlushList = 1;
 }
}
