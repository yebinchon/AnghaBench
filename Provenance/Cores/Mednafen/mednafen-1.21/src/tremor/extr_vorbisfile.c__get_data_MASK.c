#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {long (* read_func ) (char*,int,int /*<<< orphan*/ ,scalar_t__) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  oy; scalar_t__ datasource; TYPE_1__ callbacks; } ;
typedef  TYPE_2__ OggVorbis_File ;

/* Variables and functions */
 int /*<<< orphan*/  READSIZE ; 
 scalar_t__ errno ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long) ; 
 long FUNC2 (char*,int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static long FUNC3(OggVorbis_File *vf){
  errno=0;
  if(!(vf->callbacks.read_func))return(-1);
  if(vf->datasource){
    char *buffer=FUNC0(&vf->oy,READSIZE);
    long bytes=(vf->callbacks.read_func)(buffer,1,READSIZE,vf->datasource);
    if(bytes>0)FUNC1(&vf->oy,bytes);
    if(bytes==0 && errno)return(-1);
    return(bytes);
  }else
    return(0);
}