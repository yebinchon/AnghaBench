
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ ogg_page ;
struct TYPE_19__ {int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ ogg_packet ;
typedef int ogg_int64_t ;
struct TYPE_20__ {int links; int* dataoffsets; int* pcmlengths; int* offsets; int offset; scalar_t__* serialnos; void* vc; void* vi; int os; } ;
typedef TYPE_3__ OggVorbis_File ;


 scalar_t__ _fetch_headers (TYPE_3__*,void*,void*,int *,int *) ;
 int _get_next_page (TYPE_3__*,TYPE_1__*,int) ;
 int _get_prev_page (TYPE_3__*,TYPE_1__*) ;
 void* _ogg_malloc (int) ;
 void* _ogg_realloc (void*,int) ;
 int _seek_helper (TYPE_3__*,int) ;
 int ogg_packet_release (TYPE_2__*) ;
 int ogg_page_granulepos (TYPE_1__*) ;
 int ogg_page_release (TYPE_1__*) ;
 scalar_t__ ogg_page_serialno (TYPE_1__*) ;
 int ogg_stream_packetout (int ,TYPE_2__*) ;
 int ogg_stream_pagein (int ,TYPE_1__*) ;
 int ogg_stream_reset_serialno (int ,scalar_t__) ;
 int vorbis_comment_clear (void*) ;
 int vorbis_info_clear (void*) ;
 long vorbis_packet_blocksize (void*,TYPE_2__*) ;

__attribute__((used)) static void _prefetch_all_headers(OggVorbis_File *vf, ogg_int64_t dataoffset){
  ogg_page og={0,0,0,0};
  int i;
  ogg_int64_t ret;

  vf->vi=_ogg_realloc(vf->vi,vf->links*sizeof(*vf->vi));
  vf->vc=_ogg_realloc(vf->vc,vf->links*sizeof(*vf->vc));
  vf->dataoffsets=_ogg_malloc(vf->links*sizeof(*vf->dataoffsets));
  vf->pcmlengths=_ogg_malloc(vf->links*2*sizeof(*vf->pcmlengths));

  for(i=0;i<vf->links;i++){
    if(i==0){

      vf->dataoffsets[i]=dataoffset;
      _seek_helper(vf,dataoffset);

    }else{



      _seek_helper(vf,vf->offsets[i]);
      if(_fetch_headers(vf,vf->vi+i,vf->vc+i,((void*)0),((void*)0))<0){
     vf->dataoffsets[i]=-1;
      }else{
 vf->dataoffsets[i]=vf->offset;
      }
    }



    if(vf->dataoffsets[i]!=-1){
      ogg_int64_t accumulated=0,pos;
      long lastblock=-1;
      int result;

      ogg_stream_reset_serialno(vf->os,vf->serialnos[i]);

      while(1){
 ogg_packet op={0,0,0,0,0,0};

 ret=_get_next_page(vf,&og,-1);
 if(ret<0)


   break;

 if(ogg_page_serialno(&og)!=vf->serialnos[i])
   break;

 pos=ogg_page_granulepos(&og);


 ogg_stream_pagein(vf->os,&og);
 while((result=ogg_stream_packetout(vf->os,&op))){
   if(result>0){
     long thisblock=vorbis_packet_blocksize(vf->vi+i,&op);
     if(lastblock!=-1)
       accumulated+=(lastblock+thisblock)>>2;
     lastblock=thisblock;
   }
 }
 ogg_packet_release(&op);

 if(pos!=-1){

   accumulated= pos-accumulated;
   break;
 }
      }



      if(accumulated<0)accumulated=0;

      vf->pcmlengths[i*2]=accumulated;
    }



    {
      ogg_int64_t end=vf->offsets[i+1];
      _seek_helper(vf,end);

      while(1){
 ret=_get_prev_page(vf,&og);
 if(ret<0){

   vorbis_info_clear(vf->vi+i);
   vorbis_comment_clear(vf->vc+i);
   break;
 }
 if(ogg_page_granulepos(&og)!=-1){
   vf->pcmlengths[i*2+1]=ogg_page_granulepos(&og)-vf->pcmlengths[i*2];
   break;
 }
 vf->offset=ret;
      }
    }
  }
  ogg_page_release(&og);
}
