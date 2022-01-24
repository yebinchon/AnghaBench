#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ VP56Context ;
typedef  int /*<<< orphan*/  VLC ;
struct TYPE_6__ {int count; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  FF_HUFFMAN_BITS ; 
 int /*<<< orphan*/  FF_HUFFMAN_FLAG_HNODE_FIRST ; 
 int VP6_MAX_HUFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vp6_huff_cmp ; 

__attribute__((used)) static int FUNC2(VP56Context *s, uint8_t coeff_model[],
                               const uint8_t *map, unsigned size, VLC *vlc)
{
    Node nodes[2*VP6_MAX_HUFF_SIZE], *tmp = &nodes[size];
    int a, b, i;

    /* first compute probabilities from model */
    tmp[0].count = 256;
    for (i=0; i<size-1; i++) {
        a = tmp[i].count *        coeff_model[i]  >> 8;
        b = tmp[i].count * (255 - coeff_model[i]) >> 8;
        nodes[map[2*i  ]].count = a + !a;
        nodes[map[2*i+1]].count = b + !b;
    }

    FUNC0(vlc);
    /* then build the huffman tree according to probabilities */
    return FUNC1(s->avctx, vlc, size, FF_HUFFMAN_BITS,
                              nodes, vp6_huff_cmp,
                              FF_HUFFMAN_FLAG_HNODE_FIRST);
}