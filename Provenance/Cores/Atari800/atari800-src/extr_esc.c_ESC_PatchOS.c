
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int Atari800_os_version ;
 int CASSETTE_LeaderLoad ;
 int CASSETTE_LeaderSave ;
 int Devices_PatchOS () ;
 int ESC_Add (int,int ,int ) ;
 int ESC_AddEscRts (int,int ,int ) ;
 int ESC_COPENLOAD ;
 int ESC_COPENSAVE ;
 int ESC_Remove (int ) ;
 int ESC_SIOV ;
 scalar_t__ ESC_enable_sio_patch ;
 int MEMORY_dGetByte (int) ;
 int MEMORY_dPutByte (int,int) ;
 int SIO_Handler ;
 int TRUE ;

void ESC_PatchOS(void)
{
 int patched = Devices_PatchOS();
 if (ESC_enable_sio_patch) {
  UWORD addr_l;
  UWORD addr_s;
  UBYTE check_s_0;
  UBYTE check_s_1;

  switch (Atari800_os_version) {
  case 140:
  case 130:
  case 143:
   addr_l = 0xef74;
   addr_s = 0xefbc;
   check_s_0 = 0xa0;
   check_s_1 = 0x80;
   break;
  case 139:
   addr_l = 0xef74;
   addr_s = 0xefbc;
   check_s_0 = 0xa0;
   check_s_1 = 0xc0;
   break;
  case 142:
   addr_l = 0xed47;
   addr_s = 0xed94;
   check_s_0 = 0xa9;
   check_s_1 = 0x03;
   break;
  case 141:
  case 138:
  case 137:
  case 132:
  case 131:
  case 136:
  case 135:
  case 134:
  case 133:
  case 128:
   addr_l = 0xfd13;
   addr_s = 0xfd60;
   check_s_0 = 0xa9;
   check_s_1 = 0x03;
   break;
  case 129:
   addr_l = 0xef74;
   addr_s = 0xefbc;
   check_s_0 = 0xa9;
   check_s_1 = 0x03;
   break;
  default:
   return;
  }

  if (MEMORY_dGetByte(addr_l) == 0xa9 && MEMORY_dGetByte(addr_l + 1) == 0x03
   && MEMORY_dGetByte(addr_l + 2) == 0x8d && MEMORY_dGetByte(addr_l + 3) == 0x2a
   && MEMORY_dGetByte(addr_l + 4) == 0x02
   && MEMORY_dGetByte(addr_s) == check_s_0
   && MEMORY_dGetByte(addr_s + 1) == check_s_1
   && MEMORY_dGetByte(addr_s + 2) == 0x20 && MEMORY_dGetByte(addr_s + 3) == 0x5c
   && MEMORY_dGetByte(addr_s + 4) == 0xe4) {
   ESC_Add(addr_l, ESC_COPENLOAD, CASSETTE_LeaderLoad);
   ESC_Add(addr_s, ESC_COPENSAVE, CASSETTE_LeaderSave);
  }
  ESC_AddEscRts(0xe459, ESC_SIOV, SIO_Handler);
  patched = TRUE;
 }
 else {
  ESC_Remove(ESC_COPENLOAD);
  ESC_Remove(ESC_COPENSAVE);
  ESC_Remove(ESC_SIOV);
 };
 if (patched){
  UWORD addr;
  switch (Atari800_os_version) {
  case 142:
   addr = 0xc3d2;
   break;
  case 141:
   addr = 0xc346;
   break;
  case 138:
   addr = 0xc32b;
   break;
  case 137:
  case 132:
  case 136:
  case 135:
  case 134:
  case 133:
  case 128:
   addr = 0xc31d;
   break;
  case 131:
   addr = 0xc32c;
   break;
  case 129:
   addr = 0xc2e0;
   break;
  default:

   return;
  }

  MEMORY_dPutByte(addr, 0xea);
  MEMORY_dPutByte(addr+1, 0xea);
 }
}
