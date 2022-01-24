#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ogg_uint32_t ;
struct TYPE_13__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ ogg_page ;
typedef  scalar_t__ ogg_int64_t ;
struct TYPE_12__ {scalar_t__ (* tell_func ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* seek_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_14__ {scalar_t__ current_serialno; scalar_t__ offset; scalar_t__ end; int /*<<< orphan*/  datasource; TYPE_1__ callbacks; } ;
typedef  TYPE_3__ OggVorbis_File ;

/* Variables and functions */
 int OV_EREAD ; 
 int /*<<< orphan*/  SEEK_END ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(OggVorbis_File *vf){
  ogg_uint32_t serialno=vf->current_serialno;
  ogg_uint32_t tempserialno;
  ogg_int64_t dataoffset=vf->offset, end;
  ogg_page og={0,0,0,0};

  /* we're partially open and have a first link header state in
     storage in vf */
  /* we can seek, so set out learning all about this file */
  (vf->callbacks.seek_func)(vf->datasource,0,SEEK_END);
  vf->offset=vf->end=(vf->callbacks.tell_func)(vf->datasource);
  
  /* We get the offset for the last page of the physical bitstream.
     Most OggVorbis files will contain a single logical bitstream */
  end=FUNC1(vf,&og);
  if(end<0)return(end);

  /* more than one logical bitstream? */
  tempserialno=FUNC4(&og);
  FUNC3(&og);

  if(tempserialno!=serialno){

    /* Chained bitstream. Bisect-search each logical bitstream
       section.  Do so based on serial number only */
    if(FUNC0(vf,0,0,end+1,serialno,0)<0)return(OV_EREAD);

  }else{

    /* Only one logical bitstream */
    if(FUNC0(vf,0,end,end+1,serialno,0))return(OV_EREAD);

  }

  /* the initial header memory is referenced by vf after; don't free it */
  FUNC2(vf,dataoffset);
  return(FUNC5(vf,0));
}