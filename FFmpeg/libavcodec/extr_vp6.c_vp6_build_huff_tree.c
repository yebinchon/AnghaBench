
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int avctx; } ;
typedef TYPE_1__ VP56Context ;
typedef int VLC ;
struct TYPE_6__ {int count; } ;
typedef TYPE_2__ Node ;


 int FF_HUFFMAN_BITS ;
 int FF_HUFFMAN_FLAG_HNODE_FIRST ;
 int VP6_MAX_HUFF_SIZE ;
 int ff_free_vlc (int *) ;
 int ff_huff_build_tree (int ,int *,unsigned int,int ,TYPE_2__*,int ,int ) ;
 int vp6_huff_cmp ;

__attribute__((used)) static int vp6_build_huff_tree(VP56Context *s, uint8_t coeff_model[],
                               const uint8_t *map, unsigned size, VLC *vlc)
{
    Node nodes[2*VP6_MAX_HUFF_SIZE], *tmp = &nodes[size];
    int a, b, i;


    tmp[0].count = 256;
    for (i=0; i<size-1; i++) {
        a = tmp[i].count * coeff_model[i] >> 8;
        b = tmp[i].count * (255 - coeff_model[i]) >> 8;
        nodes[map[2*i ]].count = a + !a;
        nodes[map[2*i+1]].count = b + !b;
    }

    ff_free_vlc(vlc);

    return ff_huff_build_tree(s->avctx, vlc, size, FF_HUFFMAN_BITS,
                              nodes, vp6_huff_cmp,
                              FF_HUFFMAN_FLAG_HNODE_FIRST);
}
