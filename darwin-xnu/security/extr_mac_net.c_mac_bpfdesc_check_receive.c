
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;
struct ifnet {int if_label; } ;
struct bpf_d {int dummy; } ;


 int MAC_CHECK (int ,struct bpf_d*,struct label*,struct ifnet*,int ) ;
 int bpfdesc_check_receive ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_shared (struct ifnet*) ;
 struct label* mac_bpfdesc_label_get (struct bpf_d*) ;

int
mac_bpfdesc_check_receive(struct bpf_d *bpf_d, struct ifnet *ifp)
{
 struct label *label;
 int error;

 label = mac_bpfdesc_label_get(bpf_d);
 ifnet_lock_shared(ifp);
 MAC_CHECK(bpfdesc_check_receive, bpf_d, label, ifp,
     ifp->if_label);
 ifnet_lock_done(ifp);

 return (error);
}
