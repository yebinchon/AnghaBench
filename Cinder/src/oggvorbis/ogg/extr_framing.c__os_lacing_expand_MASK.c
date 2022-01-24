#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {long lacing_storage; long lacing_fill; void* granule_vals; void* lacing_vals; } ;
typedef  TYPE_1__ ogg_stream_state ;

/* Variables and functions */
 long LONG_MAX ; 
 void* FUNC0 (void*,long) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(ogg_stream_state *os,long needed){
  if(os->lacing_storage-needed<=os->lacing_fill){
    long lacing_storage;
    void *ret;
    if(os->lacing_storage>LONG_MAX-needed){
      FUNC1(os);
      return -1;
    }
    lacing_storage=os->lacing_storage+needed;
    if(lacing_storage<LONG_MAX-32)lacing_storage+=32;
    ret=FUNC0(os->lacing_vals,lacing_storage*sizeof(*os->lacing_vals));
    if(!ret){
      FUNC1(os);
      return -1;
    }
    os->lacing_vals=ret;
    ret=FUNC0(os->granule_vals,lacing_storage*
                     sizeof(*os->granule_vals));
    if(!ret){
      FUNC1(os);
      return -1;
    }
    os->granule_vals=ret;
    os->lacing_storage=lacing_storage;
  }
  return 0;
}