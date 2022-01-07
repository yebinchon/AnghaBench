
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int int32_t ;
typedef int AVIOContext ;


 int RPL_LINE_LENGTH ;
 int read_int (char*,char const**,int*) ;
 int read_line (int *,char*,int) ;

__attribute__((used)) static int32_t read_line_and_int(AVIOContext * pb, int* error)
{
    char line[RPL_LINE_LENGTH];
    const char *endptr;
    *error |= read_line(pb, line, sizeof(line));
    return read_int(line, &endptr, error);
}
