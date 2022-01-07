
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ reflen; int data; } ;
typedef TYPE_1__ yxml_t ;
typedef int yxml_ret_t ;


 int YXML_OK ;
 int memset (int ,int ,int) ;

__attribute__((used)) static inline yxml_ret_t yxml_refstart(yxml_t *x, unsigned ch) {
 memset(x->data, 0, sizeof(x->data));
 x->reflen = 0;
 return YXML_OK;
}
