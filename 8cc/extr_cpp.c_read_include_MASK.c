#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Token ;
struct TYPE_3__ {scalar_t__ name; } ;
typedef  TYPE_1__ File ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  std_include_path ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(Token *hash, File *file, bool isimport) {
    bool std;
    char *filename = FUNC3(hash, &std);
    FUNC2();
    if (filename[0] == '/') {
        if (FUNC5("/", filename, isimport))
            return;
        goto err;
    }
    if (!std) {
        char *dir = file->name ? FUNC0(FUNC4(file->name)) : ".";
        if (FUNC5(dir, filename, isimport))
            return;
    }
    for (int i = 0; i < FUNC7(std_include_path); i++)
        if (FUNC5(FUNC6(std_include_path, i), filename, isimport))
            return;
  err:
    FUNC1(hash, "cannot find header file: %s", filename);
}