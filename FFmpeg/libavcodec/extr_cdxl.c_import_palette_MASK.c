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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int palette_size; int /*<<< orphan*/ * palette; } ;
typedef  TYPE_1__ CDXLVideoContext ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(CDXLVideoContext *c, uint32_t *new_palette)
{
    int i;

    for (i = 0; i < c->palette_size / 2; i++) {
        unsigned rgb = FUNC0(&c->palette[i * 2]);
        unsigned r   = ((rgb >> 8) & 0xF) * 0x11;
        unsigned g   = ((rgb >> 4) & 0xF) * 0x11;
        unsigned b   =  (rgb       & 0xF) * 0x11;
        FUNC1(&new_palette[i], (0xFFU << 24) | (r << 16) | (g << 8) | b);
    }
}