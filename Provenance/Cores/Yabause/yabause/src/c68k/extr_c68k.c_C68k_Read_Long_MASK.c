#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int (* Read_Word ) (int) ;} ;
typedef  TYPE_1__ c68k_struc ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 

u32 FUNC4(c68k_struc *cpu, u32 adr)
{
#ifdef C68K_BIG_ENDIAN
    return (cpu->Read_Word(adr) << 16) | (cpu->Read_Word(adr + 2) & 0xFFFF);
#else
    return (cpu->Read_Word(adr) << 16) | (cpu->Read_Word(adr + 2) & 0xFFFF);
#endif
}