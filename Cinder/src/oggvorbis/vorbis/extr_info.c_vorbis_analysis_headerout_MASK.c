#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vorbis_info ;
struct TYPE_17__ {TYPE_2__* backend_state; int /*<<< orphan*/ * vi; } ;
typedef  TYPE_1__ vorbis_dsp_state ;
typedef  int /*<<< orphan*/  vorbis_comment ;
struct TYPE_18__ {int /*<<< orphan*/ * header2; int /*<<< orphan*/ * header1; int /*<<< orphan*/ * header; } ;
typedef  TYPE_2__ private_state ;
struct TYPE_19__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_3__ oggpack_buffer ;
struct TYPE_20__ {int b_o_s; int packetno; scalar_t__ granulepos; scalar_t__ e_o_s; void* bytes; int /*<<< orphan*/ * packet; } ;
typedef  TYPE_4__ ogg_packet ;

/* Variables and functions */
 int OV_EFAULT ; 
 int OV_EIMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (void*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 

int FUNC11(vorbis_dsp_state *v,
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

  /* first header packet **********************************************/

  FUNC10(&opb);
  if(FUNC4(&opb,vi))goto err_out;

  /* build the packet */
  if(b->header)FUNC0(b->header);
  b->header=FUNC1(FUNC7(&opb));
  FUNC5(b->header,opb.buffer,FUNC7(&opb));
  op->packet=b->header;
  op->bytes=FUNC7(&opb);
  op->b_o_s=1;
  op->e_o_s=0;
  op->granulepos=0;
  op->packetno=0;

  /* second header packet (comments) **********************************/

  FUNC8(&opb);
  if(FUNC3(&opb,vc))goto err_out;

  if(b->header1)FUNC0(b->header1);
  b->header1=FUNC1(FUNC7(&opb));
  FUNC5(b->header1,opb.buffer,FUNC7(&opb));
  op_comm->packet=b->header1;
  op_comm->bytes=FUNC7(&opb);
  op_comm->b_o_s=0;
  op_comm->e_o_s=0;
  op_comm->granulepos=0;
  op_comm->packetno=1;

  /* third header packet (modes/codebooks) ****************************/

  FUNC8(&opb);
  if(FUNC2(&opb,vi))goto err_out;

  if(b->header2)FUNC0(b->header2);
  b->header2=FUNC1(FUNC7(&opb));
  FUNC5(b->header2,opb.buffer,FUNC7(&opb));
  op_code->packet=b->header2;
  op_code->bytes=FUNC7(&opb);
  op_code->b_o_s=0;
  op_code->e_o_s=0;
  op_code->granulepos=0;
  op_code->packetno=2;

  FUNC9(&opb);
  return(0);
 err_out:
  FUNC6(op,0,sizeof(*op));
  FUNC6(op_comm,0,sizeof(*op_comm));
  FUNC6(op_code,0,sizeof(*op_code));

  if(b){
    FUNC9(&opb);
    if(b->header)FUNC0(b->header);
    if(b->header1)FUNC0(b->header1);
    if(b->header2)FUNC0(b->header2);
    b->header=NULL;
    b->header1=NULL;
    b->header2=NULL;
  }
  return(ret);
}