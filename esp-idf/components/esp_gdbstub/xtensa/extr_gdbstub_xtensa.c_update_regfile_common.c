
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* a; int windowstart; int configid1; int configid0; scalar_t__ windowbase; } ;
typedef TYPE_1__ esp_gdbstub_gdb_regfile_t ;


 int CONFIGID0 ;
 int CONFIGID1 ;
 int RSR (int ,int ) ;
 int esp_stack_ptr_is_sane (int) ;

__attribute__((used)) static void update_regfile_common(esp_gdbstub_gdb_regfile_t *dst)
{
    if (dst->a[0] & 0x8000000U) {
        dst->a[0] = (dst->a[0] & 0x3fffffffU) | 0x40000000U;
    }
    if (!esp_stack_ptr_is_sane(dst->a[1])) {
        dst->a[1] = 0xDEADBEEF;
    }
    dst->windowbase = 0;
    dst->windowstart = 0x1;
    RSR(CONFIGID0, dst->configid0);
    RSR(CONFIGID1, dst->configid1);
}
