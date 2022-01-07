
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct thread_snapshot_v2 {int dummy; } ;
struct dyld_uuid_info_64 {int dummy; } ;
struct TYPE_7__ {TYPE_1__* item; } ;
typedef TYPE_2__ kcdata_iter_t ;
struct TYPE_6__ {int size; int flags; } ;






 int kcdata_flags_get_padding (int ) ;
 int kcdata_iter_is_legacy_item (TYPE_2__,int) ;
 int kcdata_iter_type (TYPE_2__) ;

__attribute__((used)) static inline uint32_t
kcdata_iter_size(kcdata_iter_t iter)
{
 uint32_t legacy_size = 0;

 switch (kcdata_iter_type(iter)) {
 case 131:
 case 130:
  return iter.item->size;
 case 128: {
  legacy_size = sizeof(struct thread_snapshot_v2);
  if (kcdata_iter_is_legacy_item(iter, legacy_size)) {
   return legacy_size;
  }

  goto not_legacy;
 }
 case 129: {
  legacy_size = sizeof(struct dyld_uuid_info_64);
  if (kcdata_iter_is_legacy_item(iter, legacy_size)) {
   return legacy_size;
  }

  goto not_legacy;
 }
not_legacy:
 default:
  if (iter.item->size < kcdata_flags_get_padding(iter.item->flags))
   return 0;
  else
   return iter.item->size - kcdata_flags_get_padding(iter.item->flags);
 }
}
