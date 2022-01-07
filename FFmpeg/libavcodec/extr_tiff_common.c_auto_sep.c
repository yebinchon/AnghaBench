
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *auto_sep(int count, const char *sep, int i, int columns)
{
    if (sep)
        return i ? sep : "";
    if (i && i%columns) {
        return ", ";
    } else
        return columns < count ? "\n" : "";
}
