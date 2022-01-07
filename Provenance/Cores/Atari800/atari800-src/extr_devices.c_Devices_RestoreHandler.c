
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 scalar_t__ Atari800_MACHINE_800 ;
 scalar_t__ Atari800_machine_type ;
 int ESC_Remove (int ) ;
 int MEMORY_dCopyToMem (int,int,int) ;
 int MEMORY_os ;

__attribute__((used)) static void Devices_RestoreHandler(UWORD address, UBYTE esc_code)
{
 ESC_Remove(esc_code);

 MEMORY_dCopyToMem(MEMORY_os - (Atari800_machine_type == Atari800_MACHINE_800
                                ? 0xd800
                                : 0xc000) + address,
                   address, 3);
}
