
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int byte ;
struct TYPE_6__ {int numAreas; TYPE_1__* areas; } ;
struct TYPE_5__ {scalar_t__ integer; } ;
struct TYPE_4__ {int floodnum; } ;


 int Com_Memset (int*,int,int) ;
 TYPE_3__ cm ;
 TYPE_2__* cm_noAreas ;

int CM_WriteAreaBits (byte *buffer, int area)
{
 int i;
 int floodnum;
 int bytes;

 bytes = (cm.numAreas+7)>>3;


 if (cm_noAreas->integer || area == -1)



 {
  Com_Memset (buffer, 255, bytes);
 }
 else
 {
  floodnum = cm.areas[area].floodnum;
  for (i=0 ; i<cm.numAreas ; i++)
  {
   if (cm.areas[i].floodnum == floodnum || area == -1)
    buffer[i>>3] |= 1<<(i&7);
  }
 }

 return bytes;
}
