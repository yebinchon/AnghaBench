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
 int /*<<< orphan*/  FUNC0 (void*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*,float,int) ; 

__attribute__((used)) static void FUNC2(void *priv, unsigned int color, unsigned int color_id)
{
    if (color_id > 1)
        return;
    FUNC1(priv, 'f', color == 0xFFFFFFFF);
    if (color != 0xFFFFFFFF)
        FUNC0(priv, "<font color=\"#%06x\">",
              (color & 0xFF0000) >> 16 | color & 0xFF00 | (color & 0xFF) << 16);
}