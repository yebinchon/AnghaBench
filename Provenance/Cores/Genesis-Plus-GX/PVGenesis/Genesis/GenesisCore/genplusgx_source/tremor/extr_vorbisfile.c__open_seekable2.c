
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ ogg_uint32_t ;
struct TYPE_13__ {int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ ogg_page ;
typedef scalar_t__ ogg_int64_t ;
struct TYPE_12__ {scalar_t__ (* tell_func ) (int ) ;int (* seek_func ) (int ,int ,int ) ;} ;
struct TYPE_14__ {scalar_t__ current_serialno; scalar_t__ offset; scalar_t__ end; int datasource; TYPE_1__ callbacks; } ;
typedef TYPE_3__ OggVorbis_File ;


 int OV_EREAD ;
 int SEEK_END ;
 scalar_t__ _bisect_forward_serialno (TYPE_3__*,int ,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ _get_prev_page (TYPE_3__*,TYPE_2__*) ;
 int _prefetch_all_headers (TYPE_3__*,scalar_t__) ;
 int ogg_page_release (TYPE_2__*) ;
 scalar_t__ ogg_page_serialno (TYPE_2__*) ;
 int ov_raw_seek (TYPE_3__*,int ) ;
 int stub1 (int ,int ,int ) ;
 scalar_t__ stub2 (int ) ;

__attribute__((used)) static int _open_seekable2(OggVorbis_File *vf){
  ogg_uint32_t serialno=vf->current_serialno;
  ogg_uint32_t tempserialno;
  ogg_int64_t dataoffset=vf->offset, end;
  ogg_page og={0,0,0,0};




  (vf->callbacks.seek_func)(vf->datasource,0,SEEK_END);
  vf->offset=vf->end=(vf->callbacks.tell_func)(vf->datasource);



  end=_get_prev_page(vf,&og);
  if(end<0)return(end);


  tempserialno=ogg_page_serialno(&og);
  ogg_page_release(&og);

  if(tempserialno!=serialno){



    if(_bisect_forward_serialno(vf,0,0,end+1,serialno,0)<0)return(OV_EREAD);

  }else{


    if(_bisect_forward_serialno(vf,0,end,end+1,serialno,0))return(OV_EREAD);

  }


  _prefetch_all_headers(vf,dataoffset);
  return(ov_raw_seek(vf,0));
}
