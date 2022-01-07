
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ogg_page ;
struct TYPE_11__ {int granulepos; } ;
typedef TYPE_1__ ogg_packet ;
typedef scalar_t__ ogg_int64_t ;
struct TYPE_12__ {scalar_t__ ready_state; int links; scalar_t__* pcmlengths; scalar_t__* offsets; scalar_t__ offset; scalar_t__* serialnos; int pcm_offset; int current_link; scalar_t__ current_serialno; float bittrack; float samptrack; int os; int vd; int seekable; } ;
typedef TYPE_2__ OggVorbis_File ;


 scalar_t__ CHUNKSIZE ;
 scalar_t__ OPENED ;
 scalar_t__ OV_EBADPACKET ;
 scalar_t__ OV_EFAULT ;
 int OV_EINVAL ;
 int OV_ENOSEEK ;
 scalar_t__ OV_EREAD ;
 scalar_t__ STREAMSET ;
 int _decode_clear (TYPE_2__*) ;
 scalar_t__ _get_next_page (TYPE_2__*,int *,int) ;
 scalar_t__ _get_prev_page (TYPE_2__*,int *) ;
 scalar_t__ _seek_helper (TYPE_2__*,scalar_t__) ;
 int ogg_page_continued (int *) ;
 int ogg_page_granulepos (int *) ;
 scalar_t__ ogg_page_serialno (int *) ;
 scalar_t__ ogg_stream_packetout (int *,int *) ;
 scalar_t__ ogg_stream_packetpeek (int *,TYPE_1__*) ;
 int ogg_stream_pagein (int *,int *) ;
 int ogg_stream_reset_serialno (int *,scalar_t__) ;
 scalar_t__ ov_pcm_total (TYPE_2__*,int) ;
 int ov_raw_seek (TYPE_2__*,scalar_t__) ;
 int vorbis_synthesis_restart (int *) ;

int ov_pcm_seek_page(OggVorbis_File *vf,ogg_int64_t pos){
  int link=-1;
  ogg_int64_t result=0;
  ogg_int64_t total=ov_pcm_total(vf,-1);

  if(vf->ready_state<OPENED)return(OV_EINVAL);
  if(!vf->seekable)return(OV_ENOSEEK);

  if(pos<0 || pos>total)return(OV_EINVAL);


  for(link=vf->links-1;link>=0;link--){
    total-=vf->pcmlengths[link*2+1];
    if(pos>=total)break;
  }
  {
    ogg_int64_t end=vf->offsets[link+1];
    ogg_int64_t begin=vf->offsets[link];
    ogg_int64_t begintime = vf->pcmlengths[link*2];
    ogg_int64_t endtime = vf->pcmlengths[link*2+1]+begintime;
    ogg_int64_t target=pos-total+begintime;
    ogg_int64_t best=begin;

    ogg_page og;
    while(begin<end){
      ogg_int64_t bisect;

      if(end-begin<CHUNKSIZE){
        bisect=begin;
      }else{

        bisect=begin +
          (ogg_int64_t)((double)(target-begintime)*(end-begin)/(endtime-begintime))
          - CHUNKSIZE;
        if(bisect<begin+CHUNKSIZE)
          bisect=begin;
      }

      if(bisect!=vf->offset){
        result=_seek_helper(vf,bisect);
        if(result) goto seek_error;
      }

      while(begin<end){
        result=_get_next_page(vf,&og,end-vf->offset);
        if(result==OV_EREAD) goto seek_error;
        if(result<0){
          if(bisect<=begin+1)
            end=begin;
          else{
            if(bisect==0) goto seek_error;
            bisect-=CHUNKSIZE;
            if(bisect<=begin)bisect=begin+1;
            result=_seek_helper(vf,bisect);
            if(result) goto seek_error;
          }
        }else{
          ogg_int64_t granulepos;

          if(ogg_page_serialno(&og)!=vf->serialnos[link])
            continue;

          granulepos=ogg_page_granulepos(&og);
          if(granulepos==-1)continue;

          if(granulepos<target){
            best=result;
            begin=vf->offset;
            begintime=granulepos;

            if(target-begintime>44100)break;
            bisect=begin;
          }else{
            if(bisect<=begin+1)
              end=begin;
            else{
              if(end==vf->offset){
                end=result;
                bisect-=CHUNKSIZE;
                if(bisect<=begin)bisect=begin+1;
                result=_seek_helper(vf,bisect);
                if(result) goto seek_error;
              }else{
                end=bisect;
                endtime=granulepos;
                break;
              }
            }
          }
        }
      }
    }



    {
      ogg_page og;
      ogg_packet op;


      result=_seek_helper(vf,best);
      vf->pcm_offset=-1;
      if(result) goto seek_error;
      result=_get_next_page(vf,&og,-1);
      if(result<0) goto seek_error;

      if(link!=vf->current_link){

        _decode_clear(vf);

        vf->current_link=link;
        vf->current_serialno=vf->serialnos[link];
        vf->ready_state=STREAMSET;

      }else{
        vorbis_synthesis_restart(&vf->vd);
      }

      ogg_stream_reset_serialno(&vf->os,vf->current_serialno);
      ogg_stream_pagein(&vf->os,&og);


      while(1){
        result=ogg_stream_packetpeek(&vf->os,&op);
        if(result==0){





          result=_seek_helper(vf,best);
          if(result<0) goto seek_error;

          while(1){
            result=_get_prev_page(vf,&og);
            if(result<0) goto seek_error;
            if(ogg_page_serialno(&og)==vf->current_serialno &&
               (ogg_page_granulepos(&og)>-1 ||
                !ogg_page_continued(&og))){
              return ov_raw_seek(vf,result);
            }
            vf->offset=result;
          }
        }
        if(result<0){
          result = OV_EBADPACKET;
          goto seek_error;
        }
        if(op.granulepos!=-1){
          vf->pcm_offset=op.granulepos-vf->pcmlengths[vf->current_link*2];
          if(vf->pcm_offset<0)vf->pcm_offset=0;
          vf->pcm_offset+=total;
          break;
        }else
          result=ogg_stream_packetout(&vf->os,((void*)0));
      }
    }
  }


  if(vf->pcm_offset>pos || pos>ov_pcm_total(vf,-1)){
    result=OV_EFAULT;
    goto seek_error;
  }
  vf->bittrack=0.f;
  vf->samptrack=0.f;
  return(0);

 seek_error:

  vf->pcm_offset=-1;
  _decode_clear(vf);
  return (int)result;
}
