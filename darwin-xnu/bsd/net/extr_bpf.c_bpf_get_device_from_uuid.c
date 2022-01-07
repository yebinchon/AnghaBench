
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct bpf_d {int bd_flags; int bd_uuid; } ;


 int BPF_CLOSING ;
 struct bpf_d* BPF_DEV_RESERVED ;
 struct bpf_d** bpf_dtab ;
 unsigned int nbpfilter ;
 scalar_t__ uuid_compare (int ,int ) ;

__attribute__((used)) static struct bpf_d *
bpf_get_device_from_uuid(uuid_t uuid)
{
 unsigned int i;

 for (i = 0; i < nbpfilter; i++) {
  struct bpf_d *d = bpf_dtab[i];

  if (d == ((void*)0) || d == BPF_DEV_RESERVED ||
      (d->bd_flags & BPF_CLOSING) != 0)
   continue;
  if (uuid_compare(uuid, d->bd_uuid) == 0)
   return (d);
 }

 return (((void*)0));
}
