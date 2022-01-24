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
struct expression {int dummy; } ;
typedef  enum expression_operator { ____Placeholder_expression_operator } expression_operator ;

/* Variables and functions */
 struct expression* FUNC0 (int,int,struct expression**) ; 

__attribute__((used)) static inline struct expression *
FUNC1 (enum expression_operator op, struct expression *bexp,
	   struct expression *tbranch, struct expression *fbranch)
{
  struct expression *args[3];

  args[0] = bexp;
  args[1] = tbranch;
  args[2] = fbranch;
  return FUNC0 (3, op, args);
}