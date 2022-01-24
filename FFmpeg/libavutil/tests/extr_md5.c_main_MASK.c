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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int volatile*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 

int FUNC2(void)
{
    uint8_t md5val[16];
    int i;
    volatile uint8_t in[1000]; // volatile to workaround http://llvm.org/bugs/show_bug.cgi?id=20849
    // FIXME remove volatile once it has been fixed and all fate clients are updated

    for (i = 0; i < 1000; i++)
        in[i] = i * i;
    FUNC0(md5val, in, 1000);
    FUNC1(md5val);
    FUNC0(md5val, in, 63);
    FUNC1(md5val);
    FUNC0(md5val, in, 64);
    FUNC1(md5val);
    FUNC0(md5val, in, 65);
    FUNC1(md5val);
    for (i = 0; i < 1000; i++)
        in[i] = i % 127;
    FUNC0(md5val, in, 999);
    FUNC1(md5val);

    return 0;
}