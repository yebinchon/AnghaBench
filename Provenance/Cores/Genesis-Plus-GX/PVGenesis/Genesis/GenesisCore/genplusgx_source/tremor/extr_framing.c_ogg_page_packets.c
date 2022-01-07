
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

int ogg_page_packets(ogg_page *og){
  int i;
  int n;
  int count=0;
  oggbyte_buffer ob;
  oggbyte_init(&ob,og->header);

  n=oggbyte_read1(&ob,26);
  for(i=0;i<n;i++)
    if(oggbyte_read1(&ob,27+i)<255)count++;
  return(count);
}
