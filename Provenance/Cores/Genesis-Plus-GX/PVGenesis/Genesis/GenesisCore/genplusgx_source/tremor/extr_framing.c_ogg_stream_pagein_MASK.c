#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int serialno; int lacing_fill; void* header_head; scalar_t__ header_tail; void* body_head; scalar_t__ body_tail; } ;
typedef  TYPE_1__ ogg_stream_state ;
struct TYPE_10__ {scalar_t__ header; scalar_t__ body; } ;
typedef  TYPE_2__ ogg_page ;

/* Variables and functions */
 int OGG_ESERIAL ; 
 int OGG_EVERSION ; 
 int OGG_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (void*,scalar_t__) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 

int FUNC6(ogg_stream_state *os, ogg_page *og){

  int serialno=FUNC4(og);
  int version=FUNC5(og);

  /* check the serial number */
  if(serialno!=os->serialno){
    FUNC3(og);
    return OGG_ESERIAL;
  }
  if(version>0){
    FUNC3(og);
    return OGG_EVERSION;
  }

  /* add to fifos */
  if(!os->body_tail){
    os->body_tail=og->body;
    os->body_head=FUNC2(og->body);
  }else{
    os->body_head=FUNC1(os->body_head,og->body);
  }
  if(!os->header_tail){
    os->header_tail=og->header;
    os->header_head=FUNC2(og->header);
    os->lacing_fill=-27;
  }else{
    os->header_head=FUNC1(os->header_head,og->header);
  }

  FUNC0(og,0,sizeof(*og));
  return OGG_SUCCESS;
}