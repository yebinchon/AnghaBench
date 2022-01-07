
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Table {size_t nslots; int nitems; } ;


 size_t Table_Ideal_Size (int ) ;
 int Table_Rehash (struct Table*,size_t) ;

__attribute__((used)) static void Table_Resize_More(struct Table* t) {
  size_t new_size = Table_Ideal_Size(t->nitems);
  size_t old_size = t->nslots;
  if (new_size > old_size) { Table_Rehash(t, new_size); }
}
