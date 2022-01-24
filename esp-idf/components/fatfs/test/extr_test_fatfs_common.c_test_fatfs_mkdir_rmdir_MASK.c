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
struct stat {int st_mode; } ;
typedef  int /*<<< orphan*/  name_dir2_file ;
typedef  int /*<<< orphan*/  name_dir2 ;
typedef  int /*<<< orphan*/  name_dir1 ;

/* Variables and functions */
 int S_IFDIR ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void FUNC9(const char* filename_prefix)
{
    char name_dir1[64];
    char name_dir2[64];
    char name_dir2_file[64];
    FUNC5(name_dir1, sizeof(name_dir1), "%s1", filename_prefix);
    FUNC5(name_dir2, sizeof(name_dir2), "%s2", filename_prefix);
    FUNC5(name_dir2_file, sizeof(name_dir2_file), "%s2/1.txt", filename_prefix);

    FUNC0(0, FUNC3(name_dir1, 0755));
    struct stat st;
    FUNC0(0, FUNC6(name_dir1, &st));
    FUNC2(st.st_mode & S_IFDIR);
    FUNC1(st.st_mode & S_IFREG);
    FUNC0(0, FUNC4(name_dir1));
    FUNC0(-1, FUNC6(name_dir1, &st));

    FUNC0(0, FUNC3(name_dir2, 0755));
    FUNC7(name_dir2_file, "foo\n");
    FUNC0(0, FUNC6(name_dir2, &st));
    FUNC2(st.st_mode & S_IFDIR);
    FUNC1(st.st_mode & S_IFREG);
    FUNC0(0, FUNC6(name_dir2_file, &st));
    FUNC1(st.st_mode & S_IFDIR);
    FUNC2(st.st_mode & S_IFREG);
    FUNC0(-1, FUNC4(name_dir2));
    FUNC0(0, FUNC8(name_dir2_file));
    FUNC0(0, FUNC4(name_dir2));
}