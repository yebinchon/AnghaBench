
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ACLCHECK_NOT_OWNER ;
 int GetUserId () ;
 int OBJECT_FUNCTION ;
 int aclcheck_error (int ,int ,int ) ;
 int get_func_name (int ) ;
 int pg_proc_ownercheck (int ,int ) ;

void
EnsureFunctionOwner(Oid functionId)
{
 if (!pg_proc_ownercheck(functionId, GetUserId()))
 {
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_FUNCTION,
        get_func_name(functionId));
 }
}
