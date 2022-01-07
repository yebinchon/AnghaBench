
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ready_state; int vb; int vd; } ;
typedef TYPE_1__ OggVorbis_File ;


 int OPENED ;
 int vorbis_block_clear (int *) ;
 int vorbis_dsp_clear (int *) ;

__attribute__((used)) static void _decode_clear(OggVorbis_File *vf){
  vorbis_dsp_clear(&vf->vd);
  vorbis_block_clear(&vf->vb);
  vf->ready_state=OPENED;
}
