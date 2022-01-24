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
struct TYPE_3__ {int /*<<< orphan*/  uc_kx_st; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*,unsigned char const*) ; 

__attribute__((used)) static int FUNC5(Context *context, const char *file)
{
    unsigned char key[32];
    int           fd;

    if ((fd = FUNC1(file, O_RDONLY)) == -1) {
        return -1;
    }
    if (FUNC2(fd, key, sizeof key, -1) != sizeof key) {
        (void) FUNC0(fd);
        return -1;
    }
    FUNC4(context->uc_kx_st, key, (const unsigned char *) "VPN Key Exchange");
    FUNC3(key, sizeof key);

    return FUNC0(fd);
}