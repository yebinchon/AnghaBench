
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; scalar_t__ context; } ;
typedef TYPE_1__ nstat_msg_hdr ;
struct TYPE_7__ {scalar_t__ ncs_context; int ncs_seq; } ;
typedef TYPE_2__ nstat_control_state ;
typedef int boolean_t ;


 int EAGAIN ;
 int FALSE ;
 int NSTAT_MSG_HDR_FLAG_CONTINUATION ;
 int TRUE ;
 int nstat_send_error (TYPE_2__*,scalar_t__,int ) ;

__attribute__((used)) static boolean_t
nstat_control_begin_query(
    nstat_control_state *state,
    const nstat_msg_hdr *hdrp)
{
 boolean_t partial = FALSE;

 if (hdrp->flags & NSTAT_MSG_HDR_FLAG_CONTINUATION)
 {

  partial = TRUE;

  if (state->ncs_context != hdrp->context)
  {
   if (state->ncs_context != 0)
    nstat_send_error(state, state->ncs_context, EAGAIN);


   state->ncs_context = hdrp->context;
   state->ncs_seq++;
  }
 }

 return partial;
}
