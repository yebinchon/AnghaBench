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
 int /*<<< orphan*/  AES_BLOCK_BYTES ; 
 int /*<<< orphan*/  AES_STATE_REG ; 
 scalar_t__ AES_TEXT_IN_BASE ; 
 scalar_t__ AES_TEXT_OUT_BASE ; 
 int /*<<< orphan*/  AES_TRIGGER_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(const void *input, void *output)
{
    FUNC2((void *)AES_TEXT_IN_BASE, input, AES_BLOCK_BYTES);

    FUNC1(AES_TRIGGER_REG, 1);
    while (FUNC0(AES_STATE_REG) != 0) { }

    FUNC2(output, (void *)AES_TEXT_OUT_BASE, AES_BLOCK_BYTES);
}