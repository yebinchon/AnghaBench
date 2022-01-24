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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  GCRY_VERY_STRONG_RANDOM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(uint8_t *buf, int len)
{
#if CONFIG_GCRYPT
    gcry_randomize(buf, len, GCRY_VERY_STRONG_RANDOM);
    return 0;
#elif CONFIG_OPENSSL
    if (RAND_bytes(buf, len))
        return 0;
#else
    return FUNC0(ENOSYS);
#endif
    return FUNC0(EINVAL);
}