
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int vorbis_look_mapping ;
struct TYPE_12__ {int channels; scalar_t__ codec_setup; } ;
typedef TYPE_1__ vorbis_info ;
struct TYPE_13__ {int pcm_storage; scalar_t__ W; scalar_t__ lW; int ** pcm; int ** pcmret; TYPE_1__* vi; scalar_t__ backend_state; } ;
typedef TYPE_2__ vorbis_dsp_state ;
struct TYPE_14__ {int ** mode; void** window; int modebits; } ;
typedef TYPE_3__ private_state ;
typedef int ogg_int32_t ;
struct TYPE_15__ {int modes; int* blocksizes; int books; int* map_type; int * map_param; TYPE_6__** mode_param; int ** book_param; int * fullbooks; } ;
typedef TYPE_4__ codec_setup_info ;
typedef int codebook ;
struct TYPE_16__ {int mapping; } ;
struct TYPE_11__ {int * (* look ) (TYPE_2__*,TYPE_6__*,int ) ;} ;


 TYPE_10__** _mapping_P ;
 scalar_t__ _ogg_calloc (int,int) ;
 scalar_t__ _ogg_malloc (int) ;
 void* _vorbis_window (int ,int) ;
 int ilog (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int * stub1 (TYPE_2__*,TYPE_6__*,int ) ;
 int vorbis_book_init_decode (int *,int *) ;
 int vorbis_staticbook_destroy (int *) ;

__attribute__((used)) static int _vds_init(vorbis_dsp_state *v,vorbis_info *vi){
  int i;
  codec_setup_info *ci=(codec_setup_info *)vi->codec_setup;
  private_state *b=((void*)0);

  memset(v,0,sizeof(*v));
  b=(private_state *)(v->backend_state=_ogg_calloc(1,sizeof(*b)));

  v->vi=vi;
  b->modebits=ilog(ci->modes);


  b->window[0]=_vorbis_window(0,ci->blocksizes[0]/2);
  b->window[1]=_vorbis_window(0,ci->blocksizes[1]/2);


  if(!ci->fullbooks){
    ci->fullbooks=(codebook *)_ogg_calloc(ci->books,sizeof(*ci->fullbooks));
    for(i=0;i<ci->books;i++){
      vorbis_book_init_decode(ci->fullbooks+i,ci->book_param[i]);

      vorbis_staticbook_destroy(ci->book_param[i]);
      ci->book_param[i]=((void*)0);
    }
  }

  v->pcm_storage=ci->blocksizes[1];
  v->pcm=(ogg_int32_t **)_ogg_malloc(vi->channels*sizeof(*v->pcm));
  v->pcmret=(ogg_int32_t **)_ogg_malloc(vi->channels*sizeof(*v->pcmret));
  for(i=0;i<vi->channels;i++)
    v->pcm[i]=(ogg_int32_t *)_ogg_calloc(v->pcm_storage,sizeof(*v->pcm[i]));



  v->lW=0;
  v->W=0;


  b->mode=(vorbis_look_mapping **)_ogg_calloc(ci->modes,sizeof(*b->mode));
  for(i=0;i<ci->modes;i++){
    int mapnum=ci->mode_param[i]->mapping;
    int maptype=ci->map_type[mapnum];
    b->mode[i]=_mapping_P[maptype]->look(v,ci->mode_param[i],
      ci->map_param[mapnum]);
  }
  return(0);
}
