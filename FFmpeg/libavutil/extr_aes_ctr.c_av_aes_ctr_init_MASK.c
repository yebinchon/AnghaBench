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
struct AVAESCTR {scalar_t__ block_offset; int /*<<< orphan*/  counter; int /*<<< orphan*/  aes; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct AVAESCTR *a, const uint8_t *key)
{
    a->aes = FUNC1();
    if (!a->aes) {
        return FUNC0(ENOMEM);
    }

    FUNC2(a->aes, key, 128, 0);

    FUNC3(a->counter, 0, sizeof(a->counter));
    a->block_offset = 0;

    return 0;
}