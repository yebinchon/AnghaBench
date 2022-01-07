
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ev_ret_t ;







__attribute__((used)) static const char *
mptcp_evret2str(ev_ret_t ret)
{
 const char *c = "UNKNOWN";

 switch (ret) {
 case 130:
  c = "MPTS_EVRET_DELETE";
  break;
 case 131:
  c = "MPTS_EVRET_CONNECT_PENDING";
  break;
 case 129:
  c = "MPTS_EVRET_DISCONNECT_FALLBACK";
  break;
 case 128:
  c = "MPTS_EVRET_OK";
  break;
 default:
  break;
 }
 return (c);
}
