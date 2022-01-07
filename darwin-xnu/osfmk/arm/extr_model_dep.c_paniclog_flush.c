
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ eph_other_log_offset; scalar_t__ eph_other_log_len; } ;


 int PESavePanicInfo (unsigned char*,unsigned int) ;
 scalar_t__ PE_get_offset_into_panic_region (scalar_t__) ;
 int PE_save_buffer_to_vram (unsigned char*,unsigned int*) ;
 int PE_sync_panic_buffers () ;
 scalar_t__ debug_buf_ptr ;
 scalar_t__ gPanicBase ;
 TYPE_1__* panic_info ;

void
paniclog_flush()
{
 unsigned int panicbuf_length = 0;

 panicbuf_length = (unsigned int)(debug_buf_ptr - gPanicBase);
 if (!panicbuf_length)
  return;




 panic_info->eph_other_log_len = PE_get_offset_into_panic_region(debug_buf_ptr) - panic_info->eph_other_log_offset;





 PE_save_buffer_to_vram((unsigned char *)gPanicBase, &panicbuf_length);





 PESavePanicInfo((unsigned char *)gPanicBase, panicbuf_length);

 PE_sync_panic_buffers();
}
