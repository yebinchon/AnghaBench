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
typedef  int /*<<< orphan*/  mbedtls_mpi ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 

void FUNC3(const char *name, const mbedtls_mpi *X)
{
    static char buf[1024];
    size_t n;
    FUNC1(buf, 0, sizeof(buf));
    FUNC0(X, 16, buf, sizeof(buf)-1, &n);
    if(n) {
        FUNC2("%s = 0x%s\n", name, buf);
    } else {
        FUNC2("%s = TOOLONG\n", name);
    }
}