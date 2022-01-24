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
typedef  int /*<<< orphan*/  var ;
struct TestType {scalar_t__ test_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  TestType ; 
 struct TestType* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(var self, var obj) {
  struct TestType* lhs = FUNC0(self, TestType);
  struct TestType* rhs = FUNC0(obj, TestType);
  return (int)(lhs->test_data - rhs->test_data);
}