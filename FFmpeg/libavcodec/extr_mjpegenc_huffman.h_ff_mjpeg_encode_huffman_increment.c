
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int * val_count; } ;
typedef TYPE_1__ MJpegEncHuffmanContext ;



__attribute__((used)) static inline void ff_mjpeg_encode_huffman_increment(MJpegEncHuffmanContext *s,
                                                     uint8_t val)
{
    s->val_count[val]++;
}
