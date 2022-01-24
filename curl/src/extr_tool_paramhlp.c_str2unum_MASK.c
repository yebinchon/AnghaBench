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
typedef  scalar_t__ ParameterError ;

/* Variables and functions */
 scalar_t__ PARAM_NEGATIVE_NUMERIC ; 
 scalar_t__ PARAM_OK ; 
 scalar_t__ FUNC0 (long*,char const*) ; 

ParameterError FUNC1(long *val, const char *str)
{
  ParameterError result = FUNC0(val, str);
  if(result != PARAM_OK)
    return result;
  if(*val < 0)
    return PARAM_NEGATIVE_NUMERIC;

  return PARAM_OK;
}