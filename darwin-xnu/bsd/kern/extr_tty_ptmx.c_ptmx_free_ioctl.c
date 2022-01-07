
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptmx_ioctl {int pt_flags; int pt_tty; int * pt_devhandle; } ;
struct TYPE_2__ {int pis_total; int pis_free; struct ptmx_ioctl** pis_ioctl_list; } ;


 int DEVFS_LOCK () ;
 int DEVFS_UNLOCK () ;
 int FREE (struct ptmx_ioctl*,int ) ;
 int M_TTYS ;
 int PF_OPEN_M ;
 int PF_OPEN_S ;
 TYPE_1__ _state ;
 int devfs_remove (int *) ;
 int ttyfree (int ) ;

__attribute__((used)) static int
ptmx_free_ioctl(int minor, int open_flag)
{
 struct ptmx_ioctl *old_ptmx_ioctl = ((void*)0);

 DEVFS_LOCK();

 if (minor < 0 || minor >= _state.pis_total) {
  DEVFS_UNLOCK();
  return (-1);
 }

 _state.pis_ioctl_list[minor]->pt_flags &= ~(open_flag);






 if (!(_state.pis_ioctl_list[minor]->pt_flags & (PF_OPEN_M|PF_OPEN_S))) {

  old_ptmx_ioctl = _state.pis_ioctl_list[ minor];
  _state.pis_ioctl_list[minor] = ((void*)0);
  _state.pis_free++;
 }
 DEVFS_UNLOCK();


 if (old_ptmx_ioctl != ((void*)0)) {






  if (old_ptmx_ioctl->pt_devhandle != ((void*)0))
   devfs_remove(old_ptmx_ioctl->pt_devhandle);
  ttyfree(old_ptmx_ioctl->pt_tty);
  FREE(old_ptmx_ioctl, M_TTYS);
 }

 return (0);
}
