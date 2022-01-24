#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  q_delta; int /*<<< orphan*/  q_min; int /*<<< orphan*/  entries; int /*<<< orphan*/  lengthlist; int /*<<< orphan*/  dim; } ;
typedef  TYPE_1__ static_codebook ;
struct TYPE_8__ {int minval; int delta; int /*<<< orphan*/  quantvals; int /*<<< orphan*/  codelist; int /*<<< orphan*/  dim; int /*<<< orphan*/  used_entries; int /*<<< orphan*/  entries; TYPE_1__ const* c; } ;
typedef  TYPE_2__ codebook ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(codebook *c,const static_codebook *s){

  FUNC3(c,0,sizeof(*c));
  c->c=s;
  c->entries=s->entries;
  c->used_entries=s->entries;
  c->dim=s->dim;
  c->codelist=FUNC2(s->lengthlist,s->entries,0);
  //c->valuelist=_book_unquantize(s,s->entries,NULL);
  c->quantvals=FUNC0(s);
  c->minval=(int)FUNC4(FUNC1(s->q_min));
  c->delta=(int)FUNC4(FUNC1(s->q_delta));

  return(0);
}