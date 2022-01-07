
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inpcb {int inp_flags; TYPE_1__* inp_socket; int inp_flowhash; } ;
struct TYPE_2__ {int so_flags; } ;




 int INPFC_SOLOCKED ;
 int INP_FC_FEEDBACK ;
 int INP_FLOW_CONTROLLED ;
 int INP_FLOW_SUSPENDED ;
 int SOF_SUSPENDED ;
 int SO_FILT_HINT_LOCKED ;
 int SO_FILT_HINT_SUSPEND ;
 int VERIFY (int) ;
 int WNT_RELEASE ;
 scalar_t__ WNT_STOPUSING ;
 scalar_t__ in_pcb_checkstate (struct inpcb*,int ,int) ;
 struct inpcb* inp_fc_getinp (int ,int ) ;
 int soevent (TYPE_1__*,int) ;

int
inp_set_fc_state(struct inpcb *inp, int advcode)
{
 struct inpcb *tmp_inp = ((void*)0);







 if (inp->inp_flags & INP_FC_FEEDBACK)
  return (0);

 inp->inp_flags &= ~(INP_FLOW_CONTROLLED | INP_FLOW_SUSPENDED);
 if ((tmp_inp = inp_fc_getinp(inp->inp_flowhash,
     INPFC_SOLOCKED)) != ((void*)0)) {
  if (in_pcb_checkstate(tmp_inp, WNT_RELEASE, 1) == WNT_STOPUSING)
   return (0);
  VERIFY(tmp_inp == inp);
  switch (advcode) {
  case 129:
   inp->inp_flags |= INP_FLOW_CONTROLLED;
   break;
  case 128:
   inp->inp_flags |= INP_FLOW_SUSPENDED;
   soevent(inp->inp_socket,
       (SO_FILT_HINT_LOCKED | SO_FILT_HINT_SUSPEND));


   inp->inp_socket->so_flags |= SOF_SUSPENDED;
   break;
  }
  return (1);
 }
 return (0);
}
