
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;


 int Copy (int*,int ,int) ;

USHORT IpChecksum(void *buf, UINT size)
{
 int sum = 0;
 USHORT *addr = (USHORT *)buf;
 int len = (int)size;
 USHORT *w = addr;
 int nleft = len;
 USHORT answer = 0;

 while (nleft > 1)
 {
  USHORT ww = 0;
  Copy(&ww, w++, sizeof(USHORT));
  sum += ww;
  nleft -= 2;
 }

 if (nleft == 1)
 {
  *(UCHAR *)(&answer) = *(UCHAR *)w;
  sum += answer;
 }

 sum = (sum >> 16) + (sum & 0xffff);
 sum += (sum >> 16);

 answer = ~sum;

 return answer;
}
