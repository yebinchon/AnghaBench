
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ xa; } ;
typedef TYPE_1__ xa_t ;


 int free (TYPE_1__*) ;
 int xaudio2_free (scalar_t__) ;

__attribute__((used)) static void xa_free(void *data)
{
   xa_t *xa = (xa_t*)data;

   if (!xa)
      return;

   if (xa->xa)
      xaudio2_free(xa->xa);
   free(xa);
}
