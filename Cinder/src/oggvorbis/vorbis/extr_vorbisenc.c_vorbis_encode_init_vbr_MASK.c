#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vorbis_info ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,long,long,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(vorbis_info *vi,
                           long channels,
                           long rate,

                           float base_quality /* 0. to 1. */
                           ){
  int ret=0;

  ret=FUNC1(vi,channels,rate,base_quality);

  if(ret){
    FUNC2(vi);
    return ret;
  }
  ret=FUNC0(vi);
  if(ret)
    FUNC2(vi);
  return(ret);
}