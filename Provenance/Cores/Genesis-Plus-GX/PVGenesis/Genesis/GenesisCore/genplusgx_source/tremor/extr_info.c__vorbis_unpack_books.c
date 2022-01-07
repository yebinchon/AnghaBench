
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_14__ {int blockflag; int windowtype; int transformtype; int mapping; } ;
typedef TYPE_1__ vorbis_info_mode ;
struct TYPE_15__ {scalar_t__ codec_setup; } ;
typedef TYPE_2__ vorbis_info ;
typedef int static_codebook ;
typedef int oggpack_buffer ;
struct TYPE_16__ {int books; int times; int* time_type; int floors; int* floor_type; int residues; int* residue_type; int maps; int* map_type; int modes; TYPE_1__** mode_param; int * map_param; int * residue_param; int * floor_param; int ** book_param; } ;
typedef TYPE_3__ codec_setup_info ;
struct TYPE_17__ {int (* unpack ) (TYPE_2__*,int *) ;} ;
struct TYPE_13__ {int (* unpack ) (TYPE_2__*,int *) ;} ;
struct TYPE_12__ {int (* unpack ) (TYPE_2__*,int *) ;} ;


 int OV_EBADHEADER ;
 int OV_EFAULT ;
 int VI_FLOORB ;
 int VI_MAPB ;
 int VI_RESB ;
 scalar_t__ VI_TIMEB ;
 scalar_t__ VI_WINDOWB ;
 TYPE_11__** _floor_P ;
 TYPE_10__** _mapping_P ;
 scalar_t__ _ogg_calloc (int,int) ;
 TYPE_9__** _residue_P ;
 int oggpack_read (int *,int) ;
 int stub1 (TYPE_2__*,int *) ;
 int stub2 (TYPE_2__*,int *) ;
 int stub3 (TYPE_2__*,int *) ;
 int vorbis_info_clear (TYPE_2__*) ;
 scalar_t__ vorbis_staticbook_unpack (int *,int *) ;

__attribute__((used)) static int _vorbis_unpack_books(vorbis_info *vi,oggpack_buffer *opb){
  codec_setup_info *ci=(codec_setup_info *)vi->codec_setup;
  int i;
  if(!ci)return(OV_EFAULT);


  ci->books=oggpack_read(opb,8)+1;

  for(i=0;i<ci->books;i++){
    ci->book_param[i]=(static_codebook *)_ogg_calloc(1,sizeof(*ci->book_param[i]));
    if(vorbis_staticbook_unpack(opb,ci->book_param[i]))goto err_out;
  }


  ci->times=oggpack_read(opb,6)+1;


  for(i=0;i<ci->times;i++){
    ci->time_type[i]=oggpack_read(opb,16);
    if(ci->time_type[i]<0 || ci->time_type[i]>=VI_TIMEB)goto err_out;



  }


  ci->floors=oggpack_read(opb,6)+1;


  for(i=0;i<ci->floors;i++){
    ci->floor_type[i]=oggpack_read(opb,16);
    if(ci->floor_type[i]<0 || ci->floor_type[i]>=VI_FLOORB)goto err_out;
    ci->floor_param[i]=_floor_P[ci->floor_type[i]]->unpack(vi,opb);
    if(!ci->floor_param[i])goto err_out;
  }


  ci->residues=oggpack_read(opb,6)+1;


  for(i=0;i<ci->residues;i++){
    ci->residue_type[i]=oggpack_read(opb,16);
    if(ci->residue_type[i]<0 || ci->residue_type[i]>=VI_RESB)goto err_out;
    ci->residue_param[i]=_residue_P[ci->residue_type[i]]->unpack(vi,opb);
    if(!ci->residue_param[i])goto err_out;
  }


  ci->maps=oggpack_read(opb,6)+1;


  for(i=0;i<ci->maps;i++){
    ci->map_type[i]=oggpack_read(opb,16);
    if(ci->map_type[i]<0 || ci->map_type[i]>=VI_MAPB)goto err_out;
    ci->map_param[i]=_mapping_P[ci->map_type[i]]->unpack(vi,opb);
    if(!ci->map_param[i])goto err_out;
  }


  ci->modes=oggpack_read(opb,6)+1;

  for(i=0;i<ci->modes;i++){
    ci->mode_param[i]=(vorbis_info_mode *)_ogg_calloc(1,sizeof(*ci->mode_param[i]));
    ci->mode_param[i]->blockflag=oggpack_read(opb,1);
    ci->mode_param[i]->windowtype=oggpack_read(opb,16);
    ci->mode_param[i]->transformtype=oggpack_read(opb,16);
    ci->mode_param[i]->mapping=oggpack_read(opb,8);

    if(ci->mode_param[i]->windowtype>=VI_WINDOWB)goto err_out;
    if(ci->mode_param[i]->transformtype>=VI_WINDOWB)goto err_out;
    if(ci->mode_param[i]->mapping>=ci->maps)goto err_out;
  }

  if(oggpack_read(opb,1)!=1)goto err_out;

  return(0);
 err_out:
  vorbis_info_clear(vi);
  return(OV_EBADHEADER);
}
