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
struct TYPE_3__ {int /*<<< orphan*/  pb; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int* ff_mpeg12_vlc_dc_chroma_bits ; 
 int* ff_mpeg12_vlc_dc_chroma_code ; 
 int* ff_mpeg12_vlc_dc_lum_bits ; 
 int* ff_mpeg12_vlc_dc_lum_code ; 
 int* mpeg1_chr_dc_uni ; 
 int* mpeg1_lum_dc_uni ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static inline void FUNC3(MpegEncContext *s, int diff, int component)
{
    unsigned int diff_u = diff + 255;
    if (diff_u >= 511) {
        int index;

        if (diff < 0) {
            index = FUNC0(-2 * diff);
            diff--;
        } else {
            index = FUNC0(2 * diff);
        }
        if (component == 0)
            FUNC2(&s->pb,
                     ff_mpeg12_vlc_dc_lum_bits[index] + index,
                     (ff_mpeg12_vlc_dc_lum_code[index] << index) +
                     FUNC1(diff, index));
        else
            FUNC2(&s->pb,
                     ff_mpeg12_vlc_dc_chroma_bits[index] + index,
                     (ff_mpeg12_vlc_dc_chroma_code[index] << index) +
                     FUNC1(diff, index));
    } else {
        if (component == 0)
            FUNC2(&s->pb,
                     mpeg1_lum_dc_uni[diff + 255] & 0xFF,
                     mpeg1_lum_dc_uni[diff + 255] >> 8);
        else
            FUNC2(&s->pb,
                     mpeg1_chr_dc_uni[diff + 255] & 0xFF,
                     mpeg1_chr_dc_uni[diff + 255] >> 8);
    }
}