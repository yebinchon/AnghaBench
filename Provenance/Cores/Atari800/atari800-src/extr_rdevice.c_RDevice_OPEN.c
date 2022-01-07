
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ClrN ;
 int CPU_regA ;
 int CPU_regY ;
 int DBG_APRINT (char*) ;
 int Devices_ICAX1Z ;
 int Devices_ICAX2Z ;
 int Devices_ICDNOZ ;
 int MEMORY_dGetByte (int ) ;
 int Peek (int ) ;
 int RDevice_GetInetAddress () ;
 scalar_t__ RDevice_serial_enabled ;
 scalar_t__ bufend ;
 int inetaddress ;
 int open_connection (int ,int) ;
 int open_connection_serial (int) ;

void RDevice_OPEN(void)
{
  int port;
  int direction;
  int devnum;

  CPU_regA = 1;
  CPU_regY = 1;
  CPU_ClrN;

  bufend = 0;

  port = Peek(Devices_ICAX2Z);
  direction = Peek(Devices_ICAX1Z);
  devnum = MEMORY_dGetByte(Devices_ICDNOZ);
  if(direction & 0x04)
  {
    DBG_APRINT("R*: Open for Reading...");
  }

  if(direction & 0x08)
  {
    DBG_APRINT("R*: Open for Writing...");
  }
  if(direction & 0x01)
  {

  }

}
