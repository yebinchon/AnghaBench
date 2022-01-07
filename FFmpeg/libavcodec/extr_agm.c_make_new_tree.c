
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int* child; int parent; } ;
typedef TYPE_1__ Node ;


 int AVERROR_INVALIDDATA ;
 int get_tree_codes (int *,TYPE_1__*,int,int ,int ) ;

__attribute__((used)) static int make_new_tree(const uint8_t *bitlens, uint32_t *codes)
{
    int zlcount = 0, curlen, idx, nindex, last, llast;
    int blcounts[32] = { 0 };
    int syms[8192];
    Node nodes[512];
    int node_idx[1024];
    int old_idx[512];

    for (int i = 0; i < 256; i++) {
        int bitlen = bitlens[i];
        int blcount = blcounts[bitlen];

        zlcount += bitlen < 1;
        syms[(bitlen << 8) + blcount] = i;
        blcounts[bitlen]++;
    }

    for (int i = 0; i < 512; i++) {
        nodes[i].child[0] = -1;
        nodes[i].child[1] = -1;
    }

    for (int i = 0; i < 256; i++) {
        node_idx[i] = 257 + i;
    }

    curlen = 1;
    node_idx[512] = 256;
    last = 255;
    nindex = 1;

    for (curlen = 1; curlen < 32; curlen++) {
        if (blcounts[curlen] > 0) {
            int max_zlcount = zlcount + blcounts[curlen];

            for (int i = 0; zlcount < 256 && zlcount < max_zlcount; zlcount++, i++) {
                int p = node_idx[nindex - 1 + 512];
                int ch = syms[256 * curlen + i];

                if (nindex <= 0)
                    return AVERROR_INVALIDDATA;

                if (nodes[p].child[0] == -1) {
                    nodes[p].child[0] = ch;
                } else {
                    nodes[p].child[1] = ch;
                    nindex--;
                }
                nodes[ch].parent = p;
            }
        }
        llast = last - 1;
        idx = 0;
        while (nindex > 0) {
            int p, ch;

            last = llast - idx;
            p = node_idx[nindex - 1 + 512];
            ch = node_idx[last];
            if (nodes[p].child[0] == -1) {
                nodes[p].child[0] = ch;
            } else {
                nodes[p].child[1] = ch;
                nindex--;
            }
            old_idx[idx] = ch;
            nodes[ch].parent = p;
            if (idx == llast)
                goto next;
            idx++;
            if (nindex <= 0) {
                for (int i = 0; i < idx; i++)
                    node_idx[512 + i] = old_idx[i];
            }
        }
        nindex = idx;
    }

next:

    get_tree_codes(codes, nodes, 256, 0, 0);
    return 0;
}
