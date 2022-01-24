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
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_CONV_FAILED ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int PLATFORM_CONV_OK ; 
 int FUNC0 (char**,size_t*,char**,size_t*) ; 

__attribute__((used)) static CURLcode FUNC1(char *buffer, size_t length)
{
  char *tempptrin, *tempptrout;
  size_t bytes = length;
  int rc;
  tempptrin = tempptrout = buffer;
  rc = FUNC0(&tempptrin, &bytes, &tempptrout, &bytes);
  if(rc == PLATFORM_CONV_OK) {
    return CURLE_OK;
  }
  else {
    return CURLE_CONV_FAILED;
  }
}