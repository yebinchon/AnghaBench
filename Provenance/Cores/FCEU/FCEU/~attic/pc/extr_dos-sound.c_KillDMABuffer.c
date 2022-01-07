
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LMSelector ;
 int __dpmi_free_dos_memory (int ) ;

__attribute__((used)) static void KillDMABuffer(void)
{
 __dpmi_free_dos_memory(LMSelector);
}
