
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vorbis_info ;
typedef int vorbis_comment ;
typedef int ogg_page ;
typedef scalar_t__ ogg_int64_t ;
struct TYPE_9__ {int serialno; } ;
struct TYPE_10__ {scalar_t__ offset; long links; long* offsets; long* serialnos; long* dataoffsets; scalar_t__* pcmlengths; int * vc; int * vi; TYPE_1__ os; } ;
typedef TYPE_2__ OggVorbis_File ;


 scalar_t__ CHUNKSIZE ;
 scalar_t__ OV_EREAD ;
 scalar_t__ _fetch_headers (TYPE_2__*,int *,int *,long**,int*,int *) ;
 scalar_t__ _get_next_page (TYPE_2__*,int *,int) ;
 void* _get_prev_page_serial (TYPE_2__*,long*,int,int*,scalar_t__*) ;
 scalar_t__ _initial_pcmoffset (TYPE_2__*,int *) ;
 int _lookup_page_serialno (int *,long*,int) ;
 scalar_t__ _lookup_serialno (int,long*,int) ;
 int _ogg_free (long*) ;
 void* _ogg_malloc (int) ;
 void* _ogg_realloc (int *,int) ;
 scalar_t__ _seek_helper (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static int _bisect_forward_serialno(OggVorbis_File *vf,
                                    ogg_int64_t begin,
                                    ogg_int64_t searched,
                                    ogg_int64_t end,
                                    ogg_int64_t endgran,
                                    int endserial,
                                    long *currentno_list,
                                    int currentnos,
                                    long m){
  ogg_int64_t pcmoffset;
  ogg_int64_t dataoffset=searched;
  ogg_int64_t endsearched=end;
  ogg_int64_t next=end;
  ogg_int64_t searchgran=-1;
  ogg_page og;
  ogg_int64_t ret,last;
  int serialno = vf->os.serialno;
  if(_lookup_serialno(endserial,currentno_list,currentnos)){






    while(endserial != serialno){
      endserial = serialno;
      vf->offset=_get_prev_page_serial(vf,currentno_list,currentnos,&endserial,&endgran);
    }

    vf->links=m+1;
    if(vf->offsets)_ogg_free(vf->offsets);
    if(vf->serialnos)_ogg_free(vf->serialnos);
    if(vf->dataoffsets)_ogg_free(vf->dataoffsets);

    vf->offsets=_ogg_malloc((vf->links+1)*sizeof(*vf->offsets));
    vf->vi=_ogg_realloc(vf->vi,vf->links*sizeof(*vf->vi));
    vf->vc=_ogg_realloc(vf->vc,vf->links*sizeof(*vf->vc));
    vf->serialnos=_ogg_malloc(vf->links*sizeof(*vf->serialnos));
    vf->dataoffsets=_ogg_malloc(vf->links*sizeof(*vf->dataoffsets));
    vf->pcmlengths=_ogg_malloc(vf->links*2*sizeof(*vf->pcmlengths));

    vf->offsets[m+1]=end;
    vf->offsets[m]=begin;
    vf->pcmlengths[m*2+1]=(endgran<0?0:endgran);

  }else{

    long *next_serialno_list=((void*)0);
    int next_serialnos=0;
    vorbis_info vi;
    vorbis_comment vc;



    while(searched<endsearched){
      ogg_int64_t bisect;

      if(endsearched-searched<CHUNKSIZE){
        bisect=searched;
      }else{
        bisect=(searched+endsearched)/2;
      }

      if(bisect != vf->offset){
        ret=_seek_helper(vf,bisect);
        if(ret)return(ret);
      }

      last=_get_next_page(vf,&og,-1);
      if(last==OV_EREAD)return(OV_EREAD);
      if(last<0 || !_lookup_page_serialno(&og,currentno_list,currentnos)){
        endsearched=bisect;
        if(last>=0)next=last;
      }else{
        searched=vf->offset;
      }
    }




    {
      int testserial = serialno+1;
      vf->offset = next;
      while(testserial != serialno){
        testserial = serialno;
        vf->offset=_get_prev_page_serial(vf,currentno_list,currentnos,&testserial,&searchgran);
      }
    }

    if(vf->offset!=next){
      ret=_seek_helper(vf,next);
      if(ret)return(ret);
    }

    ret=_fetch_headers(vf,&vi,&vc,&next_serialno_list,&next_serialnos,((void*)0));
    if(ret)return(ret);
    serialno = vf->os.serialno;
    dataoffset = vf->offset;



    pcmoffset = _initial_pcmoffset(vf,&vi);

    ret=_bisect_forward_serialno(vf,next,vf->offset,end,endgran,endserial,
                                 next_serialno_list,next_serialnos,m+1);
    if(ret)return(ret);

    if(next_serialno_list)_ogg_free(next_serialno_list);

    vf->offsets[m+1]=next;
    vf->serialnos[m+1]=serialno;
    vf->dataoffsets[m+1]=dataoffset;

    vf->vi[m+1]=vi;
    vf->vc[m+1]=vc;

    vf->pcmlengths[m*2+1]=searchgran;
    vf->pcmlengths[m*2+2]=pcmoffset;
    vf->pcmlengths[m*2+3]-=pcmoffset;
    if(vf->pcmlengths[m*2+3]<0)vf->pcmlengths[m*2+3]=0;
  }
  return(0);
}
