
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnop_ioctl_args {int a_fflag; int a_context; int a_data; int a_command; TYPE_2__* a_vp; } ;
struct fileproc {struct fileglob* f_fglob; } ;
struct fileglob {void* fg_data; } ;
typedef void* caddr_t ;
struct TYPE_4__ {TYPE_1__* v_fifoinfo; } ;
struct TYPE_3__ {scalar_t__ fi_writesock; scalar_t__ fi_readsock; } ;


 int FIONBIO ;
 int FREAD ;
 int FWRITE ;
 int bzero (struct fileproc*,int) ;
 int soo_ioctl (struct fileproc*,int ,int ,int ) ;

int
fifo_ioctl(struct vnop_ioctl_args *ap)
{
 struct fileproc filetmp;
 struct fileglob filefg;
 int error;

 if (ap->a_command == FIONBIO)
  return (0);
 bzero(&filetmp, sizeof(struct fileproc));
 filetmp.f_fglob = &filefg;
 if (ap->a_fflag & FREAD) {
  filetmp.f_fglob->fg_data = (caddr_t)ap->a_vp->v_fifoinfo->fi_readsock;
  error = soo_ioctl(&filetmp, ap->a_command, ap->a_data, ap->a_context);
  if (error)
   return (error);
 }
 if (ap->a_fflag & FWRITE) {
  filetmp.f_fglob->fg_data = (caddr_t)ap->a_vp->v_fifoinfo->fi_writesock;
  error = soo_ioctl(&filetmp, ap->a_command, ap->a_data, ap->a_context);
  if (error)
   return (error);
 }
 return (0);
}
