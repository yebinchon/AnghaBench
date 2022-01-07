
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnop_select_args {int a_which; int a_context; int a_wql; TYPE_2__* a_vp; } ;
struct fileproc {struct fileglob* f_fglob; } ;
struct fileglob {void* fg_data; } ;
typedef void* caddr_t ;
struct TYPE_4__ {TYPE_1__* v_fifoinfo; } ;
struct TYPE_3__ {scalar_t__ fi_writesock; scalar_t__ fi_readsock; } ;


 int FREAD ;
 int FWRITE ;
 int bzero (struct fileproc*,int) ;
 int soo_select (struct fileproc*,int,int ,int ) ;

int
fifo_select(struct vnop_select_args *ap)
{
 struct fileproc filetmp;
 struct fileglob filefg;
 int ready;

 bzero(&filetmp, sizeof(struct fileproc));
 filetmp.f_fglob = &filefg;
 if (ap->a_which & FREAD) {
  filetmp.f_fglob->fg_data = (caddr_t)ap->a_vp->v_fifoinfo->fi_readsock;
  ready = soo_select(&filetmp, ap->a_which, ap->a_wql, ap->a_context);
  if (ready)
   return (ready);
 }
 if (ap->a_which & FWRITE) {
  filetmp.f_fglob->fg_data = (caddr_t)ap->a_vp->v_fifoinfo->fi_writesock;
  ready = soo_select(&filetmp, ap->a_which, ap->a_wql, ap->a_context);
  if (ready)
   return (ready);
 }
 return (0);
}
