
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* str; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVBPrint ;


 int av_bprint_clear (TYPE_1__*) ;
 int avio_feof (int *) ;
 int read_line_to_bprint_escaped (int *,TYPE_1__*) ;

__attribute__((used)) static void get_bprint_line(AVIOContext *s, AVBPrint *bp)
{

    do {
        av_bprint_clear(bp);
        read_line_to_bprint_escaped(s, bp);
    } while (!avio_feof(s) && (bp->str[0] == ';' || bp->str[0] == '#' || bp->str[0] == 0));
}
