
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct embedded_panic_header {int dummy; } ;
struct TYPE_3__ {int eph_version; int eph_magic; int eph_panic_log_offset; } ;


 int EMBEDDED_PANIC_HEADER_CURRENT_VERSION ;
 int EMBEDDED_PANIC_MAGIC ;
 int PE_get_offset_into_panic_region (int ) ;
 int bzero (TYPE_1__*,int) ;
 int debug_buf_base ;
 TYPE_1__* panic_info ;

void
PE_init_panicheader()
{
 if (!panic_info)
  return;

 bzero(panic_info, sizeof(struct embedded_panic_header));





 panic_info->eph_panic_log_offset = PE_get_offset_into_panic_region(debug_buf_base);

 panic_info->eph_magic = EMBEDDED_PANIC_MAGIC;
 panic_info->eph_version = EMBEDDED_PANIC_HEADER_CURRENT_VERSION;

 return;
}
