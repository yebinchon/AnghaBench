
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t m; int* n; int ln; int * linearmap; TYPE_2__* vi; } ;
typedef TYPE_1__ vorbis_look_floor0 ;
typedef int vorbis_look_floor ;
struct TYPE_9__ {scalar_t__ ampdB; } ;
typedef TYPE_2__ vorbis_info_floor0 ;
struct TYPE_10__ {size_t W; } ;
typedef TYPE_3__ vorbis_block ;


 int floor0_map_lazy_init (TYPE_3__*,TYPE_2__*,TYPE_1__*) ;
 int memset (float*,int ,int) ;
 int vorbis_lsp_to_curve (float*,int ,int,int ,float*,size_t,float,float) ;

__attribute__((used)) static int floor0_inverse2(vorbis_block *vb,vorbis_look_floor *i,
                           void *memo,float *out){
  vorbis_look_floor0 *look=(vorbis_look_floor0 *)i;
  vorbis_info_floor0 *info=look->vi;

  floor0_map_lazy_init(vb,info,look);

  if(memo){
    float *lsp=(float *)memo;
    float amp=lsp[look->m];


    vorbis_lsp_to_curve(out,
                        look->linearmap[vb->W],
                        look->n[vb->W],
                        look->ln,
                        lsp,look->m,amp,(float)info->ampdB);
    return(1);
  }
  memset(out,0,sizeof(*out)*look->n[vb->W]);
  return(0);
}
