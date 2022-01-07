
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* seek_func ) (void*,int ,int ) ;} ;
typedef TYPE_1__ ov_callbacks ;
struct TYPE_9__ {int seekable; int links; scalar_t__ ready_state; int * datasource; int current_serialno; void* vc; void* vi; int os; int oy; TYPE_1__ callbacks; } ;
typedef TYPE_2__ OggVorbis_File ;


 scalar_t__ PARTOPEN ;
 int SEEK_CUR ;
 int _fetch_headers (TYPE_2__*,void*,void*,int *,int *) ;
 void* _ogg_calloc (int,int) ;
 int memcpy (unsigned char*,char*,long) ;
 int memset (TYPE_2__*,int ,int) ;
 int ogg_stream_create (int) ;
 unsigned char* ogg_sync_bufferin (int ,long) ;
 int ogg_sync_create () ;
 int ogg_sync_wrote (int ,long) ;
 int ov_clear (TYPE_2__*) ;
 int stub1 (void*,int ,int ) ;

__attribute__((used)) static int _ov_open1(void *f,OggVorbis_File *vf,char *initial,
       long ibytes, ov_callbacks callbacks){
  int offsettest=(f?callbacks.seek_func(f,0,SEEK_CUR):-1);
  int ret;

  memset(vf,0,sizeof(*vf));
  vf->datasource=f;
  vf->callbacks = callbacks;


  vf->oy=ogg_sync_create();





  if(initial){
    unsigned char *buffer=ogg_sync_bufferin(vf->oy,ibytes);
    memcpy(buffer,initial,ibytes);
    ogg_sync_wrote(vf->oy,ibytes);
  }


  if(offsettest!=-1)vf->seekable=1;



  vf->links=1;
  vf->vi=_ogg_calloc(vf->links,sizeof(*vf->vi));
  vf->vc=_ogg_calloc(vf->links,sizeof(*vf->vc));
  vf->os=ogg_stream_create(-1);


  if((ret=_fetch_headers(vf,vf->vi,vf->vc,&vf->current_serialno,((void*)0)))<0){
    vf->datasource=((void*)0);
    ov_clear(vf);
  }else if(vf->ready_state < PARTOPEN)
    vf->ready_state=PARTOPEN;
  return(ret);
}
