
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vorbis_info ;
typedef int ogg_page ;
typedef int ogg_packet ;
typedef scalar_t__ ogg_int64_t ;
struct TYPE_7__ {int serialno; } ;
struct TYPE_6__ {TYPE_2__ os; } ;
typedef TYPE_1__ OggVorbis_File ;


 scalar_t__ _get_next_page (TYPE_1__*,int *,int) ;
 scalar_t__ ogg_page_bos (int *) ;
 int ogg_page_granulepos (int *) ;
 int ogg_page_serialno (int *) ;
 int ogg_stream_packetout (TYPE_2__*,int *) ;
 int ogg_stream_pagein (TYPE_2__*,int *) ;
 long vorbis_packet_blocksize (int *,int *) ;

__attribute__((used)) static ogg_int64_t _initial_pcmoffset(OggVorbis_File *vf, vorbis_info *vi){
  ogg_page og;
  ogg_int64_t accumulated=0;
  long lastblock=-1;
  int result;
  int serialno = vf->os.serialno;

  while(1){
    ogg_packet op;
    if(_get_next_page(vf,&og,-1)<0)
      break;

    if(ogg_page_bos(&og)) break;
    if(ogg_page_serialno(&og)!=serialno) continue;


    ogg_stream_pagein(&vf->os,&og);
    while((result=ogg_stream_packetout(&vf->os,&op))){
      if(result>0){
        long thisblock=vorbis_packet_blocksize(vi,&op);
        if(lastblock!=-1)
          accumulated+=(lastblock+thisblock)>>2;
        lastblock=thisblock;
      }
    }

    if(ogg_page_granulepos(&og)!=-1){

      accumulated= ogg_page_granulepos(&og)-accumulated;
      break;
    }
  }



  if(accumulated<0)accumulated=0;

  return accumulated;
}
