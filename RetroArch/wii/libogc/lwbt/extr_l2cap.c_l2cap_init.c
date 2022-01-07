
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int btmemb_init (int *) ;
 int * l2cap_active_pcbs ;
 int * l2cap_disconnect_bb_cb ;
 int * l2cap_insegs ;
 int * l2cap_listen_pcbs ;
 int l2cap_listenpcbs ;
 int l2cap_pcbs ;
 int l2cap_segs ;
 int l2cap_sigs ;
 int * l2cap_tmp_inseg ;
 int * l2cap_tmp_pcb ;
 int * l2cap_tmp_sig ;
 int sigid_nxt ;

void l2cap_init()
{
 btmemb_init(&l2cap_pcbs);
 btmemb_init(&l2cap_listenpcbs);
 btmemb_init(&l2cap_sigs);
 btmemb_init(&l2cap_segs);


 l2cap_listen_pcbs = ((void*)0);
 l2cap_active_pcbs = ((void*)0);
 l2cap_tmp_pcb = ((void*)0);
 l2cap_tmp_sig = ((void*)0);
 l2cap_insegs = ((void*)0);
 l2cap_tmp_inseg = ((void*)0);
 l2cap_disconnect_bb_cb = ((void*)0);


 sigid_nxt = 0x00;
}
