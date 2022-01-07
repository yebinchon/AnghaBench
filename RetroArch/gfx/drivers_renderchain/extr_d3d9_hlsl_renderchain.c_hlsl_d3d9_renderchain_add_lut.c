
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chain; } ;
typedef TYPE_1__ hlsl_renderchain_t ;
typedef int d3d9_renderchain_t ;


 int d3d9_renderchain_add_lut (int *,char const*,char const*,int) ;

__attribute__((used)) static bool hlsl_d3d9_renderchain_add_lut(void *data,
      const char *id, const char *path, bool smooth)
{
   hlsl_renderchain_t *_chain = (hlsl_renderchain_t*)data;
   d3d9_renderchain_t *chain = (d3d9_renderchain_t*)&_chain->chain;

   return d3d9_renderchain_add_lut(chain, id, path, smooth);
}
