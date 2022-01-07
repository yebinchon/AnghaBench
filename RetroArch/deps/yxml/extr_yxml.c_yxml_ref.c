
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reflen; scalar_t__ data; } ;
typedef TYPE_1__ yxml_t ;
typedef int yxml_ret_t ;


 int YXML_EREF ;
 int YXML_OK ;
 int yxml_setchar (scalar_t__,unsigned int) ;

__attribute__((used)) static yxml_ret_t yxml_ref(yxml_t *x, unsigned ch) {
 if(x->reflen >= sizeof(x->data)-1)
  return YXML_EREF;
 yxml_setchar(x->data+x->reflen, ch);
 x->reflen++;
 return YXML_OK;
}
