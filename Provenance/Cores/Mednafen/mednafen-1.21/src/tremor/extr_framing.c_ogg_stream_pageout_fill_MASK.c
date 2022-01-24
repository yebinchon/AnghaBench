#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  b_o_s; scalar_t__ lacing_fill; scalar_t__ e_o_s; } ;
typedef  TYPE_1__ ogg_stream_state ;
typedef  int /*<<< orphan*/  ogg_page ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 

int FUNC2(ogg_stream_state *os, ogg_page *og, int nfill){
  int force=0;
  if(FUNC0(os)) return 0;

  if((os->e_o_s&&os->lacing_fill) ||          /* 'were done, now flush' case */
     (os->lacing_fill&&!os->b_o_s))           /* 'initial header page' case */
    force=1;

  return(FUNC1(os,og,force,nfill));
}