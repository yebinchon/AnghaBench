
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {double* volume; scalar_t__ delay_buf_cnt; scalar_t__ delay_size; size_t delay_buf_ptr; TYPE_1__* delay_buf; int transfer_fn; } ;
struct TYPE_8__ {size_t delay_buf_size; } ;
struct TYPE_7__ {scalar_t__* extended_data; } ;
typedef TYPE_2__ MCompandContext ;
typedef TYPE_3__ CompBand ;


 int fabs (double) ;
 double get_volume (int *,double) ;
 int update_volume (TYPE_3__*,int ,int) ;

__attribute__((used)) static int mcompand_channel(MCompandContext *c, CompBand *l, double *ibuf, double *obuf, int len, int ch)
{
    int i;

    for (i = 0; i < len; i++) {
        double level_in_lin, level_out_lin, checkbuf;

        update_volume(l, fabs(ibuf[i]), ch);


        level_in_lin = l->volume[ch];
        level_out_lin = get_volume(&l->transfer_fn, level_in_lin);

        if (c->delay_buf_size <= 0) {
            checkbuf = ibuf[i] * level_out_lin;
            obuf[i] = checkbuf;
        } else {
            double *delay_buf = (double *)l->delay_buf->extended_data[ch];
            if (l->delay_buf_cnt >= l->delay_size) {
                checkbuf =
                    delay_buf[(l->delay_buf_ptr +
                               c->delay_buf_size -
                               l->delay_size) % c->delay_buf_size] * level_out_lin;
                delay_buf[(l->delay_buf_ptr + c->delay_buf_size -
                           l->delay_size) % c->delay_buf_size] = checkbuf;
            }
            if (l->delay_buf_cnt >= c->delay_buf_size) {
                obuf[i] = delay_buf[l->delay_buf_ptr];
            } else {
                l->delay_buf_cnt++;
            }
            delay_buf[l->delay_buf_ptr++] = ibuf[i];
            l->delay_buf_ptr %= c->delay_buf_size;
        }
    }

    return 0;
}
