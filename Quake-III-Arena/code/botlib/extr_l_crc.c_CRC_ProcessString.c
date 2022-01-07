
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRC_Init (unsigned short*) ;
 unsigned short CRC_Value (unsigned short) ;
 unsigned short* crctable ;

unsigned short CRC_ProcessString(unsigned char *data, int length)
{
 unsigned short crcvalue;
 int i, ind;

 CRC_Init(&crcvalue);

 for (i = 0; i < length; i++)
 {
  ind = (crcvalue >> 8) ^ data[i];
  if (ind < 0 || ind > 256) ind = 0;
  crcvalue = (crcvalue << 8) ^ crctable[ind];
 }
 return CRC_Value(crcvalue);
}
