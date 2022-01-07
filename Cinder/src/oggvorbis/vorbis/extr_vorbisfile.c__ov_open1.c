
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int (* seek_func ) (void*,int ,int ) ;} ;
typedef TYPE_1__ ov_callbacks ;
struct TYPE_11__ {int serialno; } ;
struct TYPE_10__ {int seekable; int links; int* serialnos; int current_serialno; int ready_state; int offset; int * dataoffsets; scalar_t__* offsets; TYPE_4__ os; int * datasource; void* vc; void* vi; int oy; TYPE_1__ callbacks; } ;
typedef TYPE_2__ OggVorbis_File ;


 int PARTOPEN ;
 int SEEK_CUR ;
 int _fetch_headers (TYPE_2__*,void*,void*,long**,int*,int *) ;
 void* _ogg_calloc (int,int) ;
 int _ogg_free (long*) ;
 int memcpy (char*,...) ;
 int memset (TYPE_2__*,int ,int) ;
 int ogg_stream_init (TYPE_4__*,int) ;
 char* ogg_sync_buffer (int *,long) ;
 int ogg_sync_init (int *) ;
 int ogg_sync_wrote (int *,long) ;
 int ov_clear (TYPE_2__*) ;
 int stub1 (void*,int ,int ) ;

__attribute__((used)) static int _ov_open1(void *f,OggVorbis_File *vf,const char *initial,
                     long ibytes, ov_callbacks callbacks){
  int offsettest=((f && callbacks.seek_func)?callbacks.seek_func(f,0,SEEK_CUR):-1);
  long *serialno_list=((void*)0);
  int serialno_list_size=0;
  int ret;

  memset(vf,0,sizeof(*vf));
  vf->datasource=f;
  vf->callbacks = callbacks;


  ogg_sync_init(&vf->oy);





  if(initial){
    char *buffer=ogg_sync_buffer(&vf->oy,ibytes);
    memcpy(buffer,initial,ibytes);
    ogg_sync_wrote(&vf->oy,ibytes);
  }


  if(offsettest!=-1)vf->seekable=1;



  vf->links=1;
  vf->vi=_ogg_calloc(vf->links,sizeof(*vf->vi));
  vf->vc=_ogg_calloc(vf->links,sizeof(*vf->vc));
  ogg_stream_init(&vf->os,-1);



  if((ret=_fetch_headers(vf,vf->vi,vf->vc,&serialno_list,&serialno_list_size,((void*)0)))<0){
    vf->datasource=((void*)0);
    ov_clear(vf);
  }else{



    vf->serialnos=_ogg_calloc(serialno_list_size+2,sizeof(*vf->serialnos));
    vf->serialnos[0]=vf->current_serialno=vf->os.serialno;
    vf->serialnos[1]=serialno_list_size;
    memcpy(vf->serialnos+2,serialno_list,serialno_list_size*sizeof(*vf->serialnos));

    vf->offsets=_ogg_calloc(1,sizeof(*vf->offsets));
    vf->dataoffsets=_ogg_calloc(1,sizeof(*vf->dataoffsets));
    vf->offsets[0]=0;
    vf->dataoffsets[0]=vf->offset;

    vf->ready_state=PARTOPEN;
  }
  if(serialno_list)_ogg_free(serialno_list);
  return(ret);
}
