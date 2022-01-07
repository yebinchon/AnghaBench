
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int int16_t ;
typedef int VLC ;
struct TYPE_3__ {int count; int sym; int n0; int l; int r; } ;
typedef TYPE_1__ Node ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 unsigned int UINT32_MAX ;
 int av_log (int *,int ,char*) ;
 int ff_free_vlc (int *) ;
 int ff_init_vlc_sparse (int *,int,int,int *,int,int,int*,int,int,int *,int,int,int ) ;
 int get_tree_codes (int*,int *,int *,TYPE_1__*,int,int ,int ,int*) ;

__attribute__((used)) static int build_vlc(AVCodecContext *avctx, VLC *vlc, const uint32_t *table)
{
    Node nodes[512];
    uint32_t bits[256];
    int16_t lens[256];
    uint8_t xlat[256];
    int cur_node, i, j, pos = 0;

    ff_free_vlc(vlc);

    for (i = 0; i < 256; i++) {
        nodes[i].count = table[i];
        nodes[i].sym = i;
        nodes[i].n0 = -2;
        nodes[i].l = i;
        nodes[i].r = i;
    }

    cur_node = 256;
    j = 0;
    do {
        for (i = 0; ; i++) {
            int new_node = j;
            int first_node = cur_node;
            int second_node = cur_node;
            unsigned nd, st;

            nodes[cur_node].count = -1;

            do {
                int val = nodes[new_node].count;
                if (val && (val < nodes[first_node].count)) {
                    if (val >= nodes[second_node].count) {
                        first_node = new_node;
                    } else {
                        first_node = second_node;
                        second_node = new_node;
                    }
                }
                new_node += 1;
            } while (new_node != cur_node);

            if (first_node == cur_node)
                break;

            nd = nodes[second_node].count;
            st = nodes[first_node].count;
            nodes[second_node].count = 0;
            nodes[first_node].count = 0;
            if (nd >= UINT32_MAX - st) {
                av_log(avctx, AV_LOG_ERROR, "count overflow\n");
                return AVERROR_INVALIDDATA;
            }
            nodes[cur_node].count = nd + st;
            nodes[cur_node].sym = -1;
            nodes[cur_node].n0 = cur_node;
            nodes[cur_node].l = first_node;
            nodes[cur_node].r = second_node;
            cur_node++;
        }
        j++;
    } while (cur_node - 256 == j);

    get_tree_codes(bits, lens, xlat, nodes, cur_node - 1, 0, 0, &pos);

    return ff_init_vlc_sparse(vlc, 10, pos, lens, 2, 2, bits, 4, 4, xlat, 1, 1, 0);
}
