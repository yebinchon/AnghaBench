
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* data; } ;
typedef TYPE_1__ yxml_t ;
typedef int yxml_ret_t ;


 int YXML_ATTRVAL ;
 int yxml_setchar (scalar_t__*,int) ;

__attribute__((used)) static inline yxml_ret_t yxml_dataattr(yxml_t *x, unsigned ch) {

 yxml_setchar(x->data, ch == 0x9 || ch == 0xa ? 0x20 : ch);
 x->data[1] = 0;
 return YXML_ATTRVAL;
}
