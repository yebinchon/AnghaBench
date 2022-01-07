
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtb_flags; scalar_t__ dtb_offset; scalar_t__ dtb_xamot_offset; scalar_t__ dtb_tomax; scalar_t__ dtb_size; } ;
typedef TYPE_1__ dtrace_buffer_t ;


 int ASSERT (int) ;
 int DTRACEBUF_RING ;
 int DTRACEBUF_WRAPPED ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int bzero (scalar_t__,scalar_t__) ;
 int dtrace_lock ;

__attribute__((used)) static void
dtrace_buffer_polish(dtrace_buffer_t *buf)
{
 ASSERT(buf->dtb_flags & DTRACEBUF_RING);
 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

 if (!(buf->dtb_flags & DTRACEBUF_WRAPPED))
  return;
 if (buf->dtb_offset < buf->dtb_xamot_offset) {
  bzero(buf->dtb_tomax + buf->dtb_offset,
      buf->dtb_xamot_offset - buf->dtb_offset);
 }

 if (buf->dtb_offset > buf->dtb_xamot_offset) {
  bzero(buf->dtb_tomax + buf->dtb_offset,
      buf->dtb_size - buf->dtb_offset);
  bzero(buf->dtb_tomax, buf->dtb_xamot_offset);
 }
}
