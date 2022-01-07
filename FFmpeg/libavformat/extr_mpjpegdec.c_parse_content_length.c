
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int ERANGE ;
 long INT_MAX ;
 long LONG_MAX ;
 long LONG_MIN ;
 int errno ;
 long strtol (char const*,int *,int) ;

__attribute__((used)) static int parse_content_length(const char *value)
{
    long int val = strtol(value, ((void*)0), 10);

    if (val == LONG_MIN || val == LONG_MAX)
        return AVERROR(errno);
    if (val > INT_MAX)
        return AVERROR(ERANGE);
    return val;
}
