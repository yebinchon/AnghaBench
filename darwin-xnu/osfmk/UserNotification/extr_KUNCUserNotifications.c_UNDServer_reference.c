
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ kern_return_t ;
typedef int UNDServerRef ;


 scalar_t__ KERN_SUCCESS ;
 int assert (int) ;
 scalar_t__ host_get_user_notification_port (int ,int *) ;
 int host_priv_self () ;

__attribute__((used)) static UNDServerRef
UNDServer_reference(void)
{
 UNDServerRef UNDServer;
 kern_return_t kr;

 kr = host_get_user_notification_port(host_priv_self(), &UNDServer);
 assert(kr == KERN_SUCCESS);
 return UNDServer;
}
