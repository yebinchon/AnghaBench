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
struct TYPE_4__ {scalar_t__ dec_firsttable; scalar_t__ dec_codelengths; scalar_t__ dec_index; scalar_t__ codelist; scalar_t__ valuelist; } ;
typedef  TYPE_1__ codebook ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC2(codebook *b){
  /* static book is not cleared; we're likely called on the lookup and
     the static codebook belongs to the info struct */
  if(b->valuelist)FUNC0(b->valuelist);
  if(b->codelist)FUNC0(b->codelist);

  if(b->dec_index)FUNC0(b->dec_index);
  if(b->dec_codelengths)FUNC0(b->dec_codelengths);
  if(b->dec_firsttable)FUNC0(b->dec_firsttable);

  FUNC1(b,0,sizeof(*b));
}