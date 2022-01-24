#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int ColorMode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  Vdp2ColorRam ; 
 TYPE_1__ Vdp2Internal ; 

__attribute__((used)) static uint16 FUNC3(u32 colorindex)   {
    u16 tmp;

    switch(Vdp2Internal.ColorMode)  {
        case 0:
        case 1:
        {
            colorindex <<= 1;
            tmp = FUNC2(Vdp2ColorRam, colorindex & 0xFFF);
            return FUNC0(tmp) | 0x8000;
        }
        case 2:
        {
            u16 tmp2;
            colorindex <<= 2;
            colorindex &= 0xFFF;
            tmp = FUNC2(Vdp2ColorRam, colorindex);
            tmp2 = FUNC2(Vdp2ColorRam, colorindex+2);
            return FUNC1(tmp, tmp2) | 0x8000;
        }
        default:
            break;
    }

    return 0;
}