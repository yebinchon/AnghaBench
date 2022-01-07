
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int data; } ;


 int IA32_BIOS_UPDT_TRIG ;
 TYPE_1__* global_update ;
 int wrmsr64 (int ,int ) ;

__attribute__((used)) static void
update_microcode(void)
{




 wrmsr64(IA32_BIOS_UPDT_TRIG, (uint64_t)(uintptr_t)&global_update->data);
}
