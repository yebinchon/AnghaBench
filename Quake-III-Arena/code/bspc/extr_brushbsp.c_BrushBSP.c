
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
typedef int vec3_t ;
struct TYPE_14__ {TYPE_4__* headnode; int maxs; int mins; } ;
typedef TYPE_3__ tree_t ;
struct TYPE_15__ {TYPE_5__* brushlist; int volume; } ;
typedef TYPE_4__ node_t ;
struct TYPE_16__ {int numsides; int maxs; int mins; TYPE_2__* sides; TYPE_1__* original; struct TYPE_16__* next; } ;
typedef TYPE_5__ bspbrush_t ;
struct TYPE_13__ {int flags; scalar_t__ texinfo; int winding; } ;
struct TYPE_12__ {int brushnum; int entitynum; } ;


 int AddPointToBounds (int ,int ,int ) ;
 TYPE_4__* AllocNode () ;
 int BrushFromBounds (int ,int ) ;
 scalar_t__ BrushVolume (TYPE_5__*) ;
 int BuildTree (TYPE_3__*) ;
 int Log_Print (char*,...) ;
 int Log_Write (char*,scalar_t__) ;
 int SFL_BEVEL ;
 int SFL_VISIBLE ;
 scalar_t__ TEXINFO_NODE ;
 TYPE_3__* Tree_Alloc () ;
 int c_active_brushes ;
 scalar_t__ c_brushmemory ;
 scalar_t__ c_nodememory ;
 scalar_t__ c_nodes ;
 scalar_t__ c_nonvis ;
 scalar_t__ c_peak_brushmemory ;
 int c_peak_totalbspmemory ;
 int c_totalsides ;
 scalar_t__ cancelconversion ;
 scalar_t__ microvolume ;
 scalar_t__ numrecurse ;
 int numthreads ;
 int qprintf (char*) ;

tree_t *BrushBSP(bspbrush_t *brushlist, vec3_t mins, vec3_t maxs)
{
 int i, c_faces, c_nonvisfaces, c_brushes;
 bspbrush_t *b;
 node_t *node;
 tree_t *tree;
 vec_t volume;


 Log_Print("-------- Brush BSP ---------\n");

 tree = Tree_Alloc();

 c_faces = 0;
 c_nonvisfaces = 0;
 c_brushes = 0;
 c_totalsides = 0;
 for (b = brushlist; b; b = b->next)
 {
  c_brushes++;

  volume = BrushVolume(b);
  if (volume < microvolume)
  {
   Log_Print("WARNING: entity %i, brush %i: microbrush\n",
    b->original->entitynum, b->original->brushnum);
  }

  for (i=0 ; i<b->numsides ; i++)
  {
   if (b->sides[i].flags & SFL_BEVEL)
    continue;
   if (!b->sides[i].winding)
    continue;
   if (b->sides[i].texinfo == TEXINFO_NODE)
    continue;
   if (b->sides[i].flags & SFL_VISIBLE)
   {
    c_faces++;
   }
   else
   {
    c_nonvisfaces++;

   }
  }
  c_totalsides += b->numsides;

  AddPointToBounds (b->mins, tree->mins, tree->maxs);
  AddPointToBounds (b->maxs, tree->mins, tree->maxs);
 }

 Log_Print("%6i brushes\n", c_brushes);
 Log_Print("%6i visible faces\n", c_faces);
 Log_Print("%6i nonvisible faces\n", c_nonvisfaces);
 Log_Print("%6i total sides\n", c_totalsides);

 c_active_brushes = c_brushes;
 c_nodememory = 0;
 c_brushmemory = 0;
 c_peak_brushmemory = 0;

 c_nodes = 0;
 c_nonvis = 0;
 node = AllocNode ();


 node->volume = BrushFromBounds (mins, maxs);

 tree->headnode = node;

 numrecurse = 0;


 tree->headnode->brushlist = brushlist;
 BuildTree(tree);





 if (cancelconversion) return tree;

 qprintf("\n");
 Log_Write("%6d splits\r\n", numrecurse);





 if (numthreads == 1)
 {





  Log_Print("%6i KB of peak total bsp memory\n", c_peak_totalbspmemory >> 10);
 }
 return tree;
}
