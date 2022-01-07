
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int dummy; } ;
typedef int errno_t ;
typedef int bpf_tap_mode ;
typedef int * bpf_packet_func ;
struct TYPE_2__ {int bpf_mode; int * bpf_callback; } ;






 int VERIFY (int) ;
 struct ifnet* lo_ifp ;
 TYPE_1__* lo_statics ;

__attribute__((used)) static errno_t
lo_set_bpf_tap(struct ifnet *ifp, bpf_tap_mode mode,
    bpf_packet_func bpf_callback)
{
 VERIFY(ifp == lo_ifp);

 lo_statics[0].bpf_mode = mode;

 switch (mode) {
  case 131:
  case 130:
   lo_statics[0].bpf_callback = ((void*)0);
   break;

  case 128:
  case 129:
   lo_statics[0].bpf_callback = bpf_callback;
   break;
 }

 return (0);
}
