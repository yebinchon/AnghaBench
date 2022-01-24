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
typedef  int access_t ;

/* Variables and functions */
 int enabled_checks ; 
 scalar_t__ kasan_enabled ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline bool
FUNC1(access_t access)
{
	return kasan_enabled && (enabled_checks & access) && !FUNC0(access);
}