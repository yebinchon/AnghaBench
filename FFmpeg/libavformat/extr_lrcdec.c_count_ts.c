
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int64_t ;



__attribute__((used)) static int64_t count_ts(const char *p)
{
    int64_t offset = 0;
    int in_brackets = 0;

    for(;;) {
        if(p[offset] == ' ' || p[offset] == '\t') {
            offset++;
        } else if(p[offset] == '[') {
            offset++;
            in_brackets++;
        } else if (p[offset] == ']' && in_brackets) {
            offset++;
            in_brackets--;
        } else if(in_brackets &&
                 (p[offset] == ':' || p[offset] == '.' || p[offset] == '-' ||
                 (p[offset] >= '0' && p[offset] <= '9'))) {
            offset++;
        } else {
            break;
        }
    }
    return offset;
}
