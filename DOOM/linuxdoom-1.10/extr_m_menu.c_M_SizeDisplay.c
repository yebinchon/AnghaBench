
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_SetViewSize (int ,int ) ;
 int detailLevel ;
 int screenSize ;
 int screenblocks ;

void M_SizeDisplay(int choice)
{
    switch(choice)
    {
      case 0:
 if (screenSize > 0)
 {
     screenblocks--;
     screenSize--;
 }
 break;
      case 1:
 if (screenSize < 8)
 {
     screenblocks++;
     screenSize++;
 }
 break;
    }


    R_SetViewSize (screenblocks, detailLevel);
}
