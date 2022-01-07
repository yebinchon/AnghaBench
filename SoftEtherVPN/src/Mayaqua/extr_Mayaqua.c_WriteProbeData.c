
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int USHORT ;
typedef int UINT ;


 int CalcChecksum16 (void*,int) ;
 int IsProbeEnabled () ;
 int MAX_SIZE ;
 int WriteProbe (char*,int,char*) ;
 int snprintf (char*,int,char*,char*,int,int) ;

void WriteProbeData(char *filename, UINT line, char *str, void *data, UINT size)
{
 char tmp[MAX_SIZE];
 USHORT cs;

 if (IsProbeEnabled() == 0)
 {
  return;
 }


 if (size != 0)
 {
  cs = CalcChecksum16(data, size);
 }
 else
 {
  cs = 0;
 }


 snprintf(tmp, sizeof(tmp), "\"%s\" (Size=%5u, Crc=0x%04X)", str, size, cs);

 WriteProbe(filename, line, tmp);
}
