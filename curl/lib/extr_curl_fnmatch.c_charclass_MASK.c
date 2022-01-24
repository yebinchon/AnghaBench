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
typedef  int /*<<< orphan*/  char_class ;

/* Variables and functions */
 int /*<<< orphan*/  CCLASS_DIGIT ; 
 int /*<<< orphan*/  CCLASS_LOWER ; 
 int /*<<< orphan*/  CCLASS_OTHER ; 
 int /*<<< orphan*/  CCLASS_UPPER ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char) ; 

__attribute__((used)) static char_class FUNC3(unsigned char c)
{
  if(FUNC2(c))
    return CCLASS_UPPER;
  if(FUNC1(c))
    return CCLASS_LOWER;
  if(FUNC0(c))
    return CCLASS_DIGIT;
  return CCLASS_OTHER;
}