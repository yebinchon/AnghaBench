
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct inpcb {int dummy; } ;


 int inp_fc_feedback (struct inpcb*) ;
 struct inpcb* inp_fc_getinp (int ,int ) ;

void
inp_flowadv(uint32_t flowhash)
{
 struct inpcb *inp;

 inp = inp_fc_getinp(flowhash, 0);

 if (inp == ((void*)0))
  return;
 inp_fc_feedback(inp);
}
