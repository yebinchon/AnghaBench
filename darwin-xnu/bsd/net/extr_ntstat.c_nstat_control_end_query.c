
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int16_t ;
typedef int nstat_src ;
struct TYPE_3__ {scalar_t__ ncs_context; } ;
typedef TYPE_1__ nstat_control_state ;
typedef int boolean_t ;


 int NSTAT_MSG_HDR_FLAG_CONTINUATION ;

__attribute__((used)) static u_int16_t
nstat_control_end_query(
    nstat_control_state *state,
    nstat_src *last_src,
    boolean_t partial)
{
 u_int16_t flags = 0;

 if (last_src == ((void*)0) || !partial)
 {






  state->ncs_context = 0;
 }
 else
 {




  flags |= NSTAT_MSG_HDR_FLAG_CONTINUATION;
 }

 return flags;
}
