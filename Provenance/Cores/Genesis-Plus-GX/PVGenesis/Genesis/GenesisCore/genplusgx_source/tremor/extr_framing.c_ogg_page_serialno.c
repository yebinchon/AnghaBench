
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int oggbyte_buffer ;
typedef int ogg_uint32_t ;
struct TYPE_3__ {int header; } ;
typedef TYPE_1__ ogg_page ;


 int oggbyte_init (int *,int ) ;
 int oggbyte_read4 (int *,int) ;

ogg_uint32_t ogg_page_serialno(ogg_page *og){
  oggbyte_buffer ob;
  oggbyte_init(&ob,og->header);
  return oggbyte_read4(&ob,14);
}
