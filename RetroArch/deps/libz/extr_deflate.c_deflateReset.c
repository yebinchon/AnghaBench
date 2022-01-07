
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
typedef int deflate_state ;
struct TYPE_4__ {scalar_t__ state; } ;


 int Z_OK ;
 int deflateResetKeep (TYPE_1__*) ;
 int lm_init (int *) ;

int deflateReset (z_streamp strm)
{
   int ret;

   ret = deflateResetKeep(strm);
   if (ret == Z_OK)
      lm_init((deflate_state*)strm->state);
   return ret;
}
