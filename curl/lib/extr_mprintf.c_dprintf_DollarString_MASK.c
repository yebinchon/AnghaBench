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

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 

__attribute__((used)) static long FUNC1(char *input, char **end)
{
  int number = 0;
  while(FUNC0(*input)) {
    number *= 10;
    number += *input-'0';
    input++;
  }
  if(number && ('$'==*input++)) {
    *end = input;
    return number;
  }
  return 0;
}