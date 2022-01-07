
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_str_vlen (char**) ;

__attribute__((used)) static const char * field_value(char ** style, int index)
{
    if (index >= 0 && index < hb_str_vlen(style))
    {
        return style[index];
    }
    return ((void*)0);
}
