
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val_count; } ;
typedef TYPE_1__ MJpegEncHuffmanContext ;


 int memset (int ,int ,int) ;

void ff_mjpeg_encode_huffman_init(MJpegEncHuffmanContext *s)
{
    memset(s->val_count, 0, sizeof(s->val_count));
}
