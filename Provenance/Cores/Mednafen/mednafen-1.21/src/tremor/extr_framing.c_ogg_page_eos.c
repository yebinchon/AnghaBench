
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* header; } ;
typedef TYPE_1__ ogg_page ;



int ogg_page_eos(const ogg_page *og){
  return((int)(og->header[5]&0x04));
}
