
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_7__ {size_t index; } ;
struct TYPE_6__ {unsigned int mlti_data_size; int * rmst; int rmctx; int mlti_data; } ;
typedef TYPE_1__ PayloadContext ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;


 scalar_t__ MKTAG (char,char,char,char) ;
 int SEEK_SET ;
 int avio_rb16 (int *) ;
 int avio_rb32 (int *) ;
 scalar_t__ avio_rl32 (int *) ;
 int avio_seek (int *,int ,int ) ;
 int avio_skip (int *,int) ;
 scalar_t__ ff_rm_read_mdpr_codecdata (int ,int *,TYPE_2__*,int ,unsigned int,int *) ;
 int ffio_init_context (int *,int ,unsigned int,int ,int *,int *,int *,int *) ;

__attribute__((used)) static int
rdt_load_mdpr (PayloadContext *rdt, AVStream *st, int rule_nr)
{
    AVIOContext pb;
    unsigned int size;
    uint32_t tag;
    if (!rdt->mlti_data)
        return -1;
    ffio_init_context(&pb, rdt->mlti_data, rdt->mlti_data_size, 0,
                  ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    tag = avio_rl32(&pb);
    if (tag == MKTAG('M', 'L', 'T', 'I')) {
        int num, chunk_nr;


        num = avio_rb16(&pb);
        if (rule_nr < 0 || rule_nr >= num)
            return -1;
        avio_skip(&pb, rule_nr * 2);
        chunk_nr = avio_rb16(&pb);
        avio_skip(&pb, (num - 1 - rule_nr) * 2);


        num = avio_rb16(&pb);
        if (chunk_nr >= num)
            return -1;
        while (chunk_nr--)
            avio_skip(&pb, avio_rb32(&pb));
        size = avio_rb32(&pb);
    } else {
        size = rdt->mlti_data_size;
        avio_seek(&pb, 0, SEEK_SET);
    }
    if (ff_rm_read_mdpr_codecdata(rdt->rmctx, &pb, st, rdt->rmst[st->index], size, ((void*)0)) < 0)
        return -1;

    return 0;
}
