
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_cflag; } ;


 int B110 ;
 int B115200 ;
 int B1200 ;
 int B134 ;
 int B150 ;
 int B19200 ;
 int B230400 ;
 int B2400 ;
 int B300 ;
 int B4800 ;
 int B50 ;
 int B57600 ;
 int B600 ;
 int B75 ;
 int B9600 ;
 int CPU_ClrN ;
 int CPU_regA ;
 int CPU_regY ;
 int CS5 ;
 int CS6 ;
 int CS7 ;
 int CS8 ;
 int CSIZE ;
 int CSTOPB ;
 int Devices_ICAX1Z ;
 int Devices_ICAX2Z ;
 int MEMORY_dGetByte (int ) ;
 scalar_t__ RDevice_serial_enabled ;
 int TCSANOW ;
 int cfsetispeed (struct termios*,int ) ;
 int cfsetospeed (struct termios*,int ) ;
 int dc_set_baud (int) ;
 int rdev_fd ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;

__attribute__((used)) static void xio_36(void)
{
  int aux1, aux2;




  aux1 = MEMORY_dGetByte(Devices_ICAX1Z);
  aux2 = MEMORY_dGetByte(Devices_ICAX2Z);
  CPU_regA = 1;
  CPU_regY = 1;
  CPU_ClrN;
}
