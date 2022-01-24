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
typedef  int /*<<< orphan*/  int16_t ;
typedef  int /*<<< orphan*/  VLC ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int* modulo_three_table ; 

__attribute__((used)) static inline void FUNC1(int16_t *dst, int code, const int is_block2, GetBitContext *gb, VLC *vlc, int q)
{
    int flags = modulo_three_table[code];

    FUNC0(    dst+0*4+0, (flags >> 6)    , 3, gb, vlc, q);
    if(is_block2){
        FUNC0(dst+1*4+0, (flags >> 4) & 3, 2, gb, vlc, q);
        FUNC0(dst+0*4+1, (flags >> 2) & 3, 2, gb, vlc, q);
    }else{
        FUNC0(dst+0*4+1, (flags >> 4) & 3, 2, gb, vlc, q);
        FUNC0(dst+1*4+0, (flags >> 2) & 3, 2, gb, vlc, q);
    }
    FUNC0(    dst+1*4+1, (flags >> 0) & 3, 2, gb, vlc, q);
}