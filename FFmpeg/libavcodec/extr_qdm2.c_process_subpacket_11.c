
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int cm_table_select; int superblocktype_2_3; int nb_channels; int coding_method; int tone_level_idx_temp; int tone_level_idx; } ;
struct TYPE_8__ {TYPE_1__* packet; } ;
struct TYPE_7__ {int size; int data; } ;
typedef TYPE_2__ QDM2SubPNode ;
typedef TYPE_3__ QDM2Context ;
typedef int GetBitContext ;


 int fill_coding_method_array (int ,int ,int ,int ,int,int ,int ) ;
 int get_bits (int *,int) ;
 int init_get_bits (int *,int ,int) ;
 int synthfilt_build_sb_samples (TYPE_3__*,int *,int,int ,int) ;

__attribute__((used)) static void process_subpacket_11(QDM2Context *q, QDM2SubPNode *node)
{
    GetBitContext gb;
    int length = 0;

    if (node) {
        length = node->packet->size * 8;
        init_get_bits(&gb, node->packet->data, length);
    }

    if (length >= 32) {
        int c = get_bits(&gb, 13);

        if (c > 3)
            fill_coding_method_array(q->tone_level_idx,
                                     q->tone_level_idx_temp, q->coding_method,
                                     q->nb_channels, 8 * c,
                                     q->superblocktype_2_3, q->cm_table_select);
    }

    synthfilt_build_sb_samples(q, &gb, length, 0, 8);
}
