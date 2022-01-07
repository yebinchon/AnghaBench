
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int Log_print (char*,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const) ;
 scalar_t__ SIO_OFF ;
 scalar_t__* SIO_drive_status ;
 int* SIO_format_sectorcount ;
 int* SIO_format_sectorsize ;

int SIO_WriteStatusBlock(int unit, const UBYTE *buffer)
{
 int size;






 if (SIO_drive_status[unit] == SIO_OFF)
  return 0;




 size = buffer[6] * 256 + buffer[7];
 if (size == 128 || size == 256)
  SIO_format_sectorsize[unit] = size;

 SIO_format_sectorcount[unit] = buffer[0] * (buffer[2] * 256 + buffer[3]) * (buffer[4] + 1);
 if (SIO_format_sectorcount[unit] < 1 || SIO_format_sectorcount[unit] > 65535)
  SIO_format_sectorcount[unit] = 720;
 return 'C';
}
