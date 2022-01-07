
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long int32_t ;



__attribute__((used)) static int32_t read_int(const char* line, const char** endptr, int* error)
{
    unsigned long result = 0;
    for (; *line>='0' && *line<='9'; line++) {
        if (result > (0x7FFFFFFF - 9) / 10)
            *error = -1;
        result = 10 * result + *line - '0';
    }
    *endptr = line;
    return result;
}
