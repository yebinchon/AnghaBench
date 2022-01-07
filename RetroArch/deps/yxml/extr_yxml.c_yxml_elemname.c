
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yxml_t ;
typedef int yxml_ret_t ;


 int yxml_pushstackc (int *,unsigned int) ;

__attribute__((used)) static inline yxml_ret_t yxml_elemname (yxml_t *x, unsigned ch) { return yxml_pushstackc(x, ch); }
