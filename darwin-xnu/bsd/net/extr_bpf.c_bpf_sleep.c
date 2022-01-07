
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct bpf_d {int dummy; } ;
typedef int caddr_t ;


 int NSEC_PER_SEC ;
 int bpf_mlock ;
 int clock_interval_to_deadline (int,int,int *) ;
 int hz ;
 int msleep1 (int ,int ,int,char const*,int ) ;

__attribute__((used)) static int
bpf_sleep(struct bpf_d *d, int pri, const char *wmesg, int timo)
{
 u_int64_t abstime = 0;

 if (timo != 0)
  clock_interval_to_deadline(timo, NSEC_PER_SEC / hz, &abstime);

 return (msleep1((caddr_t)d, bpf_mlock, pri, wmesg, abstime));
}
