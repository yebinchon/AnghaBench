
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {TYPE_1__* item; } ;
typedef TYPE_2__ kcdata_iter_t ;
struct TYPE_8__ {int size; scalar_t__ type; } ;


 scalar_t__ KCDATA_TYPE_ARRAY ;
 int kcdata_iter_array_elem_count (TYPE_2__) ;
 int kcdata_iter_array_size_switch (TYPE_2__) ;
 scalar_t__ kcdata_iter_type (TYPE_2__) ;
 int kcdata_iter_valid (TYPE_2__) ;

__attribute__((used)) static inline
int kcdata_iter_array_valid(kcdata_iter_t iter) {
 if (!kcdata_iter_valid(iter))
  return 0;
 if (kcdata_iter_type(iter) != KCDATA_TYPE_ARRAY)
  return 0;
    if (kcdata_iter_array_elem_count(iter) == 0)
  return iter.item->size == 0;
 if (iter.item->type == KCDATA_TYPE_ARRAY) {
  uint32_t elem_size = kcdata_iter_array_size_switch(iter);
  if (elem_size == 0)
   return 0;

  return
   kcdata_iter_array_elem_count(iter) <= iter.item->size / elem_size &&
   iter.item->size % kcdata_iter_array_elem_count(iter) < 16;
 } else {
  return
   (iter.item->type & 0xf) <= iter.item->size &&
   kcdata_iter_array_elem_count(iter) <= iter.item->size - (iter.item->type & 0xf) &&
   (iter.item->size - (iter.item->type & 0xf)) % kcdata_iter_array_elem_count(iter) == 0;
 }
}
