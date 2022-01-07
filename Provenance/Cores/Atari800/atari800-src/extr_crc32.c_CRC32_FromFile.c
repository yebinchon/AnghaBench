
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int UBYTE ;
typedef int FILE ;


 int BUF_SIZE ;
 int CRC32_Update (int,int *,size_t) ;
 int feof (int *) ;
 size_t fread (int *,int,int,int *) ;

int CRC32_FromFile(FILE *f, ULONG *result)
{
 UBYTE buf[BUF_SIZE];
 ULONG crc = 0xffffffff;

 for (;;) {
  size_t len = fread(buf, 1, BUF_SIZE, f);
  crc = CRC32_Update(crc, buf, len);
  if (len < BUF_SIZE)
   break;
 }
 *result = ~crc;
 return feof(f);
}
