
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int pc; int* a; int ps; int sar; int lcount; int lend; int lbeg; } ;
typedef TYPE_1__ esp_gdbstub_gdb_regfile_t ;
struct TYPE_8__ {int pc; int ps; int sar; int lcount; int lend; int lbeg; int a0; } ;
typedef TYPE_2__ esp_gdbstub_frame_t ;


 int PS_EXCM ;
 int PS_UM ;
 int init_regfile (TYPE_1__*) ;
 int update_regfile_common (TYPE_1__*) ;

void esp_gdbstub_frame_to_regfile(const esp_gdbstub_frame_t *frame, esp_gdbstub_gdb_regfile_t *dst)
{
    init_regfile(dst);
    const uint32_t *a_regs = (const uint32_t *) &frame->a0;
    dst->pc = (frame->pc & 0x3fffffffU) | 0x40000000U;

    for (int i = 0; i < 16; i++) {
        dst->a[i] = a_regs[i];
    }
    for (int i = 16; i < 64; i++) {
        dst->a[i] = 0xDEADBEEF;
    }







    dst->ps = (frame->ps & PS_UM) ? (frame->ps & ~PS_EXCM) : frame->ps;
    dst->sar = frame->sar;
    update_regfile_common(dst);
}
