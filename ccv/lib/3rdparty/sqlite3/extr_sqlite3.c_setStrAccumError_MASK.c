#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ nAlloc; scalar_t__ accError; } ;
typedef  TYPE_1__ StrAccum ;

/* Variables and functions */
 scalar_t__ STRACCUM_NOMEM ; 
 scalar_t__ STRACCUM_TOOBIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(StrAccum *p, u8 eError){
  FUNC0( eError==STRACCUM_NOMEM || eError==STRACCUM_TOOBIG );
  p->accError = eError;
  p->nAlloc = 0;
}