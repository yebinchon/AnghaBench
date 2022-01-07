
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSADATA ;


 int MAKEWORD (int,int ) ;
 int MBEDTLS_ERR_NET_SOCKET_FAILED ;
 int SIGPIPE ;
 int SIG_IGN ;
 scalar_t__ WSAStartup (int ,int *) ;
 int signal (int ,int ) ;
 int wsa_init_done ;

__attribute__((used)) static int net_prepare( void )
{
    signal( SIGPIPE, SIG_IGN );


    return( 0 );
}
