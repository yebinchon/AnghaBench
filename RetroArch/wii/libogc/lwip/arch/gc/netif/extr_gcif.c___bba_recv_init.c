
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BBA_BP ;
 scalar_t__ BBA_GCA ;
 int BBA_GCA_ARXERRB ;
 int BBA_INIT_BP ;
 int BBA_INIT_RHBP ;
 int BBA_INIT_RRP ;
 int BBA_INIT_RWP ;
 int BBA_INIT_TLBP ;
 scalar_t__ BBA_MISC2 ;
 int BBA_MISC2_AUTORCVR ;
 scalar_t__ BBA_NCRA ;
 int BBA_NCRA_SR ;
 scalar_t__ BBA_NCRB ;
 int BBA_NCRB_2_PACKETS_PER_INT ;
 int BBA_NCRB_AB ;
 int BBA_NCRB_CA ;
 int BBA_RHBP ;
 int BBA_RRP ;
 int BBA_RWP ;
 scalar_t__ BBA_RXINTT ;
 scalar_t__ BBA_SI_ACTRL2 ;
 int BBA_TLBP ;
 int bba_out12 (int ,int ) ;
 int bba_out8 (scalar_t__,int) ;

__attribute__((used)) static void __bba_recv_init()
{
 bba_out8(BBA_NCRB,(BBA_NCRB_AB|BBA_NCRB_CA|BBA_NCRB_2_PACKETS_PER_INT));
 bba_out8(BBA_SI_ACTRL2,0x74);
 bba_out8(BBA_RXINTT, 0x00);
 bba_out8(BBA_RXINTT+1, 0x06);

 bba_out8(BBA_MISC2,BBA_MISC2_AUTORCVR);

 bba_out12(BBA_TLBP, BBA_INIT_TLBP);
 bba_out12(BBA_BP,BBA_INIT_BP);
 bba_out12(BBA_RHBP,BBA_INIT_RHBP);
 bba_out12(BBA_RWP,BBA_INIT_RWP);
 bba_out12(BBA_RRP,BBA_INIT_RRP);

 bba_out8(BBA_GCA,BBA_GCA_ARXERRB);
 bba_out8(BBA_NCRA,BBA_NCRA_SR);
}
