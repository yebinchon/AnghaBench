
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int uint8_t ;
typedef int WriterContext ;
struct TYPE_6__ {int str; } ;
typedef TYPE_1__ AVBPrint ;


 int AV_BPRINT_SIZE_UNLIMITED ;
 int FFMIN (int,int) ;
 int av_bprint_chars (TYPE_1__*,unsigned int,int) ;
 int av_bprint_finalize (TYPE_1__*,int *) ;
 int av_bprint_init (TYPE_1__*,int ,int ) ;
 int av_bprintf (TYPE_1__*,char*,...) ;
 int writer_print_string (int *,char const*,int ,int ) ;

__attribute__((used)) static void writer_print_data(WriterContext *wctx, const char *name,
                              uint8_t *data, int size)
{
    AVBPrint bp;
    int offset = 0, l, i;

    av_bprint_init(&bp, 0, AV_BPRINT_SIZE_UNLIMITED);
    av_bprintf(&bp, "\n");
    while (size) {
        av_bprintf(&bp, "%08x: ", offset);
        l = FFMIN(size, 16);
        for (i = 0; i < l; i++) {
            av_bprintf(&bp, "%02x", data[i]);
            if (i & 1)
                av_bprintf(&bp, " ");
        }
        av_bprint_chars(&bp, ' ', 41 - 2 * i - i / 2);
        for (i = 0; i < l; i++)
            av_bprint_chars(&bp, data[i] - 32U < 95 ? data[i] : '.', 1);
        av_bprintf(&bp, "\n");
        offset += l;
        data += l;
        size -= l;
    }
    writer_print_string(wctx, name, bp.str, 0);
    av_bprint_finalize(&bp, ((void*)0));
}
