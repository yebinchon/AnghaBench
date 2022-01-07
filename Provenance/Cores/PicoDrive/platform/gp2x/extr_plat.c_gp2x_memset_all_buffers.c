
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* gp2x_screens ;
 int memset (char*,int,int) ;

void gp2x_memset_all_buffers(int offset, int byte, int len)
{
 memset((char *)gp2x_screens[0] + offset, byte, len);
 memset((char *)gp2x_screens[1] + offset, byte, len);
 memset((char *)gp2x_screens[2] + offset, byte, len);
 memset((char *)gp2x_screens[3] + offset, byte, len);
}
