
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int initoff; } ;
typedef TYPE_1__ Node ;



__attribute__((used)) static int comp_init(const void *p, const void *q) {
    int x = (*(Node **)p)->initoff;
    int y = (*(Node **)q)->initoff;
    if (x < y) return -1;
    if (x > y) return 1;
    return 0;
}
