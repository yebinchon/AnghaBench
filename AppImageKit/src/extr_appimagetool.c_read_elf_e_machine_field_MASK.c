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
typedef  int int16_t ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int16_t FUNC4(const gchar* file_path) {
    int16_t e_machine = 0x00;
    FILE* file = 0;
    file = FUNC2(file_path, "rb");
    if (file) {
        FUNC3(file, 0x12, SEEK_SET);
        FUNC1((char*) (&e_machine), 0x02, file);
        FUNC0(file);
    }

    return e_machine;
}