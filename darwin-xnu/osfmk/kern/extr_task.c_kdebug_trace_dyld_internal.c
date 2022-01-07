
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int fid_objno; int fid_generation; } ;
struct TYPE_3__ {int* val; } ;
struct dyld_kernel_image_info {int load_addr; TYPE_2__ fsobjid; TYPE_1__ fsid; int uuid; } ;


 int DBG_DYLD ;
 int DBG_DYLD_UUID ;
 int KDBG_EVENTID (int ,int ,int) ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int ,int,int,int,int,int ) ;
 int static_assert (int) ;

__attribute__((used)) static void
kdebug_trace_dyld_internal(uint32_t base_code,
 struct dyld_kernel_image_info *info)
{
 static_assert(sizeof(info->uuid) >= 16);


 uint64_t *uuid = (uint64_t *)&(info->uuid);

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
  KDBG_EVENTID(DBG_DYLD, DBG_DYLD_UUID, base_code), uuid[0],
  uuid[1], info->load_addr,
  (uint64_t)info->fsid.val[0] | ((uint64_t)info->fsid.val[1] << 32),
  0);
 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
  KDBG_EVENTID(DBG_DYLD, DBG_DYLD_UUID, base_code + 1),
  (uint64_t)info->fsobjid.fid_objno |
  ((uint64_t)info->fsobjid.fid_generation << 32),
  0, 0, 0, 0);
}
