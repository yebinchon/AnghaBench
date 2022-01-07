
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t m; int n; int lsp_look; int ln; int linearmap; TYPE_2__* vi; } ;
typedef TYPE_1__ vorbis_look_floor0 ;
typedef int vorbis_look_floor ;
struct TYPE_4__ {int ampdB; } ;
typedef TYPE_2__ vorbis_info_floor0 ;
typedef int vorbis_block ;
typedef int ogg_int32_t ;


 int memset (int *,int ,int) ;
 int vorbis_lsp_to_curve (int *,int ,int,int ,int *,size_t,int ,int ,int ) ;

__attribute__((used)) static int floor0_inverse2(vorbis_block *vb,vorbis_look_floor *i,
      void *memo,ogg_int32_t *out){
  vorbis_look_floor0 *look=(vorbis_look_floor0 *)i;
  vorbis_info_floor0 *info=look->vi;

  if(memo){
    ogg_int32_t *lsp=(ogg_int32_t *)memo;
    ogg_int32_t amp=lsp[look->m];


    vorbis_lsp_to_curve(out,look->linearmap,look->n,look->ln,
   lsp,look->m,amp,info->ampdB,look->lsp_look);
    return(1);
  }
  memset(out,0,sizeof(*out)*look->n);
  return(0);
}
