
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int eof_reached; } ;
struct TYPE_6__ {int fc; scalar_t__ ignore_chapters; } ;
typedef TYPE_1__ MOVContext ;
typedef TYPE_2__ AVIOContext ;


 int AV_NOPTS_VALUE ;
 int av_make_q (int,int) ;
 int avio_rb32 (TYPE_2__*) ;
 int avpriv_new_chapter (int ,int,int ,int,int ,int *) ;

__attribute__((used)) static int mov_metadata_hmmt(MOVContext *c, AVIOContext *pb, unsigned len)
{
    int i, n_hmmt;

    if (len < 2)
        return 0;
    if (c->ignore_chapters)
        return 0;

    n_hmmt = avio_rb32(pb);
    for (i = 0; i < n_hmmt && !pb->eof_reached; i++) {
        int moment_time = avio_rb32(pb);
        avpriv_new_chapter(c->fc, i, av_make_q(1, 1000), moment_time, AV_NOPTS_VALUE, ((void*)0));
    }
    return 0;
}
