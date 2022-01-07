
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RepeatedField ;






__attribute__((used)) static const char *rep2str(RepeatedField repeated_field)
{
    switch(repeated_field) {
        case 129 : return "neither";
        case 128 : return "top";
        case 130 : return "bottom";
    }
    return ((void*)0);
}
