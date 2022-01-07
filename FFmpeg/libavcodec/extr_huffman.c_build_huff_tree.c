
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int int16_t ;
typedef int VLC ;
typedef int Node ;


 int FF_HUFFMAN_FLAG_ZERO_COUNT ;
 int ff_init_vlc_sparse (int *,int,int,int *,int,int,int *,int,int,int *,int,int,int ) ;
 int get_tree_codes (int *,int *,int *,int *,int,int ,int ,int*,int) ;

__attribute__((used)) static int build_huff_tree(VLC *vlc, Node *nodes, int head, int flags, int nb_bits)
{
    int no_zero_count = !(flags & FF_HUFFMAN_FLAG_ZERO_COUNT);
    uint32_t bits[256];
    int16_t lens[256];
    uint8_t xlat[256];
    int pos = 0;

    get_tree_codes(bits, lens, xlat, nodes, head, 0, 0,
                   &pos, no_zero_count);
    return ff_init_vlc_sparse(vlc, nb_bits, pos, lens, 2, 2, bits, 4, 4, xlat, 1, 1, 0);
}
