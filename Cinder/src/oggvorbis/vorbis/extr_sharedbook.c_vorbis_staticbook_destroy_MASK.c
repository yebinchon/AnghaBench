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
struct TYPE_5__ {struct TYPE_5__* lengthlist; struct TYPE_5__* quantlist; scalar_t__ allocedp; } ;
typedef  TYPE_1__ static_codebook ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC2(static_codebook *b){
  if(b->allocedp){
    if(b->quantlist)FUNC0(b->quantlist);
    if(b->lengthlist)FUNC0(b->lengthlist);
    FUNC1(b,0,sizeof(*b));
    FUNC0(b);
  } /* otherwise, it is in static memory */
}