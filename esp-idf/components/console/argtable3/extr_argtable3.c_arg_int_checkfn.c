
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mincount; } ;
struct arg_int {scalar_t__ count; TYPE_1__ hdr; } ;


 int EMINCOUNT ;

__attribute__((used)) static int arg_int_checkfn(struct arg_int *parent)
{
    int errorcode = (parent->count < parent->hdr.mincount) ? EMINCOUNT : 0;

    return errorcode;
}
