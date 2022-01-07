
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* gz_statep ;
typedef int * gzFile ;
struct TYPE_4__ {scalar_t__ have; } ;
struct TYPE_5__ {scalar_t__ mode; scalar_t__ how; int direct; TYPE_1__ x; } ;


 scalar_t__ GZ_READ ;
 scalar_t__ LOOK ;
 int gz_look (TYPE_2__*) ;

int gzdirect(gzFile file)
{
   gz_statep state;


   if (file == ((void*)0))
      return 0;
   state = (gz_statep)file;



   if (state->mode == GZ_READ && state->how == LOOK && state->x.have == 0)
      (void)gz_look(state);


   return state->direct;
}
