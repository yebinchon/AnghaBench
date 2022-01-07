
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {scalar_t__ kn_hook; } ;
struct bpf_d {int dummy; } ;


 int filt_bpfread_common (struct knote*,struct bpf_d*) ;

__attribute__((used)) static int
filt_bpfread(struct knote *kn, long hint)
{
#pragma unused(hint)
 struct bpf_d *d = (struct bpf_d *)kn->kn_hook;

 return (filt_bpfread_common(kn, d));
}
