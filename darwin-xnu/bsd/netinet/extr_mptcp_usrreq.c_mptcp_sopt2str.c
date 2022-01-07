
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
mptcp_sopt2str(int level, int optname)
{
 switch (level) {
 case 175:
  switch (optname) {
  case 165:
   return ("SO_LINGER");
  case 164:
   return ("SO_LINGER_SEC");
  case 174:
   return ("SO_DEBUG");
  case 167:
   return ("SO_KEEPALIVE");
  case 137:
   return ("SO_USELOOPBACK");
  case 138:
   return ("SO_TYPE");
  case 155:
   return ("SO_NREAD");
  case 154:
   return ("SO_NWRITE");
  case 170:
   return ("SO_ERROR");
  case 143:
   return ("SO_SNDBUF");
  case 149:
   return ("SO_RCVBUF");
  case 142:
   return ("SO_SNDLOWAT");
  case 148:
   return ("SO_RCVLOWAT");
  case 141:
   return ("SO_SNDTIMEO");
  case 147:
   return ("SO_RCVTIMEO");
  case 160:
   return ("SO_NKE");
  case 157:
   return ("SO_NOSIGPIPE");
  case 159:
   return ("SO_NOADDRERR");
  case 144:
   return ("SO_RESTRICTIONS");
  case 166:
   return ("SO_LABEL");
  case 152:
   return ("SO_PEERLABEL");
  case 150:
   return ("SO_RANDOMPORT");
  case 140:
   return ("SO_TRAFFIC_CLASS");
  case 145:
   return ("SO_RECV_TRAFFIC_CLASS");
  case 139:
   return ("SO_TRAFFIC_CLASS_DBG");
  case 151:
   return ("SO_PRIVILEGED_TRAFFIC_CLASS");
  case 173:
   return ("SO_DEFUNCTOK");
  case 168:
   return ("SO_ISDEFUNCT");
  case 153:
   return ("SO_OPPORTUNISTIC");
  case 169:
   return ("SO_FLUSH");
  case 146:
   return ("SO_RECV_ANYIF");
  case 156:
   return ("SO_NOWAKEFROMSLEEP");
  case 158:
   return ("SO_NOAPNFALLBK");
  case 163:
   return ("SO_CELLFALLBACK");
  case 172:
   return ("SO_DELEGATED");
  case 171:
   return ("SO_DELEGATED_UUID");






  }

  break;
 case 179:
  switch (optname) {
  case 130:
   return ("TCP_NODELAY");
  case 133:
   return ("TCP_KEEPALIVE");
  case 131:
   return ("TCP_KEEPINTVL");
  case 132:
   return ("TCP_KEEPCNT");
  case 134:
   return ("TCP_CONNECTIONTIMEOUT");
  case 128:
   return ("TCP_RXT_CONNDROPTIME");
  case 176:
   return ("PERSIST_TIMEOUT");
  case 129:
   return ("NOTSENT_LOWAT");
  case 136:
   return ("ADAPTIVE_READ_TIMEOUT");
  case 135:
   return ("ADAPTIVE_WRITE_TIMEOUT");
  case 177:
   return ("MPTCP_SERVICE_TYPE");
  case 178:
   return ("MPTCP_ALTERNATE_PORT");
  }

  break;
 }

 return ("unknown");
}
