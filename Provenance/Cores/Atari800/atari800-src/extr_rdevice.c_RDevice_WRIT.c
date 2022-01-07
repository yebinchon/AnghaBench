
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ClrN ;
 int CPU_SetN ;
 int CPU_regA ;
 int CPU_regY ;
 int DBG_APRINT (char*) ;
 int Log_print (char*) ;
 scalar_t__ RDevice_serial_enabled ;
 int atoi (char*) ;
 int bufend ;
 unsigned char* bufout ;
 char* command_buf ;
 size_t command_end ;
 scalar_t__ connected ;
 int dc_write_serial (unsigned char) ;
 scalar_t__ linefeeds ;
 int open_connection (char*,int) ;
 int perror (char*) ;
 int rdev_fd ;
 int strcat (unsigned char*,char*) ;
 char* strchr (char*,char) ;
 char* strrchr (char*,char) ;
 int trans_cr ;
 scalar_t__ translation ;
 int write (int ,char*,int) ;

void RDevice_WRIT(void)
{
  unsigned char out_char;




  CPU_regY = 1;
  CPU_ClrN;




  if(translation)
  {
    if(CPU_regA == 0x9b)
    {
      out_char = 0x0d;
      if(linefeeds)
      {
        if((RDevice_serial_enabled == 0) && (connected == 0))
        {
          bufend++;
          bufout[bufend-1] = out_char;
          bufout[bufend] = 0;

          command_end = 0;
          command_buf[command_end] = 0;
          strcat(bufout, "OK\r\n");
          bufend += 4;

        }
        else
        {

          write(rdev_fd, (char *)&out_char, 1);



        }
        out_char = 0x0a;
      }
    }
  }
  else
  {
    out_char = CPU_regA;
  }


  if(connected && trans_cr && (out_char == 0x0d))
  {
    out_char = 0x0a;
  }
    if((connected) && (write(rdev_fd, (char *)&out_char, 1) < 1))
    {
      perror("write");
      DBG_APRINT("R*: ERROR on write.");
      CPU_SetN;
      CPU_regY = 135;

    }
  CPU_regA = 1;
}
