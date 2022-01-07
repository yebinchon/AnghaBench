
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int serverInfo_t ;
struct TYPE_6__ {int port; int * ip; } ;
typedef TYPE_1__ serverAddress_t ;
typedef int netadr_t ;
struct TYPE_7__ {char* data; int cursize; } ;
typedef TYPE_2__ msg_t ;
typedef char byte ;
struct TYPE_8__ {int numglobalservers; int numGlobalServerAddresses; int nummplayerservers; scalar_t__ masterNum; TYPE_1__* globalServerAddresses; int * mplayerServers; int * globalServers; } ;


 int BigShort (int) ;
 int CL_InitServerInfo (int *,TYPE_1__*) ;
 int Com_DPrintf (char*,int,int ,int ,int ,int ,int) ;
 int Com_Printf (char*,...) ;
 int MAX_GLOBAL_SERVERS ;
 int MAX_OTHER_SERVERS ;
 int MAX_SERVERSPERPACKET ;
 TYPE_3__ cls ;

void CL_ServersResponsePacket( netadr_t from, msg_t *msg ) {
 int i, count, max, total;
 serverAddress_t addresses[MAX_SERVERSPERPACKET];
 int numservers;
 byte* buffptr;
 byte* buffend;

 Com_Printf("CL_ServersResponsePacket\n");

 if (cls.numglobalservers == -1) {

  cls.numglobalservers = 0;
  cls.numGlobalServerAddresses = 0;
 }

 if (cls.nummplayerservers == -1) {
  cls.nummplayerservers = 0;
 }


 numservers = 0;
 buffptr = msg->data;
 buffend = buffptr + msg->cursize;
 while (buffptr+1 < buffend) {

  do {
   if (*buffptr++ == '\\')
    break;
  }
  while (buffptr < buffend);

  if ( buffptr >= buffend - 6 ) {
   break;
  }


  addresses[numservers].ip[0] = *buffptr++;
  addresses[numservers].ip[1] = *buffptr++;
  addresses[numservers].ip[2] = *buffptr++;
  addresses[numservers].ip[3] = *buffptr++;


  addresses[numservers].port = (*buffptr++)<<8;
  addresses[numservers].port += *buffptr++;
  addresses[numservers].port = BigShort( addresses[numservers].port );


  if (*buffptr != '\\') {
   break;
  }

  Com_DPrintf( "server: %d ip: %d.%d.%d.%d:%d\n",numservers,
    addresses[numservers].ip[0],
    addresses[numservers].ip[1],
    addresses[numservers].ip[2],
    addresses[numservers].ip[3],
    addresses[numservers].port );

  numservers++;
  if (numservers >= MAX_SERVERSPERPACKET) {
   break;
  }


  if (buffptr[1] == 'E' && buffptr[2] == 'O' && buffptr[3] == 'T') {
   break;
  }
 }

 if (cls.masterNum == 0) {
  count = cls.numglobalservers;
  max = MAX_GLOBAL_SERVERS;
 } else {
  count = cls.nummplayerservers;
  max = MAX_OTHER_SERVERS;
 }

 for (i = 0; i < numservers && count < max; i++) {

  serverInfo_t *server = (cls.masterNum == 0) ? &cls.globalServers[count] : &cls.mplayerServers[count];

  CL_InitServerInfo( server, &addresses[i] );

  count++;
 }


 if (cls.masterNum == 0) {
  if ( cls.numGlobalServerAddresses < MAX_GLOBAL_SERVERS ) {

   for (; i < numservers && count >= max; i++) {
    serverAddress_t *addr;

    addr = &cls.globalServerAddresses[cls.numGlobalServerAddresses++];
    addr->ip[0] = addresses[i].ip[0];
    addr->ip[1] = addresses[i].ip[1];
    addr->ip[2] = addresses[i].ip[2];
    addr->ip[3] = addresses[i].ip[3];
    addr->port = addresses[i].port;
   }
  }
 }

 if (cls.masterNum == 0) {
  cls.numglobalservers = count;
  total = count + cls.numGlobalServerAddresses;
 } else {
  cls.nummplayerservers = count;
  total = count;
 }

 Com_Printf("%d servers parsed (total %d)\n", numservers, total);
}
