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
typedef  scalar_t__ int32_t ;
struct TYPE_4__ {int /*<<< orphan*/  z; } ;
typedef  TYPE_1__ SSQLToken ;

/* Variables and functions */
 scalar_t__ TK_ILLEGAL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 double FUNC1 (int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static int32_t FUNC2(SSQLToken *pToken, double *value, char **endPtr) {
  int32_t numType = FUNC0(pToken);
  if (TK_ILLEGAL == numType) {
    return numType;
  }
  *value = FUNC1(pToken->z, endPtr);
  return numType;
}