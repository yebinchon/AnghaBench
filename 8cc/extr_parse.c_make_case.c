
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int beg; int end; char* label; } ;
typedef TYPE_1__ Case ;


 TYPE_1__* malloc (int) ;

__attribute__((used)) static Case *make_case(int beg, int end, char *label) {
    Case *r = malloc(sizeof(Case));
    r->beg = beg;
    r->end = end;
    r->label = label;
    return r;
}
