
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (unsigned int,unsigned int,int) ;
 unsigned int* screens ;

void
R_VideoErase
( unsigned ofs,
  int count )
{





    memcpy (screens[0]+ofs, screens[1]+ofs, count);
}
