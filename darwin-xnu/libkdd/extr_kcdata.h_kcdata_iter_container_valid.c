
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {TYPE_1__* item; } ;
typedef TYPE_2__ kcdata_iter_t ;
struct TYPE_6__ {int size; } ;


 scalar_t__ KCDATA_TYPE_CONTAINER_BEGIN ;
 scalar_t__ kcdata_iter_type (TYPE_2__) ;
 scalar_t__ kcdata_iter_valid (TYPE_2__) ;

__attribute__((used)) static inline
int kcdata_iter_container_valid(kcdata_iter_t iter) {
 return
  kcdata_iter_valid(iter) &&
  kcdata_iter_type(iter) == KCDATA_TYPE_CONTAINER_BEGIN &&
  iter.item->size >= sizeof(uint32_t);
}
