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
struct AVAES {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct AVAES*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct AVAES *aes, uint8_t *iv, uint8_t *outbuf,
                            int outlen)
{
    int i, j, outpos;
    for (i = 0, outpos = 0; outpos < outlen; i++) {
        uint8_t keystream[16];
        FUNC0(&iv[14], i);
        FUNC1(aes, keystream, iv, 1, NULL, 0);
        for (j = 0; j < 16 && outpos < outlen; j++, outpos++)
            outbuf[outpos] ^= keystream[j];
    }
}