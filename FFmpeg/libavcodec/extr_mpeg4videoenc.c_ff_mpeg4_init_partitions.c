
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int * buf_end; } ;
struct TYPE_5__ {int pb2; int tex_pb; TYPE_2__ pb; } ;
typedef TYPE_1__ MpegEncContext ;


 int init_put_bits (int *,int *,int) ;
 int * put_bits_ptr (TYPE_2__*) ;
 int set_put_bits_buffer_size (TYPE_2__*,int) ;

void ff_mpeg4_init_partitions(MpegEncContext *s)
{
    uint8_t *start = put_bits_ptr(&s->pb);
    uint8_t *end = s->pb.buf_end;
    int size = end - start;
    int pb_size = (((intptr_t)start + size / 3) & (~3)) - (intptr_t)start;
    int tex_size = (size - 2 * pb_size) & (~3);

    set_put_bits_buffer_size(&s->pb, pb_size);
    init_put_bits(&s->tex_pb, start + pb_size, tex_size);
    init_put_bits(&s->pb2, start + pb_size + tex_size, pb_size);
}
