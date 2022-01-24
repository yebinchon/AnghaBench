#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vorbis_comment ;
struct TYPE_8__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ oggpack_buffer ;
struct TYPE_9__ {int packetno; scalar_t__ granulepos; scalar_t__ e_o_s; scalar_t__ b_o_s; int /*<<< orphan*/  bytes; int /*<<< orphan*/  packet; } ;
typedef  TYPE_2__ ogg_packet ;

/* Variables and functions */
 int OV_EIMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(vorbis_comment *vc,
                                          ogg_packet *op){

  oggpack_buffer opb;

  FUNC5(&opb);
  if(FUNC1(&opb,vc)){
    FUNC4(&opb);
    return OV_EIMPL;
  }

  op->packet = FUNC0(FUNC3(&opb));
  FUNC2(op->packet, opb.buffer, FUNC3(&opb));

  op->bytes=FUNC3(&opb);
  op->b_o_s=0;
  op->e_o_s=0;
  op->granulepos=0;
  op->packetno=1;

  FUNC4(&opb);
  return 0;
}