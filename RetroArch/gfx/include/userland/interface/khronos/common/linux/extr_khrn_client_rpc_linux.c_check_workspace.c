
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ KHDISPATCH_WORKSPACE_SIZE ;
 int khrn_platform_malloc (scalar_t__,char*) ;
 int vcos_assert (int) ;
 int workspace ;

__attribute__((used)) static void check_workspace(uint32_t size)
{

   vcos_assert(size <= KHDISPATCH_WORKSPACE_SIZE);
   if (!workspace) {
      workspace = khrn_platform_malloc(KHDISPATCH_WORKSPACE_SIZE, "rpc_workspace");
      vcos_assert(workspace);
   }
}
