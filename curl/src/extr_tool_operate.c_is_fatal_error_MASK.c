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
typedef  int CURLcode ;

/* Variables and functions */
#define  CURLE_BAD_FUNCTION_ARGUMENT 132 
#define  CURLE_FAILED_INIT 131 
#define  CURLE_FUNCTION_NOT_FOUND 130 
#define  CURLE_OUT_OF_MEMORY 129 
#define  CURLE_UNKNOWN_OPTION 128 
 int FALSE ; 
 int TRUE ; 

__attribute__((used)) static bool FUNC0(CURLcode code)
{
  switch(code) {
  case CURLE_FAILED_INIT:
  case CURLE_OUT_OF_MEMORY:
  case CURLE_UNKNOWN_OPTION:
  case CURLE_FUNCTION_NOT_FOUND:
  case CURLE_BAD_FUNCTION_ARGUMENT:
    /* critical error */
    return TRUE;
  default:
    break;
  }

  /* no error or not critical */
  return FALSE;
}