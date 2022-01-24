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
 uintptr_t FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  nextTimerId ; 

__attribute__((used)) static uintptr_t FUNC1() {
  uintptr_t id;
  do {
    id = FUNC0(&nextTimerId, 1);
  } while (id == 0);
  return id;
}