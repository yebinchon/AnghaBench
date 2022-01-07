
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct TYPE_16__ {int channels; int rate; TYPE_4__* codec_setup; } ;
typedef TYPE_1__ vorbis_info ;
struct TYPE_17__ {int analysisp; int pcm_storage; int centerW; int pcm_current; scalar_t__ W; scalar_t__ lW; void** pcm; void* pcmret; TYPE_1__* vi; TYPE_3__* backend_state; } ;
typedef TYPE_2__ vorbis_dsp_state ;
struct TYPE_18__ {int * residue; int * flr; void* psy; int * fft_look; void** window; void*** transform; void* modebits; } ;
typedef TYPE_3__ private_state ;
typedef int mdct_lookup ;
struct TYPE_19__ {int halfrate_flag; int modes; int* blocksizes; int books; int psys; int floors; int residues; size_t* floor_type; size_t* residue_type; int ** book_param; int * residue_param; int * floor_param; void* fullbooks; TYPE_9__** psy_param; int psy_g_param; } ;
typedef TYPE_4__ codec_setup_info ;
struct TYPE_20__ {size_t blockflag; } ;
struct TYPE_15__ {int (* look ) (TYPE_2__*,int ) ;} ;
struct TYPE_14__ {int (* look ) (TYPE_2__*,int ) ;} ;


 int VI_TRANSFORMB ;
 TYPE_13__** _floor_P ;
 void* _ogg_calloc (int,int) ;
 void* _ogg_malloc (int) ;
 TYPE_12__** _residue_P ;
 int _vp_psy_init (void*,TYPE_9__*,int *,int,int ) ;
 int drft_init (int *,int) ;
 void* ilog2 (int) ;
 int mdct_init (void*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int stub1 (TYPE_2__*,int ) ;
 int stub2 (TYPE_2__*,int ) ;
 scalar_t__ vorbis_book_init_decode (void*,int *) ;
 int vorbis_book_init_encode (void*,int *) ;
 int vorbis_dsp_clear (TYPE_2__*) ;
 int vorbis_staticbook_destroy (int *) ;

__attribute__((used)) static int _vds_shared_init(vorbis_dsp_state *v,vorbis_info *vi,int encp){
  int i;
  codec_setup_info *ci=vi->codec_setup;
  private_state *b=((void*)0);
  int hs;

  if(ci==((void*)0)) return 1;
  hs=ci->halfrate_flag;

  memset(v,0,sizeof(*v));
  b=v->backend_state=_ogg_calloc(1,sizeof(*b));

  v->vi=vi;
  b->modebits=ilog2(ci->modes);

  b->transform[0]=_ogg_calloc(VI_TRANSFORMB,sizeof(*b->transform[0]));
  b->transform[1]=_ogg_calloc(VI_TRANSFORMB,sizeof(*b->transform[1]));



  b->transform[0][0]=_ogg_calloc(1,sizeof(mdct_lookup));
  b->transform[1][0]=_ogg_calloc(1,sizeof(mdct_lookup));
  mdct_init(b->transform[0][0],ci->blocksizes[0]>>hs);
  mdct_init(b->transform[1][0],ci->blocksizes[1]>>hs);


  b->window[0]=ilog2(ci->blocksizes[0])-6;
  b->window[1]=ilog2(ci->blocksizes[1])-6;

  if(encp){


    drft_init(&b->fft_look[0],ci->blocksizes[0]);
    drft_init(&b->fft_look[1],ci->blocksizes[1]);


    if(!ci->fullbooks){
      ci->fullbooks=_ogg_calloc(ci->books,sizeof(*ci->fullbooks));
      for(i=0;i<ci->books;i++)
        vorbis_book_init_encode(ci->fullbooks+i,ci->book_param[i]);
    }

    b->psy=_ogg_calloc(ci->psys,sizeof(*b->psy));
    for(i=0;i<ci->psys;i++){
      _vp_psy_init(b->psy+i,
                   ci->psy_param[i],
                   &ci->psy_g_param,
                   ci->blocksizes[ci->psy_param[i]->blockflag]/2,
                   vi->rate);
    }

    v->analysisp=1;
  }else{

    if(!ci->fullbooks){
      ci->fullbooks=_ogg_calloc(ci->books,sizeof(*ci->fullbooks));
      for(i=0;i<ci->books;i++){
        if(ci->book_param[i]==((void*)0))
          goto abort_books;
        if(vorbis_book_init_decode(ci->fullbooks+i,ci->book_param[i]))
          goto abort_books;

        vorbis_staticbook_destroy(ci->book_param[i]);
        ci->book_param[i]=((void*)0);
      }
    }
  }



  v->pcm_storage=ci->blocksizes[1];
  v->pcm=_ogg_malloc(vi->channels*sizeof(*v->pcm));
  v->pcmret=_ogg_malloc(vi->channels*sizeof(*v->pcmret));
  {
    int i;
    for(i=0;i<vi->channels;i++)
      v->pcm[i]=_ogg_calloc(v->pcm_storage,sizeof(*v->pcm[i]));
  }



  v->lW=0;
  v->W=0;


  v->centerW=ci->blocksizes[1]/2;

  v->pcm_current=v->centerW;


  b->flr=_ogg_calloc(ci->floors,sizeof(*b->flr));
  b->residue=_ogg_calloc(ci->residues,sizeof(*b->residue));

  for(i=0;i<ci->floors;i++)
    b->flr[i]=_floor_P[ci->floor_type[i]]->
      look(v,ci->floor_param[i]);

  for(i=0;i<ci->residues;i++)
    b->residue[i]=_residue_P[ci->residue_type[i]]->
      look(v,ci->residue_param[i]);

  return 0;
 abort_books:
  for(i=0;i<ci->books;i++){
    if(ci->book_param[i]!=((void*)0)){
      vorbis_staticbook_destroy(ci->book_param[i]);
      ci->book_param[i]=((void*)0);
    }
  }
  vorbis_dsp_clear(v);
  return -1;
}
