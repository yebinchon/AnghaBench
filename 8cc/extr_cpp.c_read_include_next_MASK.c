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
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ File ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  std_include_path ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(Token *hash, File *file) {
    // [GNU] #include_next is a directive to include the "next" file
    // from the search path. This feature is used to override a
    // header file without getting into infinite inclusion loop.
    // This directive doesn't distinguish <> and "".
    bool std;
    char *filename = FUNC4(hash, &std);
    FUNC1();
    if (filename[0] == '/') {
        if (FUNC6("/", filename, false))
            return;
        goto err;
    }
    char *cur = FUNC3(file->name);
    int i = 0;
    for (; i < FUNC8(std_include_path); i++) {
        char *dir = FUNC7(std_include_path, i);
        if (!FUNC5(cur, FUNC3(FUNC2("%s/%s", dir, filename))))
            break;
    }
    for (i++; i < FUNC8(std_include_path); i++)
        if (FUNC6(FUNC7(std_include_path, i), filename, false))
            return;
  err:
    FUNC0(hash, "cannot find header file: %s", filename);
}