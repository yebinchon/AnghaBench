
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* content; } ;
struct TYPE_4__ {int data_size; int * data; int header; } ;
typedef int PutBitContext ;
typedef TYPE_1__ JPEGRawScan ;
typedef TYPE_2__ CodedBitstreamUnit ;
typedef int CodedBitstreamContext ;


 int AVERROR (int ) ;
 int ENOSPC ;
 int cbs_jpeg_write_scan_header (int *,int *,int *) ;
 int put_bits (int *,int,int ) ;
 int put_bits_left (int *) ;

__attribute__((used)) static int cbs_jpeg_write_scan(CodedBitstreamContext *ctx,
                               CodedBitstreamUnit *unit,
                               PutBitContext *pbc)
{
    JPEGRawScan *scan = unit->content;
    int i, err;

    err = cbs_jpeg_write_scan_header(ctx, pbc, &scan->header);
    if (err < 0)
        return err;

    if (scan->data) {
        if (scan->data_size * 8 > put_bits_left(pbc))
            return AVERROR(ENOSPC);

        for (i = 0; i < scan->data_size; i++)
            put_bits(pbc, 8, scan->data[i]);
    }

    return 0;
}
