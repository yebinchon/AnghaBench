
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_un {int sun_path; int sun_family; } ;
struct TYPE_3__ {scalar_t__ socket; int client; int width; int height; int pixsize; } ;
typedef TYPE_1__ gfx_ctx_osmesa_data_t ;


 int AF_UNIX ;
 int SOCK_STREAM ;
 scalar_t__ bind (scalar_t__,struct sockaddr_un*,int) ;
 int close (scalar_t__) ;
 int fprintf (int ,char*,...) ;
 char* g_osmesa_fifo ;
 scalar_t__ listen (scalar_t__,int) ;
 int perror (char*) ;
 scalar_t__ socket (int ,int ,int ) ;
 int stderr ;
 int strlcpy (int ,char*,int) ;
 int unlink (char*) ;

__attribute__((used)) static void osmesa_fifo_open(gfx_ctx_osmesa_data_t *osmesa)
{
   struct sockaddr_un saun, fsaun;

   osmesa->socket = socket(AF_UNIX, SOCK_STREAM, 0);
   osmesa->client = -1;

   if (osmesa->socket < 0)
   {
      perror("[osmesa] socket()");
      return;
   }

   saun.sun_family = AF_UNIX;

   strlcpy(saun.sun_path, g_osmesa_fifo, sizeof(saun.sun_path));

   unlink(g_osmesa_fifo);

   if (bind(osmesa->socket, &saun, sizeof(saun.sun_family) + sizeof(saun.sun_path)) < 0)
   {
      perror("[osmesa] bind()");
      close(osmesa->socket);
      return;
   }

   if (listen(osmesa->socket, 1) < 0)
   {
      perror("[osmesa] listen()");
      close(osmesa->socket);
      return;
   }

   fprintf(stderr, "[osmesa] Frame size is %ix%ix%i\n", osmesa->width, osmesa->height, osmesa->pixsize);
   fprintf(stderr, "[osmesa] Please connect to unix:%s\n", g_osmesa_fifo);
}
