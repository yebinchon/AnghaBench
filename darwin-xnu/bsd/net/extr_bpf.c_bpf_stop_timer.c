
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_d {int bd_thread_call; } ;
typedef int boolean_t ;


 int thread_call_cancel (int ) ;

__attribute__((used)) static boolean_t
bpf_stop_timer(struct bpf_d *d)
{
 return (thread_call_cancel(d->bd_thread_call));
}
