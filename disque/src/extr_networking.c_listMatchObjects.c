
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int equalStringObjects (void*,void*) ;

int listMatchObjects(void *a, void *b) {
    return equalStringObjects(a,b);
}
