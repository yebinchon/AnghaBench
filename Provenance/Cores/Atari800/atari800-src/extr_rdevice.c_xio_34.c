
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;


 int B0 ;
 int CPU_ClrN ;
 int CPU_regA ;
 int CPU_regY ;
 int Devices_ICAX1Z ;
 int MEMORY_dGetByte (int ) ;
 scalar_t__ RDevice_serial_enabled ;
 int TCSANOW ;
 int cfsetispeed (struct termios*,int ) ;
 int cfsetospeed (struct termios*,int ) ;
 int close (int ) ;
 scalar_t__ connected ;
 scalar_t__ do_once ;
 int rdev_fd ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;

__attribute__((used)) static void xio_34(void)
{

  int temp;







  temp = MEMORY_dGetByte(Devices_ICAX1Z);
  if(temp & 0x80)
  {
    if(temp & 0x40)
    {







    }
    else
    {
      if(connected != 0)
      {
        close ( rdev_fd );
        connected = 0;
        do_once = 0;

      }
    }
  }
  CPU_regA = 1;
  CPU_regY = 1;
  CPU_ClrN;

}
