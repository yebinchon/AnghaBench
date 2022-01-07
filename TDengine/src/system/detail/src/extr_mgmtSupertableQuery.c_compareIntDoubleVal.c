
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int DEFAULT_COMP (int ,int ) ;
 int GET_DOUBLE_VAL (void const*) ;
 int GET_INT64_VAL (void const*) ;

__attribute__((used)) static int32_t compareIntDoubleVal(const void* pLeft, const void* pRight) {
  DEFAULT_COMP(GET_INT64_VAL(pLeft), GET_DOUBLE_VAL(pRight));
}
