
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t prog_conf; int nb_channels; int nb_programs; size_t fr_code; size_t fr_code_orig; int avctx; int gb; void** end_gain; void** begin_gain; void** rev_id; void* meter_size; void* mtd_ext_size; void** ch_size; } ;
typedef TYPE_1__ DBEContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 size_t MAX_PROG_CONF ;
 int av_log (int ,int ,char*) ;
 int convert_input (TYPE_1__*,int,int) ;
 void* get_bits (int *,int) ;
 scalar_t__ get_bits_left (int *) ;
 int* nb_channels_tab ;
 int* nb_programs_tab ;
 int parse_key (TYPE_1__*) ;
 int * sample_rate_tab ;
 int skip_bits (int *,int) ;
 int skip_bits1 (int *) ;
 int skip_bits_long (int *,int) ;
 int skip_input (TYPE_1__*,int) ;

__attribute__((used)) static int parse_metadata(DBEContext *s)
{
    int i, ret, key, mtd_size;

    if ((key = parse_key(s)) < 0)
        return key;
    if ((ret = convert_input(s, 1, key)) < 0)
        return ret;

    skip_bits(&s->gb, 4);
    mtd_size = get_bits(&s->gb, 10);
    if (!mtd_size) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid metadata size\n");
        return AVERROR_INVALIDDATA;
    }

    if ((ret = convert_input(s, mtd_size, key)) < 0)
        return ret;

    skip_bits(&s->gb, 14);
    s->prog_conf = get_bits(&s->gb, 6);
    if (s->prog_conf > MAX_PROG_CONF) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid program configuration\n");
        return AVERROR_INVALIDDATA;
    }

    s->nb_channels = nb_channels_tab[s->prog_conf];
    s->nb_programs = nb_programs_tab[s->prog_conf];

    s->fr_code = get_bits(&s->gb, 4);
    s->fr_code_orig = get_bits(&s->gb, 4);
    if (!sample_rate_tab[s->fr_code] ||
        !sample_rate_tab[s->fr_code_orig]) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid frame rate code\n");
        return AVERROR_INVALIDDATA;
    }

    skip_bits_long(&s->gb, 88);
    for (i = 0; i < s->nb_channels; i++)
        s->ch_size[i] = get_bits(&s->gb, 10);
    s->mtd_ext_size = get_bits(&s->gb, 8);
    s->meter_size = get_bits(&s->gb, 8);

    skip_bits_long(&s->gb, 10 * s->nb_programs);
    for (i = 0; i < s->nb_channels; i++) {
        s->rev_id[i] = get_bits(&s->gb, 4);
        skip_bits1(&s->gb);
        s->begin_gain[i] = get_bits(&s->gb, 10);
        s->end_gain[i] = get_bits(&s->gb, 10);
    }

    if (get_bits_left(&s->gb) < 0) {
        av_log(s->avctx, AV_LOG_ERROR, "Read past end of metadata\n");
        return AVERROR_INVALIDDATA;
    }

    return skip_input(s, mtd_size + 1);
}
