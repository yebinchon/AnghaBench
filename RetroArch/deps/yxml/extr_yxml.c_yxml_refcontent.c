
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yxml_t ;
typedef int yxml_ret_t ;


 int YXML_CONTENT ;
 int yxml_refend (int *,int ) ;

__attribute__((used)) static inline yxml_ret_t yxml_refcontent(yxml_t *x, unsigned ch) { return yxml_refend(x, YXML_CONTENT); }
