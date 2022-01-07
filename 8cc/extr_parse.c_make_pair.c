
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void** malloc (int) ;

void *make_pair(void *first, void *second) {
    void **r = malloc(sizeof(void *) * 2);
    r[0] = first;
    r[1] = second;
    return r;
}
