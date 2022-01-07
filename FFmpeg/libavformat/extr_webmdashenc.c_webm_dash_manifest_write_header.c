
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int nb_as; int is_live; } ;
typedef TYPE_1__ WebMDashMuxContext ;
struct TYPE_11__ {int pb; TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int avio_printf (int ,char*,...) ;
 int free_adaptation_sets (TYPE_2__*) ;
 int get_duration (TYPE_2__*) ;
 int parse_adaptation_sets (TYPE_2__*) ;
 int write_adaptation_set (TYPE_2__*,int) ;
 int write_footer (TYPE_2__*) ;
 int write_header (TYPE_2__*) ;

__attribute__((used)) static int webm_dash_manifest_write_header(AVFormatContext *s)
{
    int i;
    double start = 0.0;
    int ret;
    WebMDashMuxContext *w = s->priv_data;
    ret = parse_adaptation_sets(s);
    if (ret < 0) {
        goto fail;
    }
    ret = write_header(s);
    if (ret < 0) {
        goto fail;
    }
    avio_printf(s->pb, "<Period id=\"0\"");
    avio_printf(s->pb, " start=\"PT%gS\"", start);
    if (!w->is_live) {
        avio_printf(s->pb, " duration=\"PT%gS\"", get_duration(s));
    }
    avio_printf(s->pb, " >\n");

    for (i = 0; i < w->nb_as; i++) {
        ret = write_adaptation_set(s, i);
        if (ret < 0) {
            goto fail;
        }
    }

    avio_printf(s->pb, "</Period>\n");
    write_footer(s);
fail:
    free_adaptation_sets(s);
    return ret < 0 ? ret : 0;
}
