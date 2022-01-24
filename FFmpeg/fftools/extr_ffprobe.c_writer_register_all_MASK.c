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
 int /*<<< orphan*/  compact_writer ; 
 int /*<<< orphan*/  csv_writer ; 
 int /*<<< orphan*/  default_writer ; 
 int /*<<< orphan*/  flat_writer ; 
 int /*<<< orphan*/  ini_writer ; 
 int /*<<< orphan*/  json_writer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xml_writer ; 

__attribute__((used)) static void FUNC1(void)
{
    static int initialized;

    if (initialized)
        return;
    initialized = 1;

    FUNC0(&default_writer);
    FUNC0(&compact_writer);
    FUNC0(&csv_writer);
    FUNC0(&flat_writer);
    FUNC0(&ini_writer);
    FUNC0(&json_writer);
    FUNC0(&xml_writer);
}