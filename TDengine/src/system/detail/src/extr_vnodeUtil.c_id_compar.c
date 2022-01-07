
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int DEFAULT_COMP (int ,int ) ;
 int GET_INT16_VAL (void const*) ;

__attribute__((used)) static int32_t id_compar(const void* left, const void* right) {
  DEFAULT_COMP(GET_INT16_VAL(left), GET_INT16_VAL(right));
}
