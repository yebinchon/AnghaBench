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
struct TYPE_4__ {int /*<<< orphan*/  module; } ;
typedef  TYPE_1__ HttpDecodeMethod ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC1(HttpDecodeMethod *pSrc, HttpDecodeMethod *pCmp) {
  if (FUNC0(pSrc->module, pCmp->module) != 0) {
    return false;
  }
  return true;
}