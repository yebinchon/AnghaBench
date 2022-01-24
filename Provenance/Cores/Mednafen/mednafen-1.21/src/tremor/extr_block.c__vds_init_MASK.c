#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vorbis_look_mapping ;
struct TYPE_13__ {int channels; scalar_t__ codec_setup; } ;
typedef  TYPE_1__ vorbis_info ;
struct TYPE_14__ {int pcm_storage; scalar_t__ W; scalar_t__ lW; int /*<<< orphan*/ ** pcm; int /*<<< orphan*/ ** pcmret; TYPE_1__* vi; scalar_t__ backend_state; } ;
typedef  TYPE_2__ vorbis_dsp_state ;
struct TYPE_15__ {int /*<<< orphan*/ ** mode; void** window; int /*<<< orphan*/  modebits; } ;
typedef  TYPE_3__ private_state ;
typedef  int /*<<< orphan*/  ogg_int32_t ;
struct TYPE_16__ {int modes; int* blocksizes; int books; int* map_type; int /*<<< orphan*/ ** book_param; int /*<<< orphan*/ * map_param; TYPE_7__** mode_param; int /*<<< orphan*/ * fullbooks; } ;
typedef  TYPE_4__ codec_setup_info ;
typedef  int /*<<< orphan*/  codebook ;
struct TYPE_17__ {int mapping; } ;
struct TYPE_12__ {int /*<<< orphan*/ * (* look ) (TYPE_2__*,TYPE_7__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_11__** _mapping_P ; 
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(vorbis_dsp_state *v,vorbis_info *vi){
  int i;
  codec_setup_info *ci=(codec_setup_info *)vi->codec_setup;
  private_state *b=NULL;

  if(ci==NULL) return 1;

  FUNC4(v,0,sizeof(*v));
  b=(private_state *)(v->backend_state=FUNC0(1,sizeof(*b)));

  v->vi=vi;
  b->modebits=FUNC3(ci->modes);

  /* Vorbis I uses only window type 0 */
  b->window[0]=FUNC2(0,ci->blocksizes[0]/2);
  b->window[1]=FUNC2(0,ci->blocksizes[1]/2);

  /* finish the codebooks */
  if(!ci->fullbooks){
    ci->fullbooks=(codebook *)FUNC0(ci->books,sizeof(*ci->fullbooks));
    for(i=0;i<ci->books;i++){
      if(ci->book_param[i]==NULL)
        goto abort_books;
      if(FUNC6(ci->fullbooks+i,ci->book_param[i]))
        goto abort_books;
      /* decode codebooks are now standalone after init */
      FUNC8(ci->book_param[i]);
      ci->book_param[i]=NULL;
    }
  }

  v->pcm_storage=ci->blocksizes[1];
  v->pcm=(ogg_int32_t **)FUNC1(vi->channels*sizeof(*v->pcm));
  v->pcmret=(ogg_int32_t **)FUNC1(vi->channels*sizeof(*v->pcmret));
  for(i=0;i<vi->channels;i++)
    v->pcm[i]=(ogg_int32_t *)FUNC0(v->pcm_storage,sizeof(*v->pcm[i]));

  /* all 1 (large block) or 0 (small block) */
  /* explicitly set for the sake of clarity */
  v->lW=0; /* previous window size */
  v->W=0;  /* current window size */

  /* initialize all the mapping/backend lookups */
  b->mode=(vorbis_look_mapping **)FUNC0(ci->modes,sizeof(*b->mode));
  for(i=0;i<ci->modes;i++){
    int mapnum=ci->mode_param[i]->mapping;
    int maptype=ci->map_type[mapnum];
    b->mode[i]=_mapping_P[maptype]->look(v,ci->mode_param[i],
					 ci->map_param[mapnum]);
  }
  return 0;
abort_books:
  for(i=0;i<ci->books;i++){
    if(ci->book_param[i]!=NULL){
      FUNC8(ci->book_param[i]);
      ci->book_param[i]=NULL;
    }
  }
  FUNC7(v);
  return -1;
}