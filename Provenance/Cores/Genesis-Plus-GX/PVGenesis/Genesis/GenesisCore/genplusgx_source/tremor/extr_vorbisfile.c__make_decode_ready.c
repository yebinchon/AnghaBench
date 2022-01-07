
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ready_state; scalar_t__ samptrack; scalar_t__ bittrack; int vb; int vd; scalar_t__ vi; scalar_t__ current_link; scalar_t__ seekable; } ;
typedef TYPE_1__ OggVorbis_File ;


 scalar_t__ INITSET ;
 scalar_t__ STREAMSET ;
 int vorbis_block_init (int *,int *) ;
 int vorbis_synthesis_init (int *,scalar_t__) ;

__attribute__((used)) static void _make_decode_ready(OggVorbis_File *vf){
  if(vf->ready_state!=STREAMSET)return;
  if(vf->seekable){
    vorbis_synthesis_init(&vf->vd,vf->vi+vf->current_link);
  }else{
    vorbis_synthesis_init(&vf->vd,vf->vi);
  }
  vorbis_block_init(&vf->vd,&vf->vb);
  vf->ready_state=INITSET;
  vf->bittrack=0;
  vf->samptrack=0;
  return;
}
