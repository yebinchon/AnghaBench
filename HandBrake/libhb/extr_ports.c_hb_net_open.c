
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_in {int sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {int h_addrtype; int h_length; int h_addr; } ;
struct TYPE_5__ {int socket; } ;
typedef TYPE_1__ hb_net_t ;
typedef int WSADATA ;


 int MAKEWORD (int,int) ;
 int SOCK_STREAM ;
 int WSAStartup (int ,int *) ;
 TYPE_1__* calloc (int,int) ;
 scalar_t__ connect (int ,struct sockaddr*,int) ;
 int free (TYPE_1__*) ;
 struct hostent* gethostbyname (char*) ;
 int hb_log (char*,...) ;
 int htons (int) ;
 int memcpy (int *,int ,int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int socket (int ,int ,int ) ;

hb_net_t * hb_net_open( char * address, int port )
{
    hb_net_t * n = calloc( sizeof( hb_net_t ), 1 );

    struct sockaddr_in sock;
    struct hostent * host;
    if( !( host = gethostbyname( address ) ) )
    {
        hb_log( "gethostbyname failed (%s)", address );
        free( n );
        return ((void*)0);
    }

    memset( &sock, 0, sizeof( struct sockaddr_in ) );
    sock.sin_family = host->h_addrtype;
    sock.sin_port = htons( port );
    memcpy( &sock.sin_addr, host->h_addr, host->h_length );

    if( ( n->socket = socket( host->h_addrtype, SOCK_STREAM, 0 ) ) < 0 )
    {
        hb_log( "socket failed" );
        free( n );
        return ((void*)0);
    }

    if( connect( n->socket, (struct sockaddr *) &sock,
                 sizeof( struct sockaddr_in ) ) < 0 )
    {
        hb_log( "connect failed" );
        free( n );
        return ((void*)0);
    }

    return n;
}
