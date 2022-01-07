
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_SetN ;
 int CPU_regY ;
 int Devices_H_ChangeDirectory () ;
 int Devices_H_Delete () ;
 int Devices_H_DiskInfo () ;
 int Devices_H_FileLength () ;
 int Devices_H_Load (int ) ;
 int Devices_H_Lock () ;
 int Devices_H_MakeDirectory () ;
 int Devices_H_Note () ;
 int Devices_H_Point () ;
 int Devices_H_RemoveDirectory () ;
 int Devices_H_Rename () ;
 int Devices_H_ToAbsolutePath () ;
 int Devices_H_Unlock () ;
 int Devices_ICCOMZ ;
 int FALSE ;
 int Log_print (char*,...) ;
 int MEMORY_dGetByte (int ) ;
 scalar_t__ devbug ;

__attribute__((used)) static void Devices_H_Special(void)
{
 if (devbug)
  Log_print("HHSPEC");

 switch (MEMORY_dGetByte(Devices_ICCOMZ)) {
 case 0x26:
  Devices_H_Note();
  return;
 case 0x25:
  Devices_H_Point();
  return;
 case 0x27:
  Devices_H_FileLength();
  return;
 case 0x28:
  Devices_H_Load(FALSE);
  return;
 case 0x29:
 case 0x2c:
  Devices_H_ChangeDirectory();
  return;
 case 0x2f:
  Devices_H_DiskInfo();
  return;
 case 0x30:
  Devices_H_ToAbsolutePath();
  return;
 case 0xfe:
  if (devbug)
   Log_print("FORMAT Command");
  break;
 default:
  if (devbug)
   Log_print("UNKNOWN Command %02X", MEMORY_dGetByte(Devices_ICCOMZ));
  break;
 }

 CPU_regY = 168;
 CPU_SetN;
}
