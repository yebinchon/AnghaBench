
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nstat_src_ref_t ;
struct TYPE_3__ {int ncs_next_srcref; } ;
typedef TYPE_1__ nstat_control_state ;



__attribute__((used)) static nstat_src_ref_t
nstat_control_next_src_ref(
 nstat_control_state *state)
{
 return ++state->ncs_next_srcref;
}
