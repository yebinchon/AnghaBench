
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KAUTH_SCOPE_FILEOP ;
 int KAUTH_SCOPE_GENERIC ;
 int KAUTH_SCOPE_PROCESS ;
 int * kauth_authorize_generic_callback ;
 int * kauth_authorize_process_callback ;
 int kauth_lck_grp ;
 void* kauth_register_scope (int ,int *,int *) ;
 void* kauth_scope_fileop ;
 void* kauth_scope_generic ;
 int kauth_scope_mtx ;
 void* kauth_scope_process ;
 int lck_mtx_alloc_init (int ,int ) ;

__attribute__((used)) static void
kauth_scope_init(void)
{
 kauth_scope_mtx = lck_mtx_alloc_init(kauth_lck_grp, 0 );
 kauth_scope_process = kauth_register_scope(KAUTH_SCOPE_PROCESS, kauth_authorize_process_callback, ((void*)0));
 kauth_scope_generic = kauth_register_scope(KAUTH_SCOPE_GENERIC, kauth_authorize_generic_callback, ((void*)0));
 kauth_scope_fileop = kauth_register_scope(KAUTH_SCOPE_FILEOP, ((void*)0), ((void*)0));
}
