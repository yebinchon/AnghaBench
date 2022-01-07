
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AlacRawDataBlockType { ____Placeholder_AlacRawDataBlockType } AlacRawDataBlockType ;
struct TYPE_3__ {scalar_t__ frame_size; int extra_bits; int verbatim; int pbctx; } ;
typedef TYPE_1__ AlacEncodeContext ;


 scalar_t__ DEFAULT_FRAME_SIZE ;
 int put_bits (int *,int,int) ;
 int put_bits32 (int *,scalar_t__) ;

__attribute__((used)) static void write_element_header(AlacEncodeContext *s,
                                 enum AlacRawDataBlockType element,
                                 int instance)
{
    int encode_fs = 0;

    if (s->frame_size < DEFAULT_FRAME_SIZE)
        encode_fs = 1;

    put_bits(&s->pbctx, 3, element);
    put_bits(&s->pbctx, 4, instance);
    put_bits(&s->pbctx, 12, 0);
    put_bits(&s->pbctx, 1, encode_fs);
    put_bits(&s->pbctx, 2, s->extra_bits >> 3);
    put_bits(&s->pbctx, 1, s->verbatim);
    if (encode_fs)
        put_bits32(&s->pbctx, s->frame_size);
}
