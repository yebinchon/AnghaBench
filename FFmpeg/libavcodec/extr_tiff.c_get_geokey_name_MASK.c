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
 int /*<<< orphan*/  CONF ; 
 int /*<<< orphan*/  GEOG ; 
 int /*<<< orphan*/  PROJ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VERT ; 
 int /*<<< orphan*/  conf ; 
 int /*<<< orphan*/  geog ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  proj ; 
 int /*<<< orphan*/  vert ; 

__attribute__((used)) static const char *FUNC1(int key)
{
    FUNC0(VERT, vert, name);
    FUNC0(PROJ, proj, name);
    FUNC0(GEOG, geog, name);
    FUNC0(CONF, conf, name);

    return NULL;
}