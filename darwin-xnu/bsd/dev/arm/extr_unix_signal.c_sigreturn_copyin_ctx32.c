
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
struct user_ucontext32 {int uc_mcsize; scalar_t__ uc_mcontext; } ;
typedef struct user_ucontext32 mcontext32_t ;


 int EINVAL ;

 int assert (int) ;
 int copyin (int ,struct user_ucontext32*,int) ;
 int current_proc () ;
 int proc_is64bit_data (int ) ;

__attribute__((used)) static int
sigreturn_copyin_ctx32(struct user_ucontext32 *uctx, mcontext32_t *mctx, user_addr_t uctx_addr)
{
 int error;

 assert(!proc_is64bit_data(current_proc()));

 error = copyin(uctx_addr, uctx, sizeof(*uctx));
 if (error) {
  return (error);
 }


 switch (uctx->uc_mcsize) {
 case 128:
  break;
 default:
  return (EINVAL);
 }

 assert(uctx->uc_mcsize == sizeof(*mctx));
 error = copyin((user_addr_t)uctx->uc_mcontext, mctx, uctx->uc_mcsize);
 if (error) {
  return (error);
 }

 return 0;
}
