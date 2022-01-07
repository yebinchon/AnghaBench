
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct label {int dummy; } ;
struct bpf_d {int dummy; } ;


 int MAC_PERFORM (int ,struct ucred*,struct bpf_d*,struct label*) ;
 int bpfdesc_label_associate ;
 struct label* mac_bpfdesc_label_get (struct bpf_d*) ;

void
mac_bpfdesc_label_associate(struct ucred *cred, struct bpf_d *bpf_d)
{
 struct label *label;

 label = mac_bpfdesc_label_get(bpf_d);
 MAC_PERFORM(bpfdesc_label_associate, cred, bpf_d, label);
}
