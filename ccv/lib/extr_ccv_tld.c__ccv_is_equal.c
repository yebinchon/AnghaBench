
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rect; } ;
typedef TYPE_1__ ccv_comp_t ;


 double _ccv_tld_rect_intersect (int ,int ) ;

__attribute__((used)) static int _ccv_is_equal(const void* _r1, const void* _r2, void* data)
{
 const ccv_comp_t* r1 = (const ccv_comp_t*)_r1;
 const ccv_comp_t* r2 = (const ccv_comp_t*)_r2;
 return _ccv_tld_rect_intersect(r1->rect, r2->rect) > 0.5;
}
