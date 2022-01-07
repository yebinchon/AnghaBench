
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int version; scalar_t__ category; int (* get_category ) (void*) ;} ;
typedef TYPE_1__ AVClass ;


 int AV_CLASS_CATEGORY_NA ;
 scalar_t__ AV_CLASS_CATEGORY_NB ;
 int stub1 (void*) ;

__attribute__((used)) static int get_category(void *ptr){
    AVClass *avc = *(AVClass **) ptr;
    if( !avc
        || (avc->version&0xFF)<100
        || avc->version < (51 << 16 | 59 << 8)
        || avc->category >= AV_CLASS_CATEGORY_NB) return AV_CLASS_CATEGORY_NA + 16;

    if(avc->get_category)
        return avc->get_category(ptr) + 16;

    return avc->category + 16;
}
