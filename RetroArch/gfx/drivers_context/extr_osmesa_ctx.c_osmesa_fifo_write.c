
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t width; size_t pixsize; int client; int height; scalar_t__ screen; } ;
typedef TYPE_1__ gfx_ctx_osmesa_data_t ;


 int MSG_NOSIGNAL ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,int,char*) ;
 int send (int,scalar_t__,size_t,int ) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void osmesa_fifo_write(gfx_ctx_osmesa_data_t *osmesa)
{
   int i;
   size_t len = osmesa->width * osmesa->pixsize;

   if (osmesa->client < 0)
      return;

   for (i = osmesa->height -1; i >= 0; --i)
   {
      int res = send(osmesa->client, osmesa->screen + i * len, len, MSG_NOSIGNAL);

      if (res < 0)
      {
         fprintf(stderr, "[osmesa] Lost connection to %i: %s\n", osmesa->client, strerror(errno));
         close(osmesa->client);
         osmesa->client = -1;
         break;
      }
   }
}
