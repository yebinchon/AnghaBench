
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {TYPE_1__* item; } ;
typedef TYPE_2__ kcdata_iter_t ;
struct TYPE_4__ {scalar_t__ size; int flags; } ;


 int KCDATA_FLAGS_STRUCT_HAS_PADDING ;
 int KCDATA_FLAGS_STRUCT_PADDING_MASK ;
 scalar_t__ kcdata_calc_padding (scalar_t__) ;

__attribute__((used)) static inline int
kcdata_iter_is_legacy_item(kcdata_iter_t iter, uint32_t legacy_size)
{
 uint32_t legacy_size_padded = legacy_size + kcdata_calc_padding(legacy_size);
 return (iter.item->size == legacy_size_padded &&
  (iter.item->flags & (KCDATA_FLAGS_STRUCT_PADDING_MASK | KCDATA_FLAGS_STRUCT_HAS_PADDING)) == 0);

}
