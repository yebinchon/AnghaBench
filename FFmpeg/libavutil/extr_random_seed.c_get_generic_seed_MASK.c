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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  tmp ;
struct AVSHA {int dummy; } ;
typedef  int clock_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int FUNC0 (unsigned char*) ; 
 int FUNC1 () ; 
 int CLOCKS_PER_SEC ; 
 scalar_t__ TEST ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct AVSHA*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (struct AVSHA*,int) ; 
 int av_sha_size ; 
 int /*<<< orphan*/  FUNC5 (struct AVSHA*,int /*<<< orphan*/  const*,int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint32_t FUNC8(void)
{
    uint64_t tmp[120/8];
    struct AVSHA *sha = (void*)tmp;
    clock_t last_t  = 0;
    clock_t last_td = 0;
    clock_t init_t = 0;
    static uint64_t i = 0;
    static uint32_t buffer[512] = { 0 };
    unsigned char digest[20];
    uint64_t last_i = i;

    FUNC2(sizeof(tmp) >= av_sha_size);

    if(TEST){
        FUNC7(buffer, 0, sizeof(buffer));
        last_i = i = 0;
    }else{
#ifdef AV_READ_TIME
        buffer[13] ^= AV_READ_TIME();
        buffer[41] ^= AV_READ_TIME()>>32;
#endif
    }

    for (;;) {
        clock_t t = FUNC6();
        if (last_t + 2*last_td + (CLOCKS_PER_SEC > 1000) >= t) {
            last_td = t - last_t;
            buffer[i & 511] = 1664525*buffer[i & 511] + 1013904223 + (last_td % 3294638521U);
        } else {
            last_td = t - last_t;
            buffer[++i & 511] += last_td % 3294638521U;
            if ((t - init_t) >= CLOCKS_PER_SEC>>5)
                if (last_i && i - last_i > 4 || i - last_i > 64 || TEST && i - last_i > 8)
                    break;
        }
        last_t = t;
        if (!init_t)
            init_t = t;
    }

    if(TEST) {
        buffer[0] = buffer[1] = 0;
    } else {
#ifdef AV_READ_TIME
        buffer[111] += AV_READ_TIME();
#endif
    }

    FUNC4(sha, 160);
    FUNC5(sha, (const uint8_t *)buffer, sizeof(buffer));
    FUNC3(sha, digest);
    return FUNC0(digest) + FUNC0(digest + 16);
}