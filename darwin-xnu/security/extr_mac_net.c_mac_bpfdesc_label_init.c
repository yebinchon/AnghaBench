
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;
struct bpf_d {int dummy; } ;


 struct label* mac_bpfdesc_label_alloc () ;
 int mac_bpfdesc_label_set (struct bpf_d*,struct label*) ;

void
mac_bpfdesc_label_init(struct bpf_d *bpf_d)
{
 struct label *label;

 label = mac_bpfdesc_label_alloc();
 mac_bpfdesc_label_set(bpf_d, label);
}
