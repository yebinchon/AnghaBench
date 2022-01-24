#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  header ;
struct TYPE_4__ {int e_shoff; int e_shnum; int e_shstrndx; } ;
typedef  TYPE_1__ Elf32_Ehdr ;

/* Variables and functions */
 TYPE_1__* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  MS_SYNC ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

int FUNC7(int argc, char** argv) {
    int f;
    static Elf32_Ehdr* header;

    FUNC6(".: Elf corrupt :.\n");

    if(argc < 2){
        FUNC6("Usage: %s file", argv[0]);
        return 1;
    }

    if((f = FUNC4(argv[1], O_RDWR)) < 0){
        FUNC5("open");
        return 1;
    }

    //MAP_SHARED is required to actually update the file
    if((header = (Elf32_Ehdr *) FUNC1(NULL, sizeof(header), PROT_READ | PROT_WRITE, MAP_SHARED, f, 0)) == MAP_FAILED){
        FUNC5("mmap");
        FUNC0(f);
        return 1;
    }

    FUNC6("[*] Current header values:\n");
    FUNC6("\te_shoff:%d\n\te_shnum:%d\n\te_shstrndx:%d\n",
            header->e_shoff, header->e_shnum, header->e_shstrndx);

    header->e_shoff = 0xffff;
    header->e_shnum = 0xffff;
    header->e_shstrndx = 0xffff;

    FUNC6("[*] Patched header values:\n");
    FUNC6("\te_shoff:%d\n\te_shnum:%d\n\te_shstrndx:%d\n",
            header->e_shoff, header->e_shnum, header->e_shstrndx);

    if(FUNC2(NULL, 0, MS_SYNC) == -1){
        FUNC5("msync");
        FUNC0(f);
        return 1;
    }

    FUNC0(f);
    FUNC3(header, 0);
    FUNC6("You should no more be able to run \"%s\" inside GDB\n", argv[1]);
    return 0;
}