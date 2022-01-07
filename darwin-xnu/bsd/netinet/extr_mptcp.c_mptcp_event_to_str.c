
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;






__attribute__((used)) static const char *
mptcp_event_to_str(uint32_t event)
{
 const char *c = "UNDEFINED";
 switch (event) {
 case 130:
  c = "MPCE_CLOSE";
  break;
 case 129:
  c = "MPCE_RECV_DATA_ACK";
  break;
 case 128:
  c = "MPCE_RECV_DATA_FIN";
  break;
 }
 return (c);
}
