
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ GFDFile ;


 int MEM2_free (int ) ;
 int free (TYPE_1__*) ;

void gfd_free(GFDFile* gfd)
{
   if(gfd)
   {
      MEM2_free(gfd->data);
      free(gfd);
   }
}
