
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nspace_type_t ;


 int NAMESPACE_HANDLER_EVENT_TYPE_MASK ;


 int NSPACE_HANDLER_NSPACE ;
 int NSPACE_HANDLER_SNAPSHOT ;
 int printf (char*,int) ;

__attribute__((used)) static inline nspace_type_t nspace_type_for_op(uint64_t op)
{
 switch(op & NAMESPACE_HANDLER_EVENT_TYPE_MASK) {
  case 129:
   return NSPACE_HANDLER_NSPACE;
  case 128:
   return NSPACE_HANDLER_SNAPSHOT;
  default:
   printf("nspace_type_for_op: invalid op mask %llx\n", op & NAMESPACE_HANDLER_EVENT_TYPE_MASK);
   return NSPACE_HANDLER_NSPACE;
 }
}
