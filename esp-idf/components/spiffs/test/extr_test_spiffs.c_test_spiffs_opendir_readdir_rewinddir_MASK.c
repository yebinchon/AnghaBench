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
struct dirent {char* d_name; scalar_t__ d_type; } ;
typedef  int /*<<< orphan*/  name_dir_inner_file ;
typedef  int /*<<< orphan*/  name_dir_inner ;
typedef  int /*<<< orphan*/  name_dir_file2 ;
typedef  int /*<<< orphan*/  name_dir_file1 ;
typedef  struct dirent DIR ;

/* Variables and functions */
 scalar_t__ DT_REG ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct dirent*) ; 
 struct dirent* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 struct dirent* FUNC7 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC8 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct dirent*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char const*) ; 
 int FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

void FUNC15(const char* dir_prefix)
{
    char name_dir_inner_file[64];
    char name_dir_inner[64];
    char name_dir_file3[64];
    char name_dir_file2[64];
    char name_dir_file1[64];

    FUNC11(name_dir_inner_file, sizeof(name_dir_inner_file), "%s/inner/3.txt", dir_prefix);
    FUNC11(name_dir_inner, sizeof(name_dir_inner), "%s/inner", dir_prefix);
    FUNC11(name_dir_file3, sizeof(name_dir_file2), "%s/boo.bin", dir_prefix);
    FUNC11(name_dir_file2, sizeof(name_dir_file2), "%s/2.txt", dir_prefix);
    FUNC11(name_dir_file1, sizeof(name_dir_file1), "%s/1.txt", dir_prefix);

    FUNC14(name_dir_inner_file);
    FUNC9(name_dir_inner);
    FUNC14(name_dir_file1);
    FUNC14(name_dir_file2);
    FUNC14(name_dir_file3);
    FUNC9(dir_prefix);

    FUNC13(name_dir_file1, "1\n");
    FUNC13(name_dir_file2, "2\n");
    FUNC13(name_dir_file3, "\01\02\03");
    FUNC13(name_dir_inner_file, "3\n");

    DIR* dir = FUNC5(dir_prefix);
    FUNC1(dir);
    int count = 0;
    const char* names[4];
    while(count < 4) {
        struct dirent* de = FUNC7(dir);
        if (!de) {
            break;
        }
        FUNC6("found '%s'\n", de->d_name);
        if (FUNC12(de->d_name, "1.txt") == 0) {
            FUNC2(de->d_type == DT_REG);
            names[count] = "1.txt";
            ++count;
        } else if (FUNC12(de->d_name, "2.txt") == 0) {
            FUNC2(de->d_type == DT_REG);
            names[count] = "2.txt";
            ++count;
        } else if (FUNC12(de->d_name, "inner/3.txt") == 0) {
            FUNC2(de->d_type == DT_REG);
            names[count] = "inner/3.txt";
            ++count;
        } else if (FUNC12(de->d_name, "boo.bin") == 0) {
            FUNC2(de->d_type == DT_REG);
            names[count] = "boo.bin";
            ++count;
        } else {
            FUNC3("unexpected directory entry");
        }
    }
    FUNC0(count, 4);

    FUNC8(dir);
    struct dirent* de = FUNC7(dir);
    FUNC1(de);
    FUNC0(0, FUNC12(de->d_name, names[0]));
    FUNC10(dir, 3);
    de = FUNC7(dir);
    FUNC1(de);
    FUNC0(0, FUNC12(de->d_name, names[3]));
    FUNC10(dir, 1);
    de = FUNC7(dir);
    FUNC1(de);
    FUNC0(0, FUNC12(de->d_name, names[1]));
    FUNC10(dir, 2);
    de = FUNC7(dir);
    FUNC1(de);
    FUNC0(0, FUNC12(de->d_name, names[2]));

    FUNC0(0, FUNC4(dir));
}