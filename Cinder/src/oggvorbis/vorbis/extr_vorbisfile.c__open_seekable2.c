
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ ogg_int64_t ;
struct TYPE_10__ {int (* tell_func ) (int ) ;int (* seek_func ) (int ,int ,int ) ;} ;
struct TYPE_9__ {int serialno; } ;
struct TYPE_11__ {scalar_t__* dataoffsets; int offset; int end; int* serialnos; scalar_t__* pcmlengths; scalar_t__* offsets; int datasource; TYPE_2__ callbacks; int vi; TYPE_1__ os; } ;
typedef TYPE_3__ OggVorbis_File ;


 int OV_EINVAL ;
 int OV_EREAD ;
 int SEEK_END ;
 scalar_t__ _bisect_forward_serialno (TYPE_3__*,int ,scalar_t__,int,scalar_t__,int,int*,int,int ) ;
 scalar_t__ _get_prev_page_serial (TYPE_3__*,int*,int,int*,scalar_t__*) ;
 scalar_t__ _initial_pcmoffset (TYPE_3__*,int ) ;
 int ov_raw_seek (TYPE_3__*,scalar_t__) ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ) ;

__attribute__((used)) static int _open_seekable2(OggVorbis_File *vf){
  ogg_int64_t dataoffset=vf->dataoffsets[0],end,endgran=-1;
  int endserial=vf->os.serialno;
  int serialno=vf->os.serialno;





  ogg_int64_t pcmoffset = _initial_pcmoffset(vf,vf->vi);


  if(vf->callbacks.seek_func && vf->callbacks.tell_func){
    (vf->callbacks.seek_func)(vf->datasource,0,SEEK_END);
    vf->offset=vf->end=(vf->callbacks.tell_func)(vf->datasource);
  }else{
    vf->offset=vf->end=-1;
  }


  if(vf->end==-1) return(OV_EINVAL);




  end=_get_prev_page_serial(vf,vf->serialnos+2,vf->serialnos[1],&endserial,&endgran);
  if(end<0)return(end);


  if(_bisect_forward_serialno(vf,0,dataoffset,vf->offset,endgran,endserial,
                              vf->serialnos+2,vf->serialnos[1],0)<0)return(OV_EREAD);

  vf->offsets[0]=0;
  vf->serialnos[0]=serialno;
  vf->dataoffsets[0]=dataoffset;
  vf->pcmlengths[0]=pcmoffset;
  vf->pcmlengths[1]-=pcmoffset;
  if(vf->pcmlengths[1]<0)vf->pcmlengths[1]=0;

  return(ov_raw_seek(vf,dataoffset));
}
