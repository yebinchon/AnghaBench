
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ var ;
struct GC {scalar_t__ bottom; } ;


 int GC_Mark_Item (struct GC*,scalar_t__) ;

__attribute__((used)) static void GC_Mark_Stack(struct GC* gc) {

  var stk = ((void*)0);
  var bot = gc->bottom;
  var top = &stk;

  if (bot == top) { return; }

  if (bot < top) {
    for (var p = top; p >= bot; p = ((char*)p) - sizeof(var)) {
      GC_Mark_Item(gc, *((var*)p));
    }
  }

  if (bot > top) {
    for (var p = top; p <= bot; p = ((char*)p) + sizeof(var)) {
      GC_Mark_Item(gc, *((var*)p));
    }
  }

}
