
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {int flags; } ;
struct TYPE_17__ {TYPE_7__ generic; } ;
struct TYPE_14__ {int flags; } ;
struct TYPE_15__ {TYPE_5__ generic; } ;
struct TYPE_18__ {int modelpage; int nummodels; int selectedmodel; int numpages; TYPE_8__ right; TYPE_6__ left; TYPE_4__* picbuttons; TYPE_2__* pics; int ** modelnames; } ;
struct TYPE_12__ {int flags; } ;
struct TYPE_13__ {TYPE_3__ generic; } ;
struct TYPE_10__ {int flags; int * name; } ;
struct TYPE_11__ {TYPE_1__ generic; scalar_t__ shader; } ;


 int MAX_MODELSPERPAGE ;
 int PLAYERGRID_COLS ;
 int PLAYERGRID_ROWS ;
 int QMF_HIGHLIGHT ;
 int QMF_INACTIVE ;
 int QMF_PULSEIFFOCUS ;
 TYPE_9__ s_playermodel ;

__attribute__((used)) static void PlayerModel_UpdateGrid( void )
{
 int i;
    int j;

 j = s_playermodel.modelpage * MAX_MODELSPERPAGE;
 for (i=0; i<PLAYERGRID_ROWS*PLAYERGRID_COLS; i++,j++)
 {
  if (j < s_playermodel.nummodels)
  {

    s_playermodel.pics[i].generic.name = s_playermodel.modelnames[j];
   s_playermodel.picbuttons[i].generic.flags &= ~QMF_INACTIVE;
  }
  else
  {

    s_playermodel.pics[i].generic.name = ((void*)0);
   s_playermodel.picbuttons[i].generic.flags |= QMF_INACTIVE;
  }

   s_playermodel.pics[i].generic.flags &= ~QMF_HIGHLIGHT;
   s_playermodel.pics[i].shader = 0;
   s_playermodel.picbuttons[i].generic.flags |= QMF_PULSEIFFOCUS;
 }

 if (s_playermodel.selectedmodel/MAX_MODELSPERPAGE == s_playermodel.modelpage)
 {

  i = s_playermodel.selectedmodel % MAX_MODELSPERPAGE;

  s_playermodel.pics[i].generic.flags |= QMF_HIGHLIGHT;
  s_playermodel.picbuttons[i].generic.flags &= ~QMF_PULSEIFFOCUS;
 }

 if (s_playermodel.numpages > 1)
 {
  if (s_playermodel.modelpage > 0)
   s_playermodel.left.generic.flags &= ~QMF_INACTIVE;
  else
   s_playermodel.left.generic.flags |= QMF_INACTIVE;

  if (s_playermodel.modelpage < s_playermodel.numpages-1)
   s_playermodel.right.generic.flags &= ~QMF_INACTIVE;
  else
   s_playermodel.right.generic.flags |= QMF_INACTIVE;
 }
 else
 {

  s_playermodel.left.generic.flags |= QMF_INACTIVE;
  s_playermodel.right.generic.flags |= QMF_INACTIVE;
 }
}
