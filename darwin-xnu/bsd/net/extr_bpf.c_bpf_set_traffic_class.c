
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_d {int bd_traffic_class; } ;


 int EINVAL ;
 int SO_VALID_TC (int) ;

__attribute__((used)) static int
bpf_set_traffic_class(struct bpf_d *d, int tc)
{
 int error = 0;

 if (!SO_VALID_TC(tc))
  error = EINVAL;
 else
  d->bd_traffic_class = tc;

 return (error);
}
