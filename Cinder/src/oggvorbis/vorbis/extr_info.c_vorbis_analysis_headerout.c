
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int vorbis_info ;
struct TYPE_17__ {TYPE_2__* backend_state; int * vi; } ;
typedef TYPE_1__ vorbis_dsp_state ;
typedef int vorbis_comment ;
struct TYPE_18__ {int * header2; int * header1; int * header; } ;
typedef TYPE_2__ private_state ;
struct TYPE_19__ {int buffer; } ;
typedef TYPE_3__ oggpack_buffer ;
struct TYPE_20__ {int b_o_s; int packetno; scalar_t__ granulepos; scalar_t__ e_o_s; void* bytes; int * packet; } ;
typedef TYPE_4__ ogg_packet ;


 int OV_EFAULT ;
 int OV_EIMPL ;
 int _ogg_free (int *) ;
 void* _ogg_malloc (void*) ;
 scalar_t__ _vorbis_pack_books (TYPE_3__*,int *) ;
 scalar_t__ _vorbis_pack_comment (TYPE_3__*,int *) ;
 scalar_t__ _vorbis_pack_info (TYPE_3__*,int *) ;
 int memcpy (int *,int ,void*) ;
 int memset (TYPE_4__*,int ,int) ;
 void* oggpack_bytes (TYPE_3__*) ;
 int oggpack_reset (TYPE_3__*) ;
 int oggpack_writeclear (TYPE_3__*) ;
 int oggpack_writeinit (TYPE_3__*) ;

int vorbis_analysis_headerout(vorbis_dsp_state *v,
                              vorbis_comment *vc,
                              ogg_packet *op,
                              ogg_packet *op_comm,
                              ogg_packet *op_code){
  int ret=OV_EIMPL;
  vorbis_info *vi=v->vi;
  oggpack_buffer opb;
  private_state *b=v->backend_state;

  if(!b){
    ret=OV_EFAULT;
    goto err_out;
  }



  oggpack_writeinit(&opb);
  if(_vorbis_pack_info(&opb,vi))goto err_out;


  if(b->header)_ogg_free(b->header);
  b->header=_ogg_malloc(oggpack_bytes(&opb));
  memcpy(b->header,opb.buffer,oggpack_bytes(&opb));
  op->packet=b->header;
  op->bytes=oggpack_bytes(&opb);
  op->b_o_s=1;
  op->e_o_s=0;
  op->granulepos=0;
  op->packetno=0;



  oggpack_reset(&opb);
  if(_vorbis_pack_comment(&opb,vc))goto err_out;

  if(b->header1)_ogg_free(b->header1);
  b->header1=_ogg_malloc(oggpack_bytes(&opb));
  memcpy(b->header1,opb.buffer,oggpack_bytes(&opb));
  op_comm->packet=b->header1;
  op_comm->bytes=oggpack_bytes(&opb);
  op_comm->b_o_s=0;
  op_comm->e_o_s=0;
  op_comm->granulepos=0;
  op_comm->packetno=1;



  oggpack_reset(&opb);
  if(_vorbis_pack_books(&opb,vi))goto err_out;

  if(b->header2)_ogg_free(b->header2);
  b->header2=_ogg_malloc(oggpack_bytes(&opb));
  memcpy(b->header2,opb.buffer,oggpack_bytes(&opb));
  op_code->packet=b->header2;
  op_code->bytes=oggpack_bytes(&opb);
  op_code->b_o_s=0;
  op_code->e_o_s=0;
  op_code->granulepos=0;
  op_code->packetno=2;

  oggpack_writeclear(&opb);
  return(0);
 err_out:
  memset(op,0,sizeof(*op));
  memset(op_comm,0,sizeof(*op_comm));
  memset(op_code,0,sizeof(*op_code));

  if(b){
    oggpack_writeclear(&opb);
    if(b->header)_ogg_free(b->header);
    if(b->header1)_ogg_free(b->header1);
    if(b->header2)_ogg_free(b->header2);
    b->header=((void*)0);
    b->header1=((void*)0);
    b->header2=((void*)0);
  }
  return(ret);
}
