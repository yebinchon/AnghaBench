#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int spi_dma_chan_enabled ; 

bool FUNC2(int dma_chan)
{
    FUNC1(dma_chan==1 || dma_chan == 2);
    return spi_dma_chan_enabled & FUNC0(dma_chan);
}