
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mptcp_state_t ;
__attribute__((used)) static const char *
mptcp_state_to_str(mptcp_state_t state)
{
        const char *c = "UNDEFINED";
 switch (state) {
 case 137:
  c = "MPTCPS_CLOSED";
  break;
 case 130:
  c = "MPTCPS_LISTEN";
  break;
 case 134:
  c = "MPTCPS_ESTABLISHED";
  break;
 case 136:
  c = "MPTCPS_CLOSE_WAIT";
  break;
 case 133:
  c = "MPTCPS_FIN_WAIT_1";
  break;
 case 135:
  c = "MPTCPS_CLOSING";
  break;
 case 131:
  c = "MPTCPS_LAST_ACK";
  break;
 case 132:
  c = "MPTCPS_FIN_WAIT_2";
  break;
 case 128:
  c = "MPTCPS_TIME_WAIT";
  break;
 case 129:
  c = "MPTCPS_TERMINATE";
  break;
 }
 return (c);
}
