
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int range; int low; } ;
typedef TYPE_1__ CABACContext ;


 int* ff_h264_lps_range ;
 int* ff_h264_mlps_state ;
 int renorm_cabac_encoder (TYPE_1__*) ;

__attribute__((used)) static void put_cabac(CABACContext *c, uint8_t * const state, int bit){
    int RangeLPS= ff_h264_lps_range[2*(c->range&0xC0) + *state];

    if(bit == ((*state)&1)){
        c->range -= RangeLPS;
        *state = ff_h264_mlps_state[128 + *state];
    }else{
        c->low += c->range - RangeLPS;
        c->range = RangeLPS;
        *state= ff_h264_mlps_state[127 - *state];
    }

    renorm_cabac_encoder(c);
}
