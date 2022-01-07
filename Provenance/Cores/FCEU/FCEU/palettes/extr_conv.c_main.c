
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int r; int g; int b; } ;


 TYPE_1__* palette ;
 int printf (char*,int,int,int) ;
 int* rp2c04001_colortable ;

main()
{
 int x;
 for(x=0;x<64;x++)
 {


  printf("{0x%02x, 0x%02x, 0x%02x},\n",palette[rp2c04001_colortable[x]&0x3F].r,
     palette[rp2c04001_colortable[x]&0x3F].g,
     palette[rp2c04001_colortable[x]&0x3F].b);
 }
}
