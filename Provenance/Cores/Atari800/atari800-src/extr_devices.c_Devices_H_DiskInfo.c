
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int CPU_ClrN ;
 int CPU_regY ;
 int Devices_GetNumber (int ) ;
 int Devices_ICBLLZ ;
 int FALSE ;
 int Log_print (char*) ;
 int MEMORY_CopyToMem (int*,int ,int) ;
 scalar_t__ MEMORY_dGetWordAligned (int ) ;
 scalar_t__ devbug ;

__attribute__((used)) static void Devices_H_DiskInfo(void)
{
 static UBYTE info[16] = {
  0x20,
  0x00,
  0xff, 0xff,
  0xff, 0xff,
  'H', 'D', 'I', 'S', 'K', '1' , ' ', ' ',
  1,
  1
 };
 int devnum;

 if (devbug)
  Log_print("Get Disk Information Command");

 devnum = Devices_GetNumber(FALSE);
 if (devnum < 0)
  return;

 info[11] = (UBYTE) ('1' + devnum);
 info[15] = (UBYTE) (1 + devnum);
 MEMORY_CopyToMem(info, (UWORD) MEMORY_dGetWordAligned(Devices_ICBLLZ), 16);

 CPU_regY = 1;
 CPU_ClrN;
}
