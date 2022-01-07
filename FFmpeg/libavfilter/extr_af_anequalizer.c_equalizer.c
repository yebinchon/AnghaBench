
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; int gain; int width; int freq; } ;
typedef TYPE_1__ EqualizatorFilter ;





 int FILTER_ORDER ;
 int butterworth_bp_filter (TYPE_1__*,int ,double,double,int ,double,int ) ;
 double butterworth_compute_bw_gain_db (int ) ;
 int chebyshev1_bp_filter (TYPE_1__*,int ,double,double,int ,double,int ) ;
 double chebyshev1_compute_bw_gain_db (int ) ;
 int chebyshev2_bp_filter (TYPE_1__*,int ,double,double,int ,double,int ) ;
 double chebyshev2_compute_bw_gain_db (int ) ;
 double hz_2_rad (int ,double) ;

__attribute__((used)) static void equalizer(EqualizatorFilter *f, double sample_rate)
{
    double w0 = hz_2_rad(f->freq, sample_rate);
    double wb = hz_2_rad(f->width, sample_rate);
    double bw_gain;

    switch (f->type) {
    case 130:
        bw_gain = butterworth_compute_bw_gain_db(f->gain);
        butterworth_bp_filter(f, FILTER_ORDER, w0, wb, f->gain, bw_gain, 0);
        break;
    case 129:
        bw_gain = chebyshev1_compute_bw_gain_db(f->gain);
        chebyshev1_bp_filter(f, FILTER_ORDER, w0, wb, f->gain, bw_gain, 0);
        break;
    case 128:
        bw_gain = chebyshev2_compute_bw_gain_db(f->gain);
        chebyshev2_bp_filter(f, FILTER_ORDER, w0, wb, f->gain, bw_gain, 0);
        break;
    }

}
