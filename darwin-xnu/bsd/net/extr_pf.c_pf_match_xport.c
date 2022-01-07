
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union pf_state_xport {int port; int spi; int call_id; } ;
struct TYPE_2__ {int * port; int op; } ;
union pf_rule_xport {TYPE_1__ range; int spi; int call_id; } ;
typedef int u_int8_t ;
 int PF_GRE_PPTP_VARIANT ;
 int pf_match_port (int ,int ,int ,int ) ;

int
pf_match_xport(u_int8_t proto, u_int8_t proto_variant, union pf_rule_xport *rx,
    union pf_state_xport *sx)
{
 int d = !0;

 if (sx) {
  switch (proto) {
  case 132:
   if (proto_variant == PF_GRE_PPTP_VARIANT)
    d = (rx->call_id == sx->call_id);
   break;

  case 133:
   d = (rx->spi == sx->spi);
   break;

  case 129:
  case 128:
  case 131:
  case 130:
   if (rx->range.op)
    d = pf_match_port(rx->range.op,
        rx->range.port[0], rx->range.port[1],
        sx->port);
   break;

  default:
   break;
  }
 }

 return (d);
}
