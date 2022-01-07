
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lck_mtx_type; scalar_t__ lck_mtx_tag; } ;
typedef TYPE_1__ lck_mtx_t ;


 scalar_t__ LCK_MTX_TAG_DESTROYED ;
 scalar_t__ LCK_MTX_TYPE ;
 int panic (char*,TYPE_1__*) ;

__attribute__((used)) static inline void
lck_mtx_verify(lck_mtx_t *lock)
{
 if (lock->lck_mtx_type != LCK_MTX_TYPE)
  panic("Invalid mutex %p", lock);




}
