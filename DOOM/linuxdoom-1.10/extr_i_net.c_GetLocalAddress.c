
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {scalar_t__* h_addr_list; } ;
typedef int hostname ;


 int I_Error (char*,...) ;
 int errno ;
 struct hostent* gethostbyname (char*) ;
 int gethostname (char*,int) ;

int GetLocalAddress (void)
{
    char hostname[1024];
    struct hostent* hostentry;
    int v;


    v = gethostname (hostname, sizeof(hostname));
    if (v == -1)
 I_Error ("GetLocalAddress : gethostname: errno %d",errno);

    hostentry = gethostbyname (hostname);
    if (!hostentry)
 I_Error ("GetLocalAddress : gethostbyname: couldn't get local host");

    return *(int *)hostentry->h_addr_list[0];
}
