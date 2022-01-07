
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;


 int Atari800_os_version ;
 int BINLOAD_loading_basic ;
 int Devices_E_Read ;
 int Devices_E_Write ;
 int Devices_IgnoreReady ;
 int Devices_K_Read ;
 int Devices_P_Close ;
 int Devices_P_Init ;
 int Devices_P_Open ;
 int Devices_P_Status ;
 int Devices_P_Write ;
 int Devices_TABLE_CLOS ;
 int Devices_TABLE_INIT ;
 int Devices_TABLE_OPEN ;
 int Devices_TABLE_READ ;
 int Devices_TABLE_STAT ;
 int Devices_TABLE_WRIT ;
 int Devices_enable_p_patch ;
 int ESC_AddEscRts (int,int ,int ) ;
 int ESC_AddEscRts2 (int,int ,int ) ;
 int ESC_EHREAD ;
 int ESC_EHWRIT ;
 int ESC_KHREAD ;
 int ESC_PHCLOS ;
 int ESC_PHINIT ;
 int ESC_PHOPEN ;
 int ESC_PHSTAT ;
 int ESC_PHWRIT ;
 int ESC_Remove (int ) ;
 int FALSE ;
 int MEMORY_dGetByte (int) ;
 int MEMORY_dGetWord (int) ;
 int TRUE ;
 int ehclos_addr ;
 int ehopen_addr ;
 int ehread_addr ;
 int ehwrit_addr ;
 int ready_prompt ;
 int ready_ptr ;

int Devices_PatchOS(void)
{
 UWORD addr;
 int i;
 int patched = FALSE;

 switch (Atari800_os_version) {
 case 140:
 case 139:
 case 130:
 case 143:
  addr = 0xf0e3;
  break;
 case 142:
  addr = 0xc4fa;
  break;
 case 141:
  addr = 0xc479;
  break;
 case 138:
  addr = 0xc43c;
  break;
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 128:
  addr = 0xc42e;
  break;
 case 132:
  addr = 0xc42c;
  break;
 case 131:
  addr = 0xc43b;
  break;
 case 129:
  addr = 0xc3eb;
  break;
 default:
  return FALSE;
 }

 for (i = 0; i < 5; i++) {
  UWORD devtab = MEMORY_dGetWord(addr + 1);
  switch (MEMORY_dGetByte(addr)) {
  case 'E':
   if (BINLOAD_loading_basic) {
    ehopen_addr = MEMORY_dGetWord(devtab + Devices_TABLE_OPEN) + 1;
    ehclos_addr = MEMORY_dGetWord(devtab + Devices_TABLE_CLOS) + 1;
    ehread_addr = MEMORY_dGetWord(devtab + Devices_TABLE_READ) + 1;
    ehwrit_addr = MEMORY_dGetWord(devtab + Devices_TABLE_WRIT) + 1;
    ready_ptr = ready_prompt;
    ESC_AddEscRts(ehwrit_addr, ESC_EHWRIT, Devices_IgnoreReady);
    patched = TRUE;
   }
  default:
   break;
  }
  addr += 3;
 }
 return patched;
}
