
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int sub_sampling; } ;
struct TYPE_8__ {TYPE_1__* packet; } ;
struct TYPE_7__ {int size; int data; } ;
typedef TYPE_2__ QDM2SubPNode ;
typedef TYPE_3__ QDM2Context ;
typedef int GetBitContext ;


 int QDM2_SB_USED (int ) ;
 int init_get_bits (int *,int ,int) ;
 int synthfilt_build_sb_samples (TYPE_3__*,int *,int,int,int ) ;

__attribute__((used)) static void process_subpacket_12(QDM2Context *q, QDM2SubPNode *node)
{
    GetBitContext gb;
    int length = 0;

    if (node) {
        length = node->packet->size * 8;
        init_get_bits(&gb, node->packet->data, length);
    }

    synthfilt_build_sb_samples(q, &gb, length, 8, QDM2_SB_USED(q->sub_sampling));
}
