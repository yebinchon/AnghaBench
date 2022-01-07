
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int oggpack_buffer ;
struct TYPE_3__ {int b_o_s; int bytes; int packet; } ;
typedef TYPE_1__ ogg_packet ;


 int _v_readstring (int *,char*,int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int oggpack_read (int *,int) ;
 int oggpack_readinit (int *,int ,int ) ;

int vorbis_synthesis_idheader(ogg_packet *op){
  oggpack_buffer opb;
  char buffer[6];

  if(op){
    oggpack_readinit(&opb,op->packet,op->bytes);

    if(!op->b_o_s)
      return(0);

    if(oggpack_read(&opb,8) != 1)
      return 0;

    memset(buffer,0,6);
    _v_readstring(&opb,buffer,6);
    if(memcmp(buffer,"vorbis",6))
      return 0;

    return 1;
  }

  return 0;
}
