
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_1__* item; } ;
typedef TYPE_2__ kcdata_iter_t ;
struct TYPE_4__ {int type; } ;


 int KCDATA_TYPE_ARRAY ;
 int KCDATA_TYPE_ARRAY_PAD0 ;

__attribute__((used)) static inline uint32_t
kcdata_iter_type(kcdata_iter_t iter)
{
 if ((iter.item->type & ~0xfu) == KCDATA_TYPE_ARRAY_PAD0)
  return KCDATA_TYPE_ARRAY;
 else
  return iter.item->type;
}
