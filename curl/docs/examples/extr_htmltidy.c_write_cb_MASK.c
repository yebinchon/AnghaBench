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
typedef  int uint ;
typedef  int /*<<< orphan*/  TidyBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 

uint FUNC1(char *in, uint size, uint nmemb, TidyBuffer *out)
{
  uint r;
  r = size * nmemb;
  FUNC0(out, in, r);
  return r;
}