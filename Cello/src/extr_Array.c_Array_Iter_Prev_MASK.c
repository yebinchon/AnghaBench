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
typedef  scalar_t__ var ;
struct Array {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct Array*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct Array*) ; 
 scalar_t__ Terminal ; 

__attribute__((used)) static var FUNC2(var self, var curr) {
  struct Array* a = self;
  if (curr < FUNC0(a, 0)) {
    return Terminal;
  } else {
    return (char*)curr - FUNC1(a);
  }
}