
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int net_thread_marks_t ;
typedef int kauth_cred_t ;
typedef int ifnet_t ;
typedef int errno_t ;


 int NET_THREAD_CKREQ_LLADDR ;
 int current_proc () ;
 int ifnet_lladdr_copy_bytes_internal (int ,void*,size_t,int *) ;
 int kauth_cred_proc_ref (int ) ;
 int kauth_cred_unref (int *) ;
 int net_thread_marks_pop (int ) ;
 int net_thread_marks_push (int ) ;

errno_t
ifnet_guarded_lladdr_copy_bytes(ifnet_t interface, void *lladdr, size_t length)
{




 kauth_cred_t *credp;
 errno_t error;

 credp = ((void*)0);





 credp = ((void*)0);


 error = ifnet_lladdr_copy_bytes_internal(interface, lladdr, length,
     credp);






 return (error);
}
