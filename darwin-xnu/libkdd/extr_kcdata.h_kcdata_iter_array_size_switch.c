
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct thread_delta_snapshot_v2 {int dummy; } ;
struct stack_snapshot_frame64 {int dummy; } ;
struct stack_snapshot_frame32 {int dummy; } ;
struct dyld_uuid_info_64 {int dummy; } ;
struct dyld_uuid_info_32 {int dummy; } ;
typedef int kcdata_iter_t ;
typedef int int32_t ;
 int kcdata_iter_array_elem_type (int ) ;

__attribute__((used)) static inline
uint32_t
kcdata_iter_array_size_switch(kcdata_iter_t iter) {
 switch(kcdata_iter_array_elem_type(iter)) {
 case 136:
  return sizeof(struct dyld_uuid_info_32);
 case 135:
  return sizeof(struct dyld_uuid_info_64);
 case 133:
 case 130:
  return sizeof(struct stack_snapshot_frame32);
 case 132:
 case 129:
  return sizeof(struct stack_snapshot_frame64);
 case 134:
  return sizeof(int32_t);
 case 131:
  return sizeof(struct thread_delta_snapshot_v2);


 case 128:
  return sizeof(uint64_t);
 default:
  return 0;
 }
}
