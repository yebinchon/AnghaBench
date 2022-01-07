
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int size; int data; } ;
struct TYPE_5__ {int header_count; int* header_len; int * header; } ;
typedef TYPE_1__ NUTContext ;
typedef TYPE_2__ AVPacket ;


 int memcmp (int ,int ,int) ;

__attribute__((used)) static int find_best_header_idx(NUTContext *nut, AVPacket *pkt)
{
    int i;
    int best_i = 0;
    int best_len = 0;

    if (pkt->size > 4096)
        return 0;

    for (i = 1; i < nut->header_count; i++)
        if (pkt->size >= nut->header_len[i]
            && nut->header_len[i] > best_len
            && !memcmp(pkt->data, nut->header[i], nut->header_len[i])) {
            best_i = i;
            best_len = nut->header_len[i];
        }
    return best_i;
}
