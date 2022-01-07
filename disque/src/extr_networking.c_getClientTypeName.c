
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *getClientTypeName(int class) {
    switch(class) {
    case 128: return "normal";
    default: return ((void*)0);
    }
}
