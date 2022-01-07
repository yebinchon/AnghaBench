
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct GC {size_t nslots; int nitems; } ;


 size_t GC_Ideal_Size (int ) ;
 int GC_Rehash (struct GC*,size_t) ;

__attribute__((used)) static void GC_Resize_Less(struct GC* gc) {
  size_t new_size = GC_Ideal_Size(gc->nitems);
  size_t old_size = gc->nslots;
  if (new_size < old_size) { GC_Rehash(gc, new_size); }
}
