
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int u_long ;
struct proc {int dummy; } ;
struct pfioc_iface_64 {int pfiio_esize; char* pfiio_name; int pfiio_flags; int pfiio_size; int pfiio_buffer; } ;
struct pfioc_iface_32 {int pfiio_esize; char* pfiio_name; int pfiio_flags; int pfiio_size; int pfiio_buffer; } ;
struct pfi_uif {int dummy; } ;





 int ENODEV ;
 int VERIFY (int ) ;
 int pfi_clear_flags (char*,int ) ;
 int pfi_get_ifaces (char*,int ,int *) ;
 int pfi_set_flags (char*,int ) ;
 int proc_is64bit (struct proc*) ;

__attribute__((used)) static int
pfioctl_ioc_iface(u_long cmd, struct pfioc_iface_32 *io32,
    struct pfioc_iface_64 *io64, struct proc *p)
{
 int p64 = proc_is64bit(p);
 int error = 0;

 switch (cmd) {
 case 129: {
  user_addr_t buf;
  int esize;

  buf = (p64 ? io64->pfiio_buffer : io32->pfiio_buffer);
  esize = (p64 ? io64->pfiio_esize : io32->pfiio_esize);


  if (esize != sizeof (struct pfi_uif)) {
   error = ENODEV;
   break;
  }
  if (p64)
   io64->pfiio_name[sizeof (io64->pfiio_name) - 1] = '\0';
  else
   io32->pfiio_name[sizeof (io32->pfiio_name) - 1] = '\0';
  error = pfi_get_ifaces(
      p64 ? io64->pfiio_name : io32->pfiio_name, buf,
      p64 ? &io64->pfiio_size : &io32->pfiio_size);
  break;
 }

 case 128: {
  if (p64)
   io64->pfiio_name[sizeof (io64->pfiio_name) - 1] = '\0';
  else
   io32->pfiio_name[sizeof (io32->pfiio_name) - 1] = '\0';

  error = pfi_set_flags(
      p64 ? io64->pfiio_name : io32->pfiio_name,
      p64 ? io64->pfiio_flags : io32->pfiio_flags);
  break;
 }

 case 130: {
  if (p64)
   io64->pfiio_name[sizeof (io64->pfiio_name) - 1] = '\0';
  else
   io32->pfiio_name[sizeof (io32->pfiio_name) - 1] = '\0';

  error = pfi_clear_flags(
      p64 ? io64->pfiio_name : io32->pfiio_name,
      p64 ? io64->pfiio_flags : io32->pfiio_flags);
  break;
 }

 default:
  VERIFY(0);

 }

 return (error);
}
