
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* next; } ;
struct TYPE_8__ {int outstanding; struct TYPE_8__* unused_references; struct TYPE_8__* next; struct TYPE_8__* unused_buffers; struct TYPE_8__* data; TYPE_1__ ptr; scalar_t__ shutdown; } ;
typedef TYPE_2__ ogg_reference ;
typedef TYPE_2__ ogg_buffer_state ;
typedef TYPE_2__ ogg_buffer ;


 int _ogg_free (TYPE_2__*) ;

__attribute__((used)) static void _ogg_buffer_destroy(ogg_buffer_state *bs){
  ogg_buffer *bt;
  ogg_reference *rt;

  if(bs->shutdown){

    bt=bs->unused_buffers;
    rt=bs->unused_references;

    while(bt){
      ogg_buffer *b=bt;
      bt=b->ptr.next;
      if(b->data)_ogg_free(b->data);
      _ogg_free(b);
    }
    bs->unused_buffers=0;
    while(rt){
      ogg_reference *r=rt;
      rt=r->next;
      _ogg_free(r);
    }
    bs->unused_references=0;

    if(!bs->outstanding)
      _ogg_free(bs);

  }
}
