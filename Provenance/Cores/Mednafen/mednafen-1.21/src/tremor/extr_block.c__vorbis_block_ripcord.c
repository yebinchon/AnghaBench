
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct alloc_chain* reap; scalar_t__ localtop; scalar_t__ totaluse; scalar_t__ localalloc; int localstore; } ;
typedef TYPE_1__ vorbis_block ;
struct alloc_chain {struct alloc_chain* ptr; struct alloc_chain* next; } ;


 int _ogg_free (struct alloc_chain*) ;
 int _ogg_realloc (int ,scalar_t__) ;
 int memset (struct alloc_chain*,int ,int) ;

void _vorbis_block_ripcord(vorbis_block *vb){

  struct alloc_chain *reap=vb->reap;
  while(reap){
    struct alloc_chain *next=reap->next;
    _ogg_free(reap->ptr);
    memset(reap,0,sizeof(*reap));
    _ogg_free(reap);
    reap=next;
  }

  if(vb->totaluse){
    vb->localstore=_ogg_realloc(vb->localstore,vb->totaluse+vb->localalloc);
    vb->localalloc+=vb->totaluse;
    vb->totaluse=0;
  }


  vb->localtop=0;
  vb->reap=((void*)0);
}
