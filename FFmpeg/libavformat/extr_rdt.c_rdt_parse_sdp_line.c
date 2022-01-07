
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int nb_streams; TYPE_2__** streams; } ;
struct TYPE_9__ {scalar_t__ id; int index; int first_dts; } ;
struct TYPE_8__ {int nb_rmst; int * rmst; int mlti_data_size; int mlti_data; } ;
typedef TYPE_1__ PayloadContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int atoi (char const*) ;
 int av_reallocp (int **,int) ;
 scalar_t__ av_strstart (char const*,char*,char const**) ;
 int ff_rm_alloc_rmstream () ;
 int memset (int *,int ,int) ;
 int rdt_load_mdpr (TYPE_1__*,TYPE_2__*,int) ;
 int rdt_parse_b64buf (int *,char const*) ;

__attribute__((used)) static int
rdt_parse_sdp_line (AVFormatContext *s, int st_index,
                    PayloadContext *rdt, const char *line)
{
    AVStream *stream = s->streams[st_index];
    const char *p = line;

    if (av_strstart(p, "OpaqueData:buffer;", &p)) {
        rdt->mlti_data = rdt_parse_b64buf(&rdt->mlti_data_size, p);
    } else if (av_strstart(p, "StartTime:integer;", &p))
        stream->first_dts = atoi(p);
    else if (av_strstart(p, "ASMRuleBook:string;", &p)) {
        int n, first = -1;

        for (n = 0; n < s->nb_streams; n++)
            if (s->streams[n]->id == stream->id) {
                int count = s->streams[n]->index + 1, err;
                if (first == -1) first = n;
                if (rdt->nb_rmst < count) {
                    if ((err = av_reallocp(&rdt->rmst,
                                           count * sizeof(*rdt->rmst))) < 0) {
                        rdt->nb_rmst = 0;
                        return err;
                    }
                    memset(rdt->rmst + rdt->nb_rmst, 0,
                           (count - rdt->nb_rmst) * sizeof(*rdt->rmst));
                    rdt->nb_rmst = count;
                }
                rdt->rmst[s->streams[n]->index] = ff_rm_alloc_rmstream();
                if (!rdt->rmst[s->streams[n]->index])
                    return AVERROR(ENOMEM);
                rdt_load_mdpr(rdt, s->streams[n], (n - first) * 2);
           }
    }

    return 0;
}
