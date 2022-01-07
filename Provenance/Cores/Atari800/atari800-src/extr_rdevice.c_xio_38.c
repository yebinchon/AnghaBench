
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_cflag; } ;


 int CPU_ClrN ;
 int CPU_regA ;
 int CPU_regY ;
 int DBG_APRINT (char*) ;
 int Devices_ICAX1Z ;
 int PARENB ;
 int PARODD ;
 int Peek (int ) ;
 scalar_t__ RDevice_serial_enabled ;
 int TCSANOW ;
 int linefeeds ;
 int rdev_fd ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 int translation ;

__attribute__((used)) static void xio_38(void)
{
  int aux1;




  CPU_regA = 1;
  CPU_regY = 1;
  CPU_ClrN;

  aux1 = Peek(Devices_ICAX1Z);
  if(aux1 & 0x20)
  {
    DBG_APRINT("R*: No ATASCII/ASCII TRANSLATION");
    translation = 0;
  }
  else
  {
    translation = 1;
  }

  if(aux1 & 0x40)
  {
    DBG_APRINT("R*: Append Line Feeds");
    linefeeds = 1;
  }
  else
  {
    linefeeds = 0;
  }

}
