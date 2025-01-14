
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int vorbis_info ;
typedef int vorbis_comment ;
typedef int ogg_uint32_t ;
struct TYPE_17__ {int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ ogg_page ;
struct TYPE_18__ {int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ ogg_packet ;
typedef scalar_t__ ogg_int64_t ;
struct TYPE_20__ {int serialno; } ;
struct TYPE_19__ {int ready_state; TYPE_5__* os; } ;
typedef TYPE_3__ OggVorbis_File ;


 int CHUNKSIZE ;
 int OPENED ;
 int OV_EBADHEADER ;
 int OV_ENOTVORBIS ;
 scalar_t__ OV_EREAD ;
 int STREAMSET ;
 scalar_t__ _get_next_page (TYPE_3__*,TYPE_1__*,int ) ;
 int ogg_packet_release (TYPE_2__*) ;
 int ogg_page_release (TYPE_1__*) ;
 int ogg_page_serialno (TYPE_1__*) ;
 int ogg_stream_packetout (TYPE_5__*,TYPE_2__*) ;
 int ogg_stream_pagein (TYPE_5__*,TYPE_1__*) ;
 int ogg_stream_reset_serialno (TYPE_5__*,int ) ;
 int vorbis_comment_clear (int *) ;
 int vorbis_comment_init (int *) ;
 int vorbis_info_clear (int *) ;
 int vorbis_info_init (int *) ;
 int vorbis_synthesis_headerin (int *,int *,TYPE_2__*) ;

__attribute__((used)) static int _fetch_headers(OggVorbis_File *vf,
     vorbis_info *vi,
     vorbis_comment *vc,
     ogg_uint32_t *serialno,
     ogg_page *og_ptr){
  ogg_page og={0,0,0,0};
  ogg_packet op={0,0,0,0,0,0};
  int i,ret;

  if(!og_ptr){
    ogg_int64_t llret=_get_next_page(vf,&og,CHUNKSIZE);
    if(llret==OV_EREAD)return(OV_EREAD);
    if(llret<0)return OV_ENOTVORBIS;
    og_ptr=&og;
  }

  ogg_stream_reset_serialno(vf->os,ogg_page_serialno(og_ptr));
  if(serialno)*serialno=vf->os->serialno;
  vf->ready_state=STREAMSET;




  vorbis_info_init(vi);
  vorbis_comment_init(vc);

  i=0;
  while(i<3){
    ogg_stream_pagein(vf->os,og_ptr);
    while(i<3){
      int result=ogg_stream_packetout(vf->os,&op);
      if(result==0)break;
      if(result==-1){
 ret=OV_EBADHEADER;
 goto bail_header;
      }
      if((ret=vorbis_synthesis_headerin(vi,vc,&op))){
 goto bail_header;
      }
      i++;
    }
    if(i<3)
      if(_get_next_page(vf,og_ptr,CHUNKSIZE)<0){
 ret=OV_EBADHEADER;
 goto bail_header;
      }
  }

  ogg_packet_release(&op);
  ogg_page_release(&og);
  return 0;

 bail_header:
  ogg_packet_release(&op);
  ogg_page_release(&og);
  vorbis_info_clear(vi);
  vorbis_comment_clear(vc);
  vf->ready_state=OPENED;

  return ret;
}
