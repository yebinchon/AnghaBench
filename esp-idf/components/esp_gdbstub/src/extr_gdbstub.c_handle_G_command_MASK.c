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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  regfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const**,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ s_scratch ; 

__attribute__((used)) static void FUNC3(const unsigned char* cmd, int len)
{
    uint32_t *p = (uint32_t *) &s_scratch.regfile;
    for (int i = 0; i < sizeof(s_scratch.regfile) / sizeof(*p); ++i) {
        *p++ = FUNC2(FUNC0(&cmd, 32));
    }
    FUNC1("OK");
}