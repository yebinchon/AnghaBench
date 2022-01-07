
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int field_picture; int mb_type; int * ref_index; int * motion_val; int * tf; int * f; } ;
struct TYPE_6__ {int field_picture; int mb_type; int * ref_index; int * motion_val; int tf; int * f; } ;
typedef TYPE_1__ Picture ;
typedef TYPE_2__ ERPicture ;


 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void set_erpic(ERPicture *dst, Picture *src)
{
    int i;

    memset(dst, 0, sizeof(*dst));
    if (!src) {
        dst->f = ((void*)0);
        dst->tf = ((void*)0);
        return;
    }

    dst->f = src->f;
    dst->tf = &src->tf;

    for (i = 0; i < 2; i++) {
        dst->motion_val[i] = src->motion_val[i];
        dst->ref_index[i] = src->ref_index[i];
    }

    dst->mb_type = src->mb_type;
    dst->field_picture = src->field_picture;
}
