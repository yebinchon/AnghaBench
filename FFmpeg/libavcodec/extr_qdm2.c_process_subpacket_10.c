
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* packet; } ;
struct TYPE_4__ {int size; int data; } ;
typedef TYPE_2__ QDM2SubPNode ;
typedef int QDM2Context ;
typedef int GetBitContext ;


 int fill_tone_level_array (int *,int) ;
 int init_get_bits (int *,int ,int) ;
 int init_tone_level_dequantization (int *,int *) ;

__attribute__((used)) static void process_subpacket_10(QDM2Context *q, QDM2SubPNode *node)
{
    GetBitContext gb;

    if (node) {
        init_get_bits(&gb, node->packet->data, node->packet->size * 8);
        init_tone_level_dequantization(q, &gb);
        fill_tone_level_array(q, 1);
    } else {
        fill_tone_level_array(q, 0);
    }
}
