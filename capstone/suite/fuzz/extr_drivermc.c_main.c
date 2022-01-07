
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 int LLVMFuzzerTestOneInput (int*,size_t) ;
 int MAX_INSTR_SIZE ;
 int MAX_LINE_SIZE ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int printf (char*,...) ;
 int sscanf (char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char** argv)
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

        fp = fopen(argv[i], "rb");
        if (fp == ((void*)0)) {
            return 2;
        }
        printf("Trying %s\n", argv[i]);
        if (fgets(line, MAX_LINE_SIZE, fp) == ((void*)0)) {
            break;
        }
        if (line[0] == '#') {
            if (sscanf(line, "# %[^,], %[^,]", arch, mode) != 2) {
                printf("Wrong mode %s\n", line);
                return 1;
            }
            if (strcmp(arch, "CS_ARCH_X86") == 0 && strcmp(mode, "CS_MODE_32") == 0) {
                Data[0] = 0;
            } else if (strcmp(arch, "CS_ARCH_X86") == 0 && strcmp(mode, "CS_MODE_64") == 0) {
                Data[0] = 1;
            } else if (strcmp(arch, "CS_ARCH_ARM") == 0 && strcmp(mode, "CS_MODE_ARM") == 0) {
                Data[0] = 2;
            } else if (strcmp(arch, "CS_ARCH_ARM") == 0 && strcmp(mode, "CS_MODE_THUMB") == 0) {
                Data[0] = 3;
            } else if (strcmp(arch, "CS_ARCH_ARM") == 0 && strcmp(mode, "CS_MODE_ARM+CS_MODE_V8") == 0) {
                Data[0] = 4;
            } else if (strcmp(arch, "CS_ARCH_ARM") == 0 && strcmp(mode, "CS_MODE_THUMB+CS_MODE_V8") == 0) {
                Data[0] = 5;
            } else if (strcmp(arch, "CS_ARCH_ARM") == 0 && strcmp(mode, "CS_MODE_THUMB+CS_MODE_MCLASS") == 0) {
                Data[0] = 6;
            } else if (strcmp(arch, "CS_ARCH_ARM64") == 0 && strcmp(mode, "0") == 0) {
                Data[0] = 7;
            } else if (strcmp(arch, "CS_ARCH_MIPS") == 0 && strcmp(mode, "CS_MODE_MIPS32+CS_MODE_BIG_ENDIAN") == 0) {
                Data[0] = 8;
            } else if (strcmp(arch, "CS_ARCH_MIPS") == 0 && strcmp(mode, "CS_MODE_MIPS32+CS_MODE_MICRO") == 0) {
                Data[0] = 9;
            } else if (strcmp(arch, "CS_ARCH_MIPS") == 0 && strcmp(mode, "CS_MODE_MIPS64") == 0) {
                Data[0] = 10;
            } else if (strcmp(arch, "CS_ARCH_MIPS") == 0 && strcmp(mode, "CS_MODE_MIPS32") == 0) {
                Data[0] = 11;
            } else if (strcmp(arch, "CS_ARCH_MIPS") == 0 && strcmp(mode, "CS_MODE_MIPS64+CS_MODE_BIG_ENDIAN") == 0) {
                Data[0] = 12;
            } else if (strcmp(arch, "CS_ARCH_MIPS") == 0 && strcmp(mode, "CS_MODE_MIPS32+CS_MODE_MICRO+CS_MODE_BIG_ENDIAN") == 0) {
                Data[0] = 13;
            } else if (strcmp(arch, "CS_ARCH_MIPS") == 0 && strcmp(mode, "CS_MODE_MIPS32+CS_MODE_BIG_ENDIAN+CS_MODE_MICRO") == 0) {
                Data[0] = 13;
            } else if (strcmp(arch, "CS_ARCH_PPC") == 0 && strcmp(mode, "CS_MODE_BIG_ENDIAN") == 0) {
                Data[0] = 14;
            } else if (strcmp(arch, "CS_ARCH_SPARC") == 0 && strcmp(mode, "CS_MODE_BIG_ENDIAN") == 0) {
                Data[0] = 15;
            } else if (strcmp(arch, "CS_ARCH_SPARC") == 0 && strcmp(mode, "CS_MODE_BIG_ENDIAN + CS_MODE_V9") == 0) {
                Data[0] = 16;
            } else if (strcmp(arch, "CS_ARCH_SYSZ") == 0 && strcmp(mode, "0") == 0) {
                Data[0] = 17;
            } else if (strcmp(arch, "CS_ARCH_XCORE") == 0 && strcmp(mode, "0") == 0) {
                Data[0] = 18;
            } else if (strcmp(arch, "CS_ARCH_MIPS") == 0 && strcmp(mode, "CS_MODE_MIPS32R6+CS_MODE_BIG_ENDIAN") == 0) {
                Data[0] = 19;
            } else if (strcmp(arch, "CS_ARCH_MIPS") == 0 && strcmp(mode, "CS_MODE_MIPS32R6+CS_MODE_MICRO+CS_MODE_BIG_ENDIAN") == 0) {
                Data[0] = 20;
            } else if (strcmp(arch, "CS_ARCH_MIPS") == 0 && strcmp(mode, "CS_MODE_MIPS32R6") == 0) {
                Data[0] = 21;
            } else if (strcmp(arch, "CS_ARCH_MIPS") == 0 && strcmp(mode, "CS_MODE_MIPS32R6+CS_MODE_MICRO") == 0) {
                Data[0] = 22;
            } else if (strcmp(arch, "CS_ARCH_M68K") == 0 && strcmp(mode, "0") == 0) {
                Data[0] = 23;
            } else if (strcmp(arch, "CS_ARCH_M680X") == 0 && strcmp(mode, "CS_MODE_M680X_6809") == 0) {
                Data[0] = 24;
            } else if (strcmp(arch, "CS_ARCH_EVM") == 0 && strcmp(mode, "0") == 0) {
                Data[0] = 25;
            } else {
                printf("Unknown mode\n");

                return 1;
            }
        } else {
            printf("No mode\n");

            return 1;
        }

        while(1) {
            if (fgets(line, MAX_LINE_SIZE, fp) == ((void*)0)) {
                break;
            }
            Size = 1;


            while (sscanf(line+(Size-1)*5, "0x%02x", &value) == 1) {
                Data[Size] = value;
                Size++;
                if (line[(Size-1)*5-1] != ',') {

                    break;
                } else if (MAX_LINE_SIZE < (Size-1)*5) {
                    printf("Line overflow\n");
                    return 1;
                }
            }

            LLVMFuzzerTestOneInput(Data, Size);
        }
        fclose(fp);
    }
    return 0;
}
