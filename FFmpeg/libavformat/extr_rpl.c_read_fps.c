
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int den; int num; } ;
typedef TYPE_1__ AVRational ;


 int INT64_MAX ;
 int av_reduce (int *,int *,int,int,int) ;
 int read_int (char const*,char const**,int*) ;

__attribute__((used)) static AVRational read_fps(const char* line, int* error)
{
    int64_t num, den = 1;
    AVRational result;
    num = read_int(line, &line, error);
    if (*line == '.')
        line++;
    for (; *line>='0' && *line<='9'; line++) {

        if (num > (INT64_MAX - 9) / 10 || den > INT64_MAX / 10)
            break;
        num = 10 * num + *line - '0';
        den *= 10;
    }
    if (!num)
        *error = -1;
    av_reduce(&result.num, &result.den, num, den, 0x7FFFFFFF);
    return result;
}
