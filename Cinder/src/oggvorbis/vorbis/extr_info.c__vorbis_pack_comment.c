
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int comments; char** user_comments; int* comment_lengths; } ;
typedef TYPE_1__ vorbis_comment ;
typedef int oggpack_buffer ;


 char* ENCODE_VENDOR_STRING ;
 int _v_writestring (int *,char*,int) ;
 int oggpack_write (int *,int,int) ;
 int strlen (char*) ;

__attribute__((used)) static int _vorbis_pack_comment(oggpack_buffer *opb,vorbis_comment *vc){
  int bytes = strlen(ENCODE_VENDOR_STRING);


  oggpack_write(opb,0x03,8);
  _v_writestring(opb,"vorbis", 6);


  oggpack_write(opb,bytes,32);
  _v_writestring(opb,ENCODE_VENDOR_STRING, bytes);



  oggpack_write(opb,vc->comments,32);
  if(vc->comments){
    int i;
    for(i=0;i<vc->comments;i++){
      if(vc->user_comments[i]){
        oggpack_write(opb,vc->comment_lengths[i],32);
        _v_writestring(opb,vc->user_comments[i], vc->comment_lengths[i]);
      }else{
        oggpack_write(opb,0,32);
      }
    }
  }
  oggpack_write(opb,1,1);

  return(0);
}
