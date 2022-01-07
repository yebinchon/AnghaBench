
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptmx_ioctl {int dummy; } ;
struct knote {scalar_t__ kn_hook; } ;



__attribute__((used)) static struct ptmx_ioctl *
ptmx_knote_ioctl(struct knote *kn)
{
 return (struct ptmx_ioctl *)kn->kn_hook;
}
