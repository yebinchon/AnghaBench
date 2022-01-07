
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 int Copy (int*,int*,int) ;

void GenerateEui64Address6(UCHAR *dst, UCHAR *mac)
{

 if (dst == ((void*)0) || mac == ((void*)0))
 {
  return;
 }

 Copy(dst, mac, 3);
 Copy(dst + 5, mac, 3);

 dst[3] = 0xff;
 dst[4] = 0xfe;
 dst[0] = ((~(dst[0] & 0x02)) & 0x02) | (dst[0] & 0xfd);
}
