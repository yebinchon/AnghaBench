
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ av_stristart (char const*,char const*,int *) ;
 scalar_t__ av_stristr (char const*,char const*) ;

__attribute__((used)) static inline int has_header(const char *str, const char *header)
{

    if (!str)
        return 0;
    return av_stristart(str, header + 2, ((void*)0)) || av_stristr(str, header);
}
