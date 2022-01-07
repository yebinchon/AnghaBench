
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int oggbyte_buffer ;
struct TYPE_3__ {int header; } ;
typedef TYPE_1__ ogg_page ;


 int oggbyte_init (int *,int ) ;
 int oggbyte_read1 (int *,int) ;

int ogg_page_eos(ogg_page *og){
  oggbyte_buffer ob;
  oggbyte_init(&ob,og->header);
  return oggbyte_read1(&ob,5)&0x04;
}
