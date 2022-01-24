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
typedef  struct Type* var ;
struct Type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  Type ; 
 int /*<<< orphan*/  FUNC0 (struct Type*) ; 
 struct Type* FUNC1 (struct Type*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(var self, var obj) {
  struct Type* objt = FUNC1(obj, Type);
  return FUNC2(FUNC0(self), FUNC0(objt));
}