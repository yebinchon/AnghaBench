
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int rate; } ;
typedef TYPE_1__ vorbis_info ;
struct TYPE_11__ {int * vendor; } ;
typedef TYPE_2__ vorbis_comment ;
typedef int oggpack_buffer ;
struct TYPE_12__ {int b_o_s; int packet; } ;
typedef TYPE_3__ ogg_packet ;


 int OV_EBADHEADER ;
 int OV_ENOTVORBIS ;
 int _v_readstring (int *,char*,int) ;
 int _vorbis_unpack_books (TYPE_1__*,int *) ;
 int _vorbis_unpack_comment (TYPE_2__*,int *) ;
 int _vorbis_unpack_info (TYPE_1__*,int *) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int oggpack_read (int *,int) ;
 int oggpack_readinit (int *,int ) ;

int vorbis_synthesis_headerin(vorbis_info *vi,vorbis_comment *vc,ogg_packet *op){
  oggpack_buffer opb;

  if(op){
    oggpack_readinit(&opb,op->packet);



    {
      char buffer[6];
      int packtype=oggpack_read(&opb,8);
      memset(buffer,0,6);
      _v_readstring(&opb,buffer,6);
      if(memcmp(buffer,"vorbis",6)){

 return(OV_ENOTVORBIS);
      }
      switch(packtype){
      case 0x01:
 if(!op->b_o_s){

   return(OV_EBADHEADER);
 }
 if(vi->rate!=0){

   return(OV_EBADHEADER);
 }

 return(_vorbis_unpack_info(vi,&opb));

      case 0x03:
 if(vi->rate==0){

   return(OV_EBADHEADER);
 }

 return(_vorbis_unpack_comment(vc,&opb));

      case 0x05:
 if(vi->rate==0 || vc->vendor==((void*)0)){

   return(OV_EBADHEADER);
 }

 return(_vorbis_unpack_books(vi,&opb));

      default:

 return(OV_EBADHEADER);
 break;
      }
    }
  }
  return(OV_EBADHEADER);
}
