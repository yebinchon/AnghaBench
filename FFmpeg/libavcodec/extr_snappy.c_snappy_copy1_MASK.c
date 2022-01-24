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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,unsigned int,int) ; 

__attribute__((used)) static int FUNC2(GetByteContext *gb, uint8_t *start, uint8_t *p,
                        int size, int val)
{
    int len          = 4 + (val & 0x7);
    unsigned int off = FUNC0(gb) | (val & 0x38) << 5;

    return FUNC1(start, p, size, off, len);
}