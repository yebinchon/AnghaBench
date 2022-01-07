
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct msghdr {int msg_iovlen; scalar_t__ msg_flags; scalar_t__ msg_controllen; int * msg_control; struct iovec* msg_iov; scalar_t__ msg_namelen; int * msg_name; } ;
struct iovec {int iov_len; void* iov_base; } ;
typedef int UINT ;
struct TYPE_4__ {int Socket; int Pcap; int * Tap; scalar_t__ IsRawIpMode; } ;
typedef TYPE_1__ ETH ;


 int Debug (char*,int,int,...) ;
 int EthPutPacketLinuxIpRaw (TYPE_1__*,void*,int) ;
 int Free (void*) ;
 int INVALID_SOCKET ;
 int MAX_PACKET_SIZE ;
 int VLanPutPacket (int *,void*,int) ;
 int errno ;
 int pcap_inject (int ,void*,int) ;
 int pcap_perror (int ,char*) ;
 int sendmsg (int,struct msghdr*,int ) ;
 int write (int,void*,int) ;

void EthPutPacket(ETH *e, void *data, UINT size)
{
 int s, ret;

 if (e == ((void*)0) || data == ((void*)0))
 {
  return;
 }
 if (e->IsRawIpMode)
 {
  EthPutPacketLinuxIpRaw(e, data, size);
  return;
 }
 if (size < 14 || size > MAX_PACKET_SIZE)
 {
  Free(data);
  return;
 }

 if (e->Tap != ((void*)0))
 {


  VLanPutPacket(e->Tap, data, size);

  return;
 }

 s = e->Socket;

 if (s == INVALID_SOCKET)
 {
  Free(data);
  return;
 }
 ret = write(s, data, size);
 if (ret<0)
 {
  Debug("EthPutPacket: ret:%d errno:%d  size:%d\n", ret, errno, size);
 }
 Free(data);
}
