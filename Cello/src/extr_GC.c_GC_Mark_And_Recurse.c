
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct GC {int dummy; } ;


 int GC_Mark_Item (struct GC*,void*) ;
 int GC_Recurse (struct GC*,void*) ;

__attribute__((used)) static void GC_Mark_And_Recurse(struct GC* gc, void* ptr) {
  GC_Mark_Item(gc, ptr);
  GC_Recurse(gc, ptr);
}
