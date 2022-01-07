
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 int g_little_endian ;

void CheckEndian()
{
 unsigned short test;
 UCHAR *buf;

 test = 0x1234;
 buf = (UCHAR *)&test;
 if (buf[0] == 0x12)
 {
  g_little_endian = 0;
 }
 else
 {
  g_little_endian = 1;
 }
}
