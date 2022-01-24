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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(GetByteContext *gb, uint32_t *dst, int pallen)
{
    int i;

    pallen = FUNC0(pallen, FUNC2(gb) / 3);
    for (i = 0; i < pallen; i++)
        *dst++ = 0xFF000000 | FUNC1(gb);
    if (pallen < 256)
        FUNC3(dst, 0, (256 - pallen) * sizeof(*dst));
}