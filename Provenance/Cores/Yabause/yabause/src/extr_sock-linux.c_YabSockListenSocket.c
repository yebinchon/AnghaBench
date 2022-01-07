
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;
typedef int YabSock ;


 int AF_INET ;
 int INADDR_ANY ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int bind (int ,struct sockaddr*,int) ;
 int errno ;
 int fprintf (int ,char*,int,char*) ;
 int htons (int) ;
 int listen (int ,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int perror (char*) ;
 int setsockopt (int ,int ,int ,char*,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 char* strerror (int ) ;

int YabSockListenSocket(int port, YabSock *sock)
{
   struct sockaddr_in addr;
   char opt = 1;

   sock[0] = socket(AF_INET, SOCK_STREAM, 0);

   if (setsockopt(sock[0], SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(int)) == -1)
   {
      perror("setsockopt");
      return -1;
   }

   memset(&addr, 0, sizeof(struct sockaddr_in));
   addr.sin_family = AF_INET;
   addr.sin_addr.s_addr = INADDR_ANY;
   addr.sin_port = htons(port);
   if (bind(sock[0], (struct sockaddr *) &addr, sizeof(addr)) == -1)
   {
      fprintf(stderr, "Can't bind to port %d: %s\n", port, strerror(errno));
      return -1;
   }

   if (listen(sock[0], 3) == -1)
   {
      perror("listen");
      return -1;
   }

   return 0;
}
