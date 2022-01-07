
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *get_bool_name(int val)
{
    if (val < 0)
        return "auto";
    return val ? "true" : "false";
}
