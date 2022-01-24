#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct TYPE_16__ {int channels; int /*<<< orphan*/  rate; TYPE_4__* codec_setup; } ;
typedef  TYPE_1__ vorbis_info ;
struct TYPE_17__ {int analysisp; int pcm_storage; int centerW; int pcm_current; scalar_t__ W; scalar_t__ lW; void** pcm; void* pcmret; TYPE_1__* vi; TYPE_3__* backend_state; } ;
typedef  TYPE_2__ vorbis_dsp_state ;
struct TYPE_18__ {int /*<<< orphan*/ * residue; int /*<<< orphan*/ * flr; void* psy; int /*<<< orphan*/ * fft_look; void** window; void*** transform; void* modebits; } ;
typedef  TYPE_3__ private_state ;
typedef  int /*<<< orphan*/  mdct_lookup ;
struct TYPE_19__ {int halfrate_flag; int modes; int* blocksizes; int books; int psys; int floors; int residues; size_t* floor_type; size_t* residue_type; int /*<<< orphan*/ ** book_param; int /*<<< orphan*/ * residue_param; int /*<<< orphan*/ * floor_param; void* fullbooks; TYPE_9__** psy_param; int /*<<< orphan*/  psy_g_param; } ;
typedef  TYPE_4__ codec_setup_info ;
struct TYPE_20__ {size_t blockflag; } ;
struct TYPE_15__ {int /*<<< orphan*/  (* look ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  (* look ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int VI_TRANSFORMB ; 
 TYPE_13__** _floor_P ; 
 void* FUNC0 (int,int) ; 
 void* FUNC1 (int) ; 
 TYPE_12__** _residue_P ; 
 int /*<<< orphan*/  FUNC2 (void*,TYPE_9__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(vorbis_dsp_state *v,vorbis_info *vi,int encp){
  int i;
  codec_setup_info *ci=vi->codec_setup;
  private_state *b=NULL;
  int hs;

  if(ci==NULL) return 1;
  hs=ci->halfrate_flag;

  FUNC6(v,0,sizeof(*v));
  b=v->backend_state=FUNC0(1,sizeof(*b));

  v->vi=vi;
  b->modebits=FUNC4(ci->modes);

  b->transform[0]=FUNC0(VI_TRANSFORMB,sizeof(*b->transform[0]));
  b->transform[1]=FUNC0(VI_TRANSFORMB,sizeof(*b->transform[1]));

  /* MDCT is tranform 0 */

  b->transform[0][0]=FUNC0(1,sizeof(mdct_lookup));
  b->transform[1][0]=FUNC0(1,sizeof(mdct_lookup));
  FUNC5(b->transform[0][0],ci->blocksizes[0]>>hs);
  FUNC5(b->transform[1][0],ci->blocksizes[1]>>hs);

  /* Vorbis I uses only window type 0 */
  b->window[0]=FUNC4(ci->blocksizes[0])-6;
  b->window[1]=FUNC4(ci->blocksizes[1])-6;

  if(encp){ /* encode/decode differ here */

    /* analysis always needs an fft */
    FUNC3(&b->fft_look[0],ci->blocksizes[0]);
    FUNC3(&b->fft_look[1],ci->blocksizes[1]);

    /* finish the codebooks */
    if(!ci->fullbooks){
      ci->fullbooks=FUNC0(ci->books,sizeof(*ci->fullbooks));
      for(i=0;i<ci->books;i++)
        FUNC10(ci->fullbooks+i,ci->book_param[i]);
    }

    b->psy=FUNC0(ci->psys,sizeof(*b->psy));
    for(i=0;i<ci->psys;i++){
      FUNC2(b->psy+i,
                   ci->psy_param[i],
                   &ci->psy_g_param,
                   ci->blocksizes[ci->psy_param[i]->blockflag]/2,
                   vi->rate);
    }

    v->analysisp=1;
  }else{
    /* finish the codebooks */
    if(!ci->fullbooks){
      ci->fullbooks=FUNC0(ci->books,sizeof(*ci->fullbooks));
      for(i=0;i<ci->books;i++){
        if(ci->book_param[i]==NULL)
          goto abort_books;
        if(FUNC9(ci->fullbooks+i,ci->book_param[i]))
          goto abort_books;
        /* decode codebooks are now standalone after init */
        FUNC12(ci->book_param[i]);
        ci->book_param[i]=NULL;
      }
    }
  }

  /* initialize the storage vectors. blocksize[1] is small for encode,
     but the correct size for decode */
  v->pcm_storage=ci->blocksizes[1];
  v->pcm=FUNC1(vi->channels*sizeof(*v->pcm));
  v->pcmret=FUNC1(vi->channels*sizeof(*v->pcmret));
  {
    int i;
    for(i=0;i<vi->channels;i++)
      v->pcm[i]=FUNC0(v->pcm_storage,sizeof(*v->pcm[i]));
  }

  /* all 1 (large block) or 0 (small block) */
  /* explicitly set for the sake of clarity */
  v->lW=0; /* previous window size */
  v->W=0;  /* current window size */

  /* all vector indexes */
  v->centerW=ci->blocksizes[1]/2;

  v->pcm_current=v->centerW;

  /* initialize all the backend lookups */
  b->flr=FUNC0(ci->floors,sizeof(*b->flr));
  b->residue=FUNC0(ci->residues,sizeof(*b->residue));

  for(i=0;i<ci->floors;i++)
    b->flr[i]=_floor_P[ci->floor_type[i]]->
      look(v,ci->floor_param[i]);

  for(i=0;i<ci->residues;i++)
    b->residue[i]=_residue_P[ci->residue_type[i]]->
      look(v,ci->residue_param[i]);

  return 0;
 abort_books:
  for(i=0;i<ci->books;i++){
    if(ci->book_param[i]!=NULL){
      FUNC12(ci->book_param[i]);
      ci->book_param[i]=NULL;
    }
  }
  FUNC11(v);
  return -1;
}