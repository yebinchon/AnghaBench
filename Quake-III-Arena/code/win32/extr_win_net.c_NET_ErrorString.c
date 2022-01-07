
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WSAGetLastError () ;
char *NET_ErrorString( void ) {
 int code;

 code = WSAGetLastError();
 switch( code ) {
 case 157: return "WSAEINTR";
 case 166: return "WSAEBADF";
 case 171: return "WSAEACCES";
 case 161: return "WSAEDISCON";
 case 160: return "WSAEFAULT";
 case 156: return "WSAEINVAL";
 case 153: return "WSAEMFILE";
 case 135: return "WSAEWOULDBLOCK";
 case 158: return "WSAEINPROGRESS";
 case 167: return "WSAEALREADY";
 case 144: return "WSAENOTSOCK";
 case 162: return "WSAEDESTADDRREQ";
 case 152: return "WSAEMSGSIZE";
 case 140: return "WSAEPROTOTYPE";
 case 146: return "WSAENOPROTOOPT";
 case 141: return "WSAEPROTONOSUPPORT";
 case 138: return "WSAESOCKTNOSUPPORT";
 case 143: return "WSAEOPNOTSUPP";
 case 142: return "WSAEPFNOSUPPORT";
 case 168: return "WSAEAFNOSUPPORT";
 case 170: return "WSAEADDRINUSE";
 case 169: return "WSAEADDRNOTAVAIL";
 case 150: return "WSAENETDOWN";
 case 148: return "WSAENETUNREACH";
 case 149: return "WSAENETRESET";
 case 165: return "WSWSAECONNABORTEDAEINTR";
 case 163: return "WSAECONNRESET";
 case 147: return "WSAENOBUFS";
 case 155: return "WSAEISCONN";
 case 145: return "WSAENOTCONN";
 case 139: return "WSAESHUTDOWN";
 case 136: return "WSAETOOMANYREFS";
 case 137: return "WSAETIMEDOUT";
 case 164: return "WSAECONNREFUSED";
 case 154: return "WSAELOOP";
 case 151: return "WSAENAMETOOLONG";
 case 159: return "WSAEHOSTDOWN";
 case 130: return "WSASYSNOTREADY";
 case 128: return "WSAVERNOTSUPPORTED";
 case 133: return "WSANOTINITIALISED";
 case 134: return "WSAHOST_NOT_FOUND";
 case 129: return "WSATRY_AGAIN";
 case 131: return "WSANO_RECOVERY";
 case 132: return "WSANO_DATA";
 default: return "NO ERROR";
 }
}
