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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,size_t) ; 
 int MAX_INSTR_SIZE ; 
 int MAX_LINE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (char*,char*,...) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

int FUNC7(int argc, char** argv)
{
    FILE * fp;
    uint8_t Data[MAX_INSTR_SIZE];
    char line[MAX_LINE_SIZE];
    size_t Size;
    char arch[MAX_LINE_SIZE];
    char mode[MAX_LINE_SIZE];
    unsigned int value;
    int i;

    if (argc < 2) {
        return 1;
    }
    for (i = 1; i < argc; i++) {
        //opens the file, get its size, and reads it into a buffer
        fp = FUNC3(argv[i], "rb");
        if (fp == NULL) {
            return 2;
        }
        FUNC4("Trying %s\n", argv[i]);
        if (FUNC2(line, MAX_LINE_SIZE, fp) == NULL) {
            break;
        }
        if (line[0] == '#') {
            if (FUNC5(line, "# %[^,], %[^,]", arch, mode) != 2) {
                FUNC4("Wrong mode %s\n", line);
                return 1;
            }
            if (FUNC6(arch, "CS_ARCH_X86") == 0 && FUNC6(mode, "CS_MODE_32") == 0) {
                Data[0] = 0;
            } else if (FUNC6(arch, "CS_ARCH_X86") == 0 && FUNC6(mode, "CS_MODE_64") == 0) {
                Data[0] = 1;
            } else if (FUNC6(arch, "CS_ARCH_ARM") == 0 && FUNC6(mode, "CS_MODE_ARM") == 0) {
                Data[0] = 2;
            } else if (FUNC6(arch, "CS_ARCH_ARM") == 0 && FUNC6(mode, "CS_MODE_THUMB") == 0) {
                Data[0] = 3;
            } else if (FUNC6(arch, "CS_ARCH_ARM") == 0 && FUNC6(mode, "CS_MODE_ARM+CS_MODE_V8") == 0) {
                Data[0] = 4;
            } else if (FUNC6(arch, "CS_ARCH_ARM") == 0 && FUNC6(mode, "CS_MODE_THUMB+CS_MODE_V8") == 0) {
                Data[0] = 5;
            } else if (FUNC6(arch, "CS_ARCH_ARM") == 0 && FUNC6(mode, "CS_MODE_THUMB+CS_MODE_MCLASS") == 0) {
                Data[0] = 6;
            } else if (FUNC6(arch, "CS_ARCH_ARM64") == 0 && FUNC6(mode, "0") == 0) {
                Data[0] = 7;
            } else if (FUNC6(arch, "CS_ARCH_MIPS") == 0 && FUNC6(mode, "CS_MODE_MIPS32+CS_MODE_BIG_ENDIAN") == 0) {
                Data[0] = 8;
            } else if (FUNC6(arch, "CS_ARCH_MIPS") == 0 && FUNC6(mode, "CS_MODE_MIPS32+CS_MODE_MICRO") == 0) {
                Data[0] = 9;
            } else if (FUNC6(arch, "CS_ARCH_MIPS") == 0 && FUNC6(mode, "CS_MODE_MIPS64") == 0) {
                Data[0] = 10;
            } else if (FUNC6(arch, "CS_ARCH_MIPS") == 0 && FUNC6(mode, "CS_MODE_MIPS32") == 0) {
                Data[0] = 11;
            } else if (FUNC6(arch, "CS_ARCH_MIPS") == 0 && FUNC6(mode, "CS_MODE_MIPS64+CS_MODE_BIG_ENDIAN") == 0) {
                Data[0] = 12;
            } else if (FUNC6(arch, "CS_ARCH_MIPS") == 0 && FUNC6(mode, "CS_MODE_MIPS32+CS_MODE_MICRO+CS_MODE_BIG_ENDIAN") == 0) {
                Data[0] = 13;
            } else if (FUNC6(arch, "CS_ARCH_MIPS") == 0 && FUNC6(mode, "CS_MODE_MIPS32+CS_MODE_BIG_ENDIAN+CS_MODE_MICRO") == 0) {
                Data[0] = 13;
            } else if (FUNC6(arch, "CS_ARCH_PPC") == 0 && FUNC6(mode, "CS_MODE_BIG_ENDIAN") == 0) {
                Data[0] = 14;
            } else if (FUNC6(arch, "CS_ARCH_SPARC") == 0 && FUNC6(mode, "CS_MODE_BIG_ENDIAN") == 0) {
                Data[0] = 15;
            } else if (FUNC6(arch, "CS_ARCH_SPARC") == 0 && FUNC6(mode, "CS_MODE_BIG_ENDIAN + CS_MODE_V9") == 0) {
                Data[0] = 16;
            } else if (FUNC6(arch, "CS_ARCH_SYSZ") == 0 && FUNC6(mode, "0") == 0) {
                Data[0] = 17;
            } else if (FUNC6(arch, "CS_ARCH_XCORE") == 0 && FUNC6(mode, "0") == 0) {
                Data[0] = 18;
            } else if (FUNC6(arch, "CS_ARCH_MIPS") == 0 && FUNC6(mode, "CS_MODE_MIPS32R6+CS_MODE_BIG_ENDIAN") == 0) {
                Data[0] = 19;
            } else if (FUNC6(arch, "CS_ARCH_MIPS") == 0 && FUNC6(mode, "CS_MODE_MIPS32R6+CS_MODE_MICRO+CS_MODE_BIG_ENDIAN") == 0) {
                Data[0] = 20;
            } else if (FUNC6(arch, "CS_ARCH_MIPS") == 0 && FUNC6(mode, "CS_MODE_MIPS32R6") == 0) {
                Data[0] = 21;
            } else if (FUNC6(arch, "CS_ARCH_MIPS") == 0 && FUNC6(mode, "CS_MODE_MIPS32R6+CS_MODE_MICRO") == 0) {
                Data[0] = 22;
            } else if (FUNC6(arch, "CS_ARCH_M68K") == 0 && FUNC6(mode, "0") == 0) {
                Data[0] = 23;
            } else if (FUNC6(arch, "CS_ARCH_M680X") == 0 && FUNC6(mode, "CS_MODE_M680X_6809") == 0) {
                Data[0] = 24;
            } else if (FUNC6(arch, "CS_ARCH_EVM") == 0 && FUNC6(mode, "0") == 0) {
                Data[0] = 25;
            } else {
                FUNC4("Unknown mode\n");
                //fail instead of continue
                return 1;
            }
        } else {
            FUNC4("No mode\n");
            //fail instead of continue
            return 1;
        }

        while(1) {
            if (FUNC2(line, MAX_LINE_SIZE, fp) == NULL) {
                break;
            }
            Size = 1;
            // we start line at offset 0 and Data buffer at offset 1
            // since Data[0] is option : arch + mode
            while (FUNC5(line+(Size-1)*5, "0x%02x", &value) == 1) {
                Data[Size] = value;
                Size++;
                if (line[(Size-1)*5-1] != ',') {
                    //end of pattern
                    break;
                } else if (MAX_LINE_SIZE < (Size-1)*5) {
                    FUNC4("Line overflow\n");
                    return 1;
                }
            }
            //lauch fuzzer
            FUNC0(Data, Size);
        }
        FUNC1(fp);
    }
    return 0;
}