
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int compensation_distance; int dst_incr; int ideal_dst_incr; int dst_incr_div; int src_incr; int dst_incr_mod; } ;
typedef TYPE_1__ ResampleContext ;


 int rebuild_filter_bank_with_compensation (TYPE_1__*) ;

__attribute__((used)) static int set_compensation(ResampleContext *c, int sample_delta, int compensation_distance){
    int ret;

    if (compensation_distance && sample_delta) {
        ret = rebuild_filter_bank_with_compensation(c);
        if (ret < 0)
            return ret;
    }

    c->compensation_distance= compensation_distance;
    if (compensation_distance)
        c->dst_incr = c->ideal_dst_incr - c->ideal_dst_incr * (int64_t)sample_delta / compensation_distance;
    else
        c->dst_incr = c->ideal_dst_incr;

    c->dst_incr_div = c->dst_incr / c->src_incr;
    c->dst_incr_mod = c->dst_incr % c->src_incr;

    return 0;
}
