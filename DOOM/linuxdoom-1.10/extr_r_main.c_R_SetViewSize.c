
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int setblocks ;
 int setdetail ;
 int setsizeneeded ;

void
R_SetViewSize
( int blocks,
  int detail )
{
    setsizeneeded = 1;
    setblocks = blocks;
    setdetail = detail;
}
