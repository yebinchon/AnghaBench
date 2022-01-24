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
typedef  int /*<<< orphan*/  pvr_ptr_t ;
typedef  int /*<<< orphan*/  ptr_t ;
struct TYPE_2__ {int PRINA; int PRINB; int PRIR; int /*<<< orphan*/  TVMD; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 TYPE_1__* Vdp2Regs ; 
 scalar_t__ cur_vdp2 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dma_callback ; 
 int /*<<< orphan*/  dmadone ; 
 int nbg0priority ; 
 int nbg1priority ; 
 int nbg2priority ; 
 int nbg3priority ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ vdp2_fb ; 
 int vdp2_fbnum ; 
 scalar_t__* vdp2_fbs ; 

__attribute__((used)) static void FUNC14(void)  {
    int i;

    FUNC5(Vdp2Regs->TVMD);
    FUNC0(Vdp2Regs->PRINA & 0x7);
    FUNC1((Vdp2Regs->PRINA >> 8) & 0x7);
    FUNC2(Vdp2Regs->PRINB & 0x7);
    FUNC3((Vdp2Regs->PRINB >> 8) & 0x7);
    FUNC4(Vdp2Regs->PRIR & 0x7);

    vdp2_fb = vdp2_fbs[0];
    vdp2_fbnum = 0;

    for(i = 1; i < 8; i++)  {
        if(nbg3priority == i)   {
            if(FUNC10())  {
                FUNC11((ptr_t)(vdp2_fb), 512 * 256 * 2);
                FUNC13(&dmadone);

                FUNC12(vdp2_fb, (pvr_ptr_t) cur_vdp2, 512 * 256 * 2,
                                 0, dma_callback, 0);

                FUNC6(i);

                cur_vdp2 += 512 * 256 * 2;
                vdp2_fbnum ^= 1;
                vdp2_fb = vdp2_fbs[vdp2_fbnum];
            }
        }
        if(nbg2priority == i)   {
            if(FUNC9())  {
                FUNC11((ptr_t)(vdp2_fb), 512 * 256 * 2);
                FUNC13(&dmadone);

                FUNC12(vdp2_fb, (pvr_ptr_t) cur_vdp2, 512 * 256 * 2,
                                 0, dma_callback, 0);

                FUNC6(i);

                cur_vdp2 += 512 * 256 * 2;
                vdp2_fbnum ^= 1;
                vdp2_fb = vdp2_fbs[vdp2_fbnum];
            }
        }
        if(nbg1priority == i)   {
            if(FUNC8())  {
                FUNC11((ptr_t)(vdp2_fb), 512 * 256 * 2);
                FUNC13(&dmadone);

                FUNC12(vdp2_fb, (pvr_ptr_t) cur_vdp2, 512 * 256 * 2,
                                 0, dma_callback, 0);

                FUNC6(i);

                cur_vdp2 += 512 * 256 * 2;
                vdp2_fbnum ^= 1;
                vdp2_fb = vdp2_fbs[vdp2_fbnum];
            }
        }
        if(nbg0priority == i)   {
            if(FUNC7())  {
                FUNC11((ptr_t)(vdp2_fb), 512 * 256 * 2);
                FUNC13(&dmadone);

                FUNC12(vdp2_fb, (pvr_ptr_t) cur_vdp2, 512 * 256 * 2,
                                 0, dma_callback, 0);

                FUNC6(i);

                cur_vdp2 += 512 * 256 * 2;
                vdp2_fbnum ^= 1;
                vdp2_fb = vdp2_fbs[vdp2_fbnum];
            }
        }
//        if (rbg0priority == i)
//            Vdp2DrawRBG0();
    }
}