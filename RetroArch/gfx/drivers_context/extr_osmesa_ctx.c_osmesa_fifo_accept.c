
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pollfd {int events; int fd; } ;
struct TYPE_3__ {scalar_t__ client; int socket; } ;
typedef TYPE_1__ gfx_ctx_osmesa_data_t ;


 int POLLIN ;
 scalar_t__ accept (int ,int *,int *) ;
 int fprintf (int ,char*,scalar_t__) ;
 int perror (char*) ;
 int poll (struct pollfd*,int,int ) ;
 int stderr ;

__attribute__((used)) static void osmesa_fifo_accept(gfx_ctx_osmesa_data_t *osmesa)
{
   int res;
   struct pollfd fds;
   fds.fd = osmesa->socket;
   fds.events = POLLIN;

   if (osmesa->client >= 0)
      return;

   res = poll(&fds, 1, 0);

   if (res < 0)
      perror("[osmesa] poll() error");
   else if (res > 0)
   {
      osmesa->client = accept(osmesa->socket, ((void*)0), ((void*)0));
      fprintf(stderr, "[osmesa] Client %i connected.\n", osmesa->client);
   }
}
