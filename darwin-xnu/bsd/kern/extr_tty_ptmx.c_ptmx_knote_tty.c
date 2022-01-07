
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct ptmx_ioctl {struct tty* pt_tty; } ;
struct knote {struct ptmx_ioctl* kn_hook; } ;



__attribute__((used)) static struct tty *
ptmx_knote_tty(struct knote *kn)
{
 struct ptmx_ioctl *pti = kn->kn_hook;
 return pti->pt_tty;
}
