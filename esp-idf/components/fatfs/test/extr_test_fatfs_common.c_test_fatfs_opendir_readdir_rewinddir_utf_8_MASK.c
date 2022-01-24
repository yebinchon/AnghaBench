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
typedef  int /*<<< orphan*/  name_dir_file3 ;
typedef  int /*<<< orphan*/  name_dir_file2 ;
typedef  int /*<<< orphan*/  name_dir_file1 ;
typedef  struct dirent DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 scalar_t__ DT_REG ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct dirent*) ; 
 int FUNC5 (char const*,int) ; 
 struct dirent* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 struct dirent* FUNC8 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC9 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct dirent*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char const*) ; 
 int FUNC13 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

void FUNC16(const char* dir_prefix)
{
    char name_dir_inner_file[64];
    char name_dir_inner[64];
    char name_dir_file3[64];
    char name_dir_file2[64];
    char name_dir_file1[64];

    FUNC12(name_dir_inner_file, sizeof(name_dir_inner_file), "%s/内部目录/内部文件.txt", dir_prefix);
    FUNC12(name_dir_inner, sizeof(name_dir_inner), "%s/内部目录", dir_prefix);
    FUNC12(name_dir_file3, sizeof(name_dir_file3), "%s/文件三.bin", dir_prefix);
    FUNC12(name_dir_file2, sizeof(name_dir_file2), "%s/文件二.txt", dir_prefix);
    FUNC12(name_dir_file1, sizeof(name_dir_file1), "%s/文件一.txt", dir_prefix);

    FUNC15(name_dir_inner_file);
    FUNC10(name_dir_inner);
    FUNC15(name_dir_file1);
    FUNC15(name_dir_file2);
    FUNC15(name_dir_file3);
    FUNC10(dir_prefix);

    FUNC0(0, FUNC5(dir_prefix, 0755));
    FUNC14(name_dir_file1, "一号\n");
    FUNC14(name_dir_file2, "二号\n");
    FUNC14(name_dir_file3, "\0一\0二\0三");
    FUNC0(0, FUNC5(name_dir_inner, 0755));
    FUNC14(name_dir_inner_file, "三号\n");

    DIR* dir = FUNC6(dir_prefix);
    FUNC1(dir);
    int count = 0;
    const char* names[4];
    while(count < 4) {
        struct dirent* de = FUNC8(dir);
        if (!de) {
            break;
        }
        FUNC7("found '%s'\n", de->d_name);
        if (FUNC13(de->d_name, "文件一.txt") == 0) {
            FUNC2(de->d_type == DT_REG);
            names[count] = "文件一.txt";
            ++count;
        } else if (FUNC13(de->d_name, "文件二.txt") == 0) {
            FUNC2(de->d_type == DT_REG);
            names[count] = "文件二.txt";
            ++count;
        } else if (FUNC13(de->d_name, "内部目录") == 0) {
            FUNC2(de->d_type == DT_DIR);
            names[count] = "内部目录";
            ++count;
        } else if (FUNC13(de->d_name, "文件三.bin") == 0) {
            FUNC2(de->d_type == DT_REG);
            names[count] = "文件三.bin";
            ++count;
        } else {
            FUNC3("unexpected directory entry");
        }
    }
    FUNC0(count, 4);

    FUNC9(dir);
    struct dirent* de = FUNC8(dir);
    FUNC1(de);
    FUNC0(0, FUNC13(de->d_name, names[0]));
    FUNC11(dir, 3);
    de = FUNC8(dir);
    FUNC1(de);
    FUNC0(0, FUNC13(de->d_name, names[3]));
    FUNC11(dir, 1);
    de = FUNC8(dir);
    FUNC1(de);
    FUNC0(0, FUNC13(de->d_name, names[1]));
    FUNC11(dir, 2);
    de = FUNC8(dir);
    FUNC1(de);
    FUNC0(0, FUNC13(de->d_name, names[2]));

    FUNC0(0, FUNC4(dir));
}