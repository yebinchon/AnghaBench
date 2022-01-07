
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SwrContext {double** matrix; double** matrix_flt; int user_in_ch_count; int user_out_ch_count; int rematrix_custom; int user_out_ch_layout; int user_in_ch_layout; scalar_t__ in_convert; } ;


 int AVERROR (int ) ;
 int EINVAL ;
 int av_get_channel_layout_nb_channels (int ) ;
 int memset (double**,int ,int) ;

int swr_set_matrix(struct SwrContext *s, const double *matrix, int stride)
{
    int nb_in, nb_out, in, out;

    if (!s || s->in_convert)
        return AVERROR(EINVAL);
    memset(s->matrix, 0, sizeof(s->matrix));
    memset(s->matrix_flt, 0, sizeof(s->matrix_flt));
    nb_in = (s->user_in_ch_count > 0) ? s->user_in_ch_count :
        av_get_channel_layout_nb_channels(s->user_in_ch_layout);
    nb_out = (s->user_out_ch_count > 0) ? s->user_out_ch_count :
        av_get_channel_layout_nb_channels(s->user_out_ch_layout);
    for (out = 0; out < nb_out; out++) {
        for (in = 0; in < nb_in; in++)
            s->matrix_flt[out][in] = s->matrix[out][in] = matrix[in];
        matrix += stride;
    }
    s->rematrix_custom = 1;
    return 0;
}
