
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BBA_BP ;
 int BBA_GCA ;
 int BBA_GCA_ARXERRB ;
 int BBA_INIT_BP ;
 int BBA_INIT_RHBP ;
 int BBA_INIT_RRP ;
 int BBA_INIT_RWP ;
 int BBA_INIT_TLBP ;
 int BBA_MISC2 ;
 int BBA_MISC2_AUTORCVR ;
 int BBA_NCRA ;
 int BBA_NCRA_SR ;
 int BBA_NCRB ;
 int BBA_NCRB_AB ;
 int BBA_NCRB_CA ;
 int BBA_RHBP ;
 int BBA_RRP ;
 int BBA_RWP ;
 int BBA_TLBP ;
 int bba_out12 (int ,int ) ;
 int bba_out8 (int ,int) ;

__attribute__((used)) static void __bba_recv_init()
{
 bba_out8(BBA_NCRB,(BBA_NCRB_CA|BBA_NCRB_AB));
 bba_out8(BBA_MISC2,(BBA_MISC2_AUTORCVR));

 bba_out12(BBA_TLBP, BBA_INIT_TLBP);
 bba_out12(BBA_BP,BBA_INIT_BP);
 bba_out12(BBA_RWP,BBA_INIT_RWP);
 bba_out12(BBA_RRP,BBA_INIT_RRP);
 bba_out12(BBA_RHBP,BBA_INIT_RHBP);

 bba_out8(BBA_GCA,BBA_GCA_ARXERRB);
 bba_out8(BBA_NCRA,BBA_NCRA_SR);
}
