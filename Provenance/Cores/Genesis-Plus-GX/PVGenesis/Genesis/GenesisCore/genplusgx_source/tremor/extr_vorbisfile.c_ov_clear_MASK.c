#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  (* close_func ) (scalar_t__) ;} ;
struct TYPE_6__ {int links; scalar_t__ datasource; TYPE_1__ callbacks; int /*<<< orphan*/  oy; scalar_t__ offsets; scalar_t__ serialnos; scalar_t__ pcmlengths; scalar_t__ dataoffsets; scalar_t__ vc; scalar_t__ vi; int /*<<< orphan*/  os; int /*<<< orphan*/  vd; int /*<<< orphan*/  vb; } ;
typedef  TYPE_2__ OggVorbis_File ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

int FUNC10(OggVorbis_File *vf){
  if(vf){
    FUNC6(&vf->vb);
    FUNC8(&vf->vd);
    FUNC3(vf->os);
    
    if(vf->vi && vf->links){
      int i;
      for(i=0;i<vf->links;i++){
	FUNC9(vf->vi+i);
	FUNC7(vf->vc+i);
      }
      FUNC1(vf->vi);
      FUNC1(vf->vc);
    }
    if(vf->dataoffsets)FUNC1(vf->dataoffsets);
    if(vf->pcmlengths)FUNC1(vf->pcmlengths);
    if(vf->serialnos)FUNC1(vf->serialnos);
    if(vf->offsets)FUNC1(vf->offsets);
    FUNC4(vf->oy);

    if(vf->datasource)(vf->callbacks.close_func)(vf->datasource);
    FUNC2(vf,0,sizeof(*vf));
  }
#ifdef DEBUG_LEAKS
  _VDBG_dump();
#endif
  return(0);
}