
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opt ;
typedef int SOCKET_T ;
typedef int BOOL ;


 int FALSE ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int TRUE ;
 int setsockopt (int ,int ,int ,char const*,int) ;

void vc_container_net_private_set_reusable( SOCKET_T sock, bool enable )
{
   BOOL opt = enable ? TRUE : FALSE;

   (void)setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, (const char *)&opt, sizeof(opt));
}
