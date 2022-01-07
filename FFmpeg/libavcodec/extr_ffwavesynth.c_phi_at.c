
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ws_interval {int ts_start; int phi0; int dphi0; int ddphi; } ;
typedef int int64_t ;



__attribute__((used)) static uint64_t phi_at(struct ws_interval *in, int64_t ts)
{
    uint64_t dt = ts - in->ts_start;
    uint64_t dt2 = dt & 1 ?
                   dt * ((dt - 1) >> 1) : (dt >> 1) * (dt - 1);
    return in->phi0 + dt * in->dphi0 + dt2 * in->ddphi;
}
