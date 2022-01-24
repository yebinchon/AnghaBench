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
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 char* FUNC1 (char*) ; 

int FUNC2(char *filename) {
    const char *proto = FUNC1(filename);
    return proto ? (!FUNC0(proto, "http") || !FUNC0(proto, "https")) : 0;
}