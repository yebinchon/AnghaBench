
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int oggbyte_buffer ;
struct TYPE_3__ {int header; } ;
typedef TYPE_1__ ogg_page ;
typedef int ogg_int64_t ;


 int oggbyte_init (int *,int ) ;
 int oggbyte_read8 (int *,int) ;

ogg_int64_t ogg_page_granulepos(ogg_page *og){
  oggbyte_buffer ob;
  oggbyte_init(&ob,og->header);
  return oggbyte_read8(&ob,6);
}
