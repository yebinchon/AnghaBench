
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tm {int dummy; } ;
typedef int maps ;
struct TYPE_2__ {char* member_0; char* member_1; int format; int pattern; } ;
typedef TYPE_1__ datemap ;


 int av_small_strptime (char const*,int ,struct tm*) ;
 scalar_t__ hb_validate_param_string (int ,char const*) ;

__attribute__((used)) static int
parse_datestring(const char *src, struct tm *tm)
{
    datemap ymdThmsZ = {"[0-9]{4}-[0-1]?[0-9]-[0-3]?[0-9]T[0-9]{2}:[0-9]{2}:[0-9]{2}Z", "%Y-%m-%dT%H:%M:%SZ"};

    datemap maps[1] = { ymdThmsZ };

    for (int i = 0; i < sizeof(maps); i++)
    {
        if (hb_validate_param_string(maps[i].pattern, src))
        {
            av_small_strptime(src, maps[i].format, tm);
            return 1;
        }
    }
    return 0;
}
