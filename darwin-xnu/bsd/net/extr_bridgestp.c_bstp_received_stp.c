
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_len; } ;
struct bstp_tcn_unit {int tu_message_type; } ;
struct bstp_tbpdu {int tbu_bpdutype; } ;
struct bstp_state {int dummy; } ;
struct bstp_config_unit {int dummy; } ;
struct bstp_port {struct bstp_config_unit bp_msg_cu; } ;
struct bstp_cbpdu {int dummy; } ;


 int BSTP_BPDU_STP_LEN ;


 int bstp_decode_bpdu (struct bstp_port*,struct bstp_cbpdu*,struct bstp_config_unit*) ;
 int bstp_received_bpdu (struct bstp_state*,struct bstp_port*,struct bstp_config_unit*) ;
 int bstp_received_tcn (struct bstp_state*,struct bstp_port*,struct bstp_tcn_unit*) ;
 int caddr_t ;
 struct mbuf* m_pullup (struct mbuf*,int ) ;
 int memcpy (struct bstp_cbpdu*,int ,int ) ;
 int mtod (struct mbuf*,int ) ;

__attribute__((used)) static void
bstp_received_stp(struct bstp_state *bs, struct bstp_port *bp,
    struct mbuf **mp, struct bstp_tbpdu *tpdu)
{
 struct bstp_cbpdu cpdu;
 struct bstp_config_unit *cu = &bp->bp_msg_cu;
 struct bstp_tcn_unit tu;

 switch (tpdu->tbu_bpdutype) {
 case 128:
  tu.tu_message_type = tpdu->tbu_bpdutype;
  bstp_received_tcn(bs, bp, &tu);
  break;
 case 129:
  if ((*mp)->m_len < BSTP_BPDU_STP_LEN &&
      (*mp = m_pullup(*mp, BSTP_BPDU_STP_LEN)) == ((void*)0))
   return;
  memcpy(&cpdu, mtod(*mp, caddr_t), BSTP_BPDU_STP_LEN);

  bstp_decode_bpdu(bp, &cpdu, cu);
  bstp_received_bpdu(bs, bp, cu);
  break;
 }
}
