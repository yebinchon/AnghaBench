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
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GDrive ;

/* Variables and functions */
 int /*<<< orphan*/  G_VOLUME_IDENTIFIER_KIND_UNIX_DEVICE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static gchar*
FUNC1(GDrive *gd)
{
    return FUNC0(gd, G_VOLUME_IDENTIFIER_KIND_UNIX_DEVICE);
}