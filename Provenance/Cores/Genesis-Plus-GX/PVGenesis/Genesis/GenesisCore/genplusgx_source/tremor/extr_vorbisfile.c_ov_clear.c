
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* close_func ) (scalar_t__) ;} ;
struct TYPE_6__ {int links; scalar_t__ datasource; TYPE_1__ callbacks; int oy; scalar_t__ offsets; scalar_t__ serialnos; scalar_t__ pcmlengths; scalar_t__ dataoffsets; scalar_t__ vc; scalar_t__ vi; int os; int vd; int vb; } ;
typedef TYPE_2__ OggVorbis_File ;


 int _VDBG_dump () ;
 int _ogg_free (scalar_t__) ;
 int memset (TYPE_2__*,int ,int) ;
 int ogg_stream_destroy (int ) ;
 int ogg_sync_destroy (int ) ;
 int stub1 (scalar_t__) ;
 int vorbis_block_clear (int *) ;
 int vorbis_comment_clear (scalar_t__) ;
 int vorbis_dsp_clear (int *) ;
 int vorbis_info_clear (scalar_t__) ;

int ov_clear(OggVorbis_File *vf){
  if(vf){
    vorbis_block_clear(&vf->vb);
    vorbis_dsp_clear(&vf->vd);
    ogg_stream_destroy(vf->os);

    if(vf->vi && vf->links){
      int i;
      for(i=0;i<vf->links;i++){
 vorbis_info_clear(vf->vi+i);
 vorbis_comment_clear(vf->vc+i);
      }
      _ogg_free(vf->vi);
      _ogg_free(vf->vc);
    }
    if(vf->dataoffsets)_ogg_free(vf->dataoffsets);
    if(vf->pcmlengths)_ogg_free(vf->pcmlengths);
    if(vf->serialnos)_ogg_free(vf->serialnos);
    if(vf->offsets)_ogg_free(vf->offsets);
    ogg_sync_destroy(vf->oy);

    if(vf->datasource)(vf->callbacks.close_func)(vf->datasource);
    memset(vf,0,sizeof(*vf));
  }



  return(0);
}
