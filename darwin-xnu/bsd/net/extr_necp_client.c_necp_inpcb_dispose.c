
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * inp_account; int * inp_domain; } ;
struct inpcb {TYPE_1__ inp_necp_attributes; } ;


 int FREE (int *,int ) ;
 int M_NECP ;
 int necp_inpcb_remove_cb (struct inpcb*) ;

void
necp_inpcb_dispose(struct inpcb *inp)
{
 necp_inpcb_remove_cb(inp);
 if (inp->inp_necp_attributes.inp_domain != ((void*)0)) {
  FREE(inp->inp_necp_attributes.inp_domain, M_NECP);
  inp->inp_necp_attributes.inp_domain = ((void*)0);
 }
 if (inp->inp_necp_attributes.inp_account != ((void*)0)) {
  FREE(inp->inp_necp_attributes.inp_account, M_NECP);
  inp->inp_necp_attributes.inp_account = ((void*)0);
 }
}
