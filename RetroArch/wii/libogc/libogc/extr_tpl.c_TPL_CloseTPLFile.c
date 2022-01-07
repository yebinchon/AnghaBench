
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* palhead; TYPE_1__* imghead; } ;
struct TYPE_8__ {scalar_t__ type; int ntextures; int * tpl_file; TYPE_1__* texdesc; } ;
struct TYPE_7__ {struct TYPE_7__* data; } ;
typedef TYPE_1__ TPLPalHeader ;
typedef TYPE_1__ TPLImgHeader ;
typedef TYPE_3__ TPLFile ;
typedef TYPE_4__ TPLDescHeader ;
typedef int FILE ;


 scalar_t__ TPL_FILE_TYPE_DISC ;
 int fclose (int *) ;
 int free (TYPE_1__*) ;

void TPL_CloseTPLFile(TPLFile *tdf)
{
 int i;
 FILE *f;
 TPLPalHeader *palhead;
 TPLImgHeader *imghead;
 TPLDescHeader *deschead;

 if(!tdf) return;

 if(tdf->type==TPL_FILE_TYPE_DISC) {
  f = (FILE*)tdf->tpl_file;
  if(f) fclose(f);

  deschead = (TPLDescHeader*)tdf->texdesc;
  if(!deschead) return;

  for(i=0;i<tdf->ntextures;i++) {
   imghead = deschead[i].imghead;
   palhead = deschead[i].palhead;
   if(imghead) {
    if(imghead->data) free(imghead->data);
    free(imghead);
   }
   if(palhead) {
    if(palhead->data) free(palhead->data);
    free(palhead);
   }
  }
  free(tdf->texdesc);
 }

 tdf->ntextures = 0;
 tdf->texdesc = ((void*)0);
 tdf->tpl_file = ((void*)0);
}
