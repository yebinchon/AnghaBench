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
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * gen_foreign_headers_buf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void) {
    if (gen_foreign_headers_buf) {
        for (size_t i = 0; i < FUNC0(gen_foreign_headers_buf); i++) {
            FUNC1(gen_foreign_headers_buf[i]);
        }
    }
}