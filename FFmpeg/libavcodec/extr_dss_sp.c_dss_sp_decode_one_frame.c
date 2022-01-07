
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_8__ {size_t* sf_adaptive_gain; int * sf; int * pitch_lag; } ;
struct TYPE_9__ {int ** working_buffer; int * lpc_filter; int * vector_buf; int err_buf2; int filter; int * history; TYPE_1__ fparam; } ;
typedef TYPE_2__ DssSpContext ;


 int SUBFRAMES ;
 int dss_sp_32to16bit (int *,int *,int) ;
 int * dss_sp_adaptive_gain ;
 int dss_sp_add_pulses (int *,int *) ;
 int dss_sp_convert_coeffs (int *,int ) ;
 int dss_sp_gen_exc (int *,int *,int ,int ) ;
 int dss_sp_sf_synthesis (TYPE_2__*,int ,int *,int) ;
 int dss_sp_shift_sq_sub (int ,int ,int *) ;
 int dss_sp_unpack_coeffs (TYPE_2__*,int const*) ;
 int dss_sp_unpack_filter (TYPE_2__*) ;
 int dss_sp_update_buf (int *,int *) ;
 int dss_sp_update_state (TYPE_2__*,int *) ;

__attribute__((used)) static int dss_sp_decode_one_frame(DssSpContext *p,
                                   int16_t *abuf_dst, const uint8_t *abuf_src)
{
    int i, j;

    dss_sp_unpack_coeffs(p, abuf_src);

    dss_sp_unpack_filter(p);

    dss_sp_convert_coeffs(p->lpc_filter, p->filter);

    for (j = 0; j < SUBFRAMES; j++) {
        dss_sp_gen_exc(p->vector_buf, p->history,
                       p->fparam.pitch_lag[j],
                       dss_sp_adaptive_gain[p->fparam.sf_adaptive_gain[j]]);

        dss_sp_add_pulses(p->vector_buf, &p->fparam.sf[j]);

        dss_sp_update_buf(p->vector_buf, p->history);

        for (i = 0; i < 72; i++)
            p->vector_buf[i] = p->history[72 - i];

        dss_sp_shift_sq_sub(p->filter,
                            p->err_buf2, p->vector_buf);

        dss_sp_sf_synthesis(p, p->lpc_filter[0],
                            &p->working_buffer[j][0], 72);
    }

    dss_sp_update_state(p, &p->working_buffer[0][0]);

    dss_sp_32to16bit(abuf_dst,
                     &p->working_buffer[0][0], 264);
    return 0;
}
