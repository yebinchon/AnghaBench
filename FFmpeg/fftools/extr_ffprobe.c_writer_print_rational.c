
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WriterContext ;
struct TYPE_7__ {int str; } ;
struct TYPE_6__ {int den; int num; } ;
typedef TYPE_1__ AVRational ;
typedef TYPE_2__ AVBPrint ;


 int AV_BPRINT_SIZE_AUTOMATIC ;
 int av_bprint_init (TYPE_2__*,int ,int ) ;
 int av_bprintf (TYPE_2__*,char*,int ,char,int ) ;
 int writer_print_string (int *,char const*,int ,int ) ;

__attribute__((used)) static inline void writer_print_rational(WriterContext *wctx,
                                         const char *key, AVRational q, char sep)
{
    AVBPrint buf;
    av_bprint_init(&buf, 0, AV_BPRINT_SIZE_AUTOMATIC);
    av_bprintf(&buf, "%d%c%d", q.num, sep, q.den);
    writer_print_string(wctx, key, buf.str, 0);
}
