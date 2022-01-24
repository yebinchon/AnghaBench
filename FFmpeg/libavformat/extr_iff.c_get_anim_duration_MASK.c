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
 unsigned int ID_ANHD ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static unsigned FUNC5(uint8_t *buf, int size)
{
    GetByteContext gb;

    FUNC3(&gb, buf, size);
    FUNC4(&gb, 4);
    while (FUNC1(&gb) > 8) {
        unsigned chunk = FUNC2(&gb);
        unsigned size = FUNC0(&gb);

        if (chunk == ID_ANHD) {
            if (size < 40)
                break;
            FUNC4(&gb, 14);
            return FUNC0(&gb);
        } else {
            FUNC4(&gb, size + size & 1);
        }
    }
    return 10;
}