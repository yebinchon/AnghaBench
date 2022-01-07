
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_7__ {int occupied; int occupant; TYPE_2__* portals; } ;
struct TYPE_5__ {TYPE_3__ outside_node; } ;
typedef TYPE_1__ tree_t ;
struct TYPE_6__ {int winding; TYPE_3__** nodes; struct TYPE_6__** next; } ;
typedef TYPE_2__ portal_t ;
typedef TYPE_3__ node_t ;
typedef int FILE ;


 int Error (char*,char*) ;
 int GetVectorForKey (int ,char*,double*) ;
 int WindingCenter (int ,double*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,double,double,double) ;
 int qprintf (char*,...) ;
 char* source ;
 int sprintf (char*,char*,char*) ;

void LeakFile (tree_t *tree)
{
 vec3_t mid;
 FILE *linefile;
 char filename[1024];
 node_t *node;
 int count;

 if (!tree->outside_node.occupied)
  return;

 qprintf ("--- LeakFile ---\n");




 sprintf (filename, "%s.lin", source);
 qprintf ("%s\n", filename);
 linefile = fopen (filename, "w");
 if (!linefile)
  Error ("Couldn't open %s\n", filename);

 count = 0;
 node = &tree->outside_node;
 while (node->occupied > 1)
 {
  int next;
  portal_t *p, *nextportal;
  node_t *nextnode;
  int s;


  next = node->occupied;
  for (p=node->portals ; p ; p = p->next[!s])
  {
   s = (p->nodes[0] == node);
   if (p->nodes[s]->occupied
    && p->nodes[s]->occupied < next)
   {
    nextportal = p;
    nextnode = p->nodes[s];
    next = nextnode->occupied;
   }
  }
  node = nextnode;
  WindingCenter (nextportal->winding, mid);
  fprintf (linefile, "%f %f %f\n", mid[0], mid[1], mid[2]);
  count++;
 }

 GetVectorForKey (node->occupant, "origin", mid);

 fprintf (linefile, "%f %f %f\n", mid[0], mid[1], mid[2]);
 qprintf ("%5i point linefile\n", count+1);

 fclose (linefile);
}
