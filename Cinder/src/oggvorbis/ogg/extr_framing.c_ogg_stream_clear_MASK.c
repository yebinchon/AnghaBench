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
struct TYPE_4__ {scalar_t__ granule_vals; scalar_t__ lacing_vals; scalar_t__ body_data; } ;
typedef  TYPE_1__ ogg_stream_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC2(ogg_stream_state *os){
  if(os){
    if(os->body_data)FUNC0(os->body_data);
    if(os->lacing_vals)FUNC0(os->lacing_vals);
    if(os->granule_vals)FUNC0(os->granule_vals);

    FUNC1(os,0,sizeof(*os));
  }
  return(0);
}