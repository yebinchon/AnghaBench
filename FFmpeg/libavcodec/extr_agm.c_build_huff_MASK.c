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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  VLC ;

/* Variables and functions */
 int /*<<< orphan*/  INIT_VLC_LE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int*,int,int,int /*<<< orphan*/ *,int,int,int*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const uint8_t *bitlen, VLC *vlc)
{
    uint32_t new_codes[256];
    uint8_t bits[256];
    uint8_t symbols[256];
    uint32_t codes[256];
    int nb_codes = 0;

    int ret = FUNC2(bitlen, new_codes);
    if (ret < 0)
        return ret;

    for (int i = 0; i < 256; i++) {
        if (bitlen[i]) {
            bits[nb_codes] = bitlen[i];
            codes[nb_codes] = new_codes[i];
            symbols[nb_codes] = i;
            nb_codes++;
        }
    }

    FUNC0(vlc);
    return FUNC1(vlc, 13, nb_codes,
                              bits, 1, 1,
                              codes, 4, 4,
                              symbols, 1, 1,
                              INIT_VLC_LE);
}