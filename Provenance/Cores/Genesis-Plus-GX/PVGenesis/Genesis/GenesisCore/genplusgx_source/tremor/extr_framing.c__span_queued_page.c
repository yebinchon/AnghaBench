
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int oggbyte_buffer ;
struct TYPE_10__ {int body_fill; scalar_t__ header_tail; scalar_t__ lacing_fill; int laceptr; long pageno; int holeflag; scalar_t__ body_tail; int body_fill_next; int spanflag; int b_o_s; int e_o_s; int granulepos; scalar_t__ body_head; scalar_t__ header_head; scalar_t__ clearflag; } ;
typedef TYPE_1__ ogg_stream_state ;
struct TYPE_11__ {scalar_t__ header; } ;
typedef TYPE_2__ ogg_page ;


 int FINFLAG ;
 int FINMASK ;
 int _next_lace (int *,TYPE_1__*) ;
 void* ogg_buffer_pretruncate (scalar_t__,int) ;
 int ogg_page_bos (TYPE_2__*) ;
 scalar_t__ ogg_page_continued (TYPE_2__*) ;
 int ogg_page_eos (TYPE_2__*) ;
 int ogg_page_granulepos (TYPE_2__*) ;
 long ogg_page_pageno (TYPE_2__*) ;
 int oggbyte_init (int *,scalar_t__) ;
 int oggbyte_read1 (int *,int) ;

__attribute__((used)) static void _span_queued_page(ogg_stream_state *os){
  while( !(os->body_fill&FINFLAG) ){

    if(!os->header_tail)break;




    if(os->lacing_fill>=0)
      os->header_tail=ogg_buffer_pretruncate(os->header_tail,
                                             os->lacing_fill+27);
    os->lacing_fill=0;
    os->laceptr=0;
    os->clearflag=0;

    if(!os->header_tail){
      os->header_head=0;
      break;
    }else{



      long pageno;
      oggbyte_buffer ob;
      ogg_page og;
      og.header=os->header_tail;
      pageno=ogg_page_pageno(&og);

      oggbyte_init(&ob,os->header_tail);
      os->lacing_fill=oggbyte_read1(&ob,26);


      if(pageno!=os->pageno){
        if(os->pageno==-1)
          os->holeflag=1;
        else
          os->holeflag=2;

        os->body_tail=ogg_buffer_pretruncate(os->body_tail,
                                             os->body_fill);
        if(os->body_tail==0)os->body_head=0;
        os->body_fill=0;

      }

      if(ogg_page_continued(&og)){
        if(os->body_fill==0){


          _next_lace(&ob,os);
          os->body_tail=
            ogg_buffer_pretruncate(os->body_tail,os->body_fill_next&FINMASK);
          if(os->body_tail==0)os->body_head=0;

          if(!os->spanflag && !os->holeflag)os->spanflag=2;
        }
      }else{
        if(os->body_fill>0){


          os->body_tail=ogg_buffer_pretruncate(os->body_tail,
                                               os->body_fill);
          if(os->body_tail==0)os->body_head=0;
          os->body_fill=0;


          if(!os->spanflag && !os->holeflag)os->spanflag=2;
        }
      }

      if(os->laceptr<os->lacing_fill){
        os->granulepos=ogg_page_granulepos(&og);


        _next_lace(&ob,os);
        os->body_fill+=os->body_fill_next;


        _next_lace(&ob,os);

      }

      os->pageno=pageno+1;
      os->e_o_s=ogg_page_eos(&og);
      os->b_o_s=ogg_page_bos(&og);

    }
  }
}
