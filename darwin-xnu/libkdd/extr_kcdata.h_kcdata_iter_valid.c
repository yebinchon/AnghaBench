
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kcdata_item {int dummy; } ;
struct TYPE_5__ {scalar_t__ end; TYPE_1__* item; } ;
typedef TYPE_2__ kcdata_iter_t ;
struct TYPE_4__ {uintptr_t size; } ;



__attribute__((used)) static inline
int kcdata_iter_valid(kcdata_iter_t iter) {
 return
  ( (uintptr_t)iter.item + sizeof(struct kcdata_item) <= (uintptr_t)iter.end ) &&
  ( (uintptr_t)iter.item + sizeof(struct kcdata_item) + iter.item->size <= (uintptr_t)iter.end);
}
