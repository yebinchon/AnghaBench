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
 int /*<<< orphan*/  MESH_LIGHT_BLUE ; 
 int /*<<< orphan*/  MESH_LIGHT_GREEN ; 
 int /*<<< orphan*/  MESH_LIGHT_PINK ; 
 int /*<<< orphan*/  MESH_LIGHT_RED ; 
 int /*<<< orphan*/  MESH_LIGHT_WARNING ; 
 int /*<<< orphan*/  MESH_LIGHT_YELLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(int layer)
{
    switch (layer) {
    case 1:
        FUNC0(MESH_LIGHT_PINK);
        break;
    case 2:
        FUNC0(MESH_LIGHT_YELLOW);
        break;
    case 3:
        FUNC0(MESH_LIGHT_RED);
        break;
    case 4:
        FUNC0(MESH_LIGHT_BLUE);
        break;
    case 5:
        FUNC0(MESH_LIGHT_GREEN);
        break;
    case 6:
        FUNC0(MESH_LIGHT_WARNING);
        break;
    default:
        FUNC0(0);
    }
}