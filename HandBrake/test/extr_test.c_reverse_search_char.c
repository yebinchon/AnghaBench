
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
reverse_search_char(const char *front, const char *back, char delim)
{
    while (back != front && *back != delim)
        back--;
    return back;
}
