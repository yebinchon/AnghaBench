
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write (int,...) ;

void outputushort(int num)
{

    static unsigned char buff[5] = { 0, 0, 0, 0, '\n' };
    static char* badbuff = "xxxx\n";


    if (num < 0)
    {
 write(1, badbuff, 5);
    }
    else
    {
 buff[0] = num>>12;
 buff[0] += buff[0] > 9 ? 'a'-10 : '0';
 buff[1] = (num>>8) & 0xf;
 buff[1] += buff[1] > 9 ? 'a'-10 : '0';
 buff[2] = (num>>4) & 0xf;
 buff[2] += buff[2] > 9 ? 'a'-10 : '0';
 buff[3] = num & 0xf;
 buff[3] += buff[3] > 9 ? 'a'-10 : '0';
 write(1, buff, 5);
    }
}
