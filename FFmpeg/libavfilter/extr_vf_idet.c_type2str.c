
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;







__attribute__((used)) static const char *type2str(Type type)
{
    switch(type) {
        case 129 : return "tff";
        case 131 : return "bff";
        case 130 : return "progressive";
        case 128 : return "undetermined";
    }
    return ((void*)0);
}
