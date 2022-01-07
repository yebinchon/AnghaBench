
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int numpoints; double** points; } ;
typedef TYPE_1__ winding_t ;
struct TYPE_13__ {int dist; int normal; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_14__ {size_t numportals; int leaf; TYPE_2__ plane; TYPE_1__* winding; struct TYPE_14__** portals; } ;
typedef TYPE_3__ lportal_t ;
typedef TYPE_3__ lleaf_t ;
typedef int FILE ;


 int Error (char*,...) ;
 int MAX_CLUSTERS ;
 int MAX_POINTS_ON_WINDING ;
 size_t MAX_PORTALS_ON_LEAF ;
 char* PORTALFILE ;
 void* VL_AllocWinding (int) ;
 int VL_PlaneFromWinding (TYPE_1__*,TYPE_2__*) ;
 int VL_SetPortalSphere (TYPE_3__*) ;
 int VectorCopy (double*,double*) ;
 int VectorSubtract (int ,int ,int ) ;
 int _printf (char*,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,...) ;
 TYPE_3__* leafs ;
 TYPE_3__* malloc (int) ;
 int memset (TYPE_3__*,int ,int) ;
 int numfaces ;
 int numportals ;
 int portalclusters ;
 TYPE_3__* portals ;
 int * stdin ;
 scalar_t__ strcmp (char*,char*) ;
 int vec3_origin ;

void VL_LoadPortals (char *name)
{
 int i, j, hint;
 lportal_t *p;
 lleaf_t *l;
 char magic[80];
 FILE *f;
 int numpoints;
 winding_t *w;
 int leafnums[2];
 plane_t plane;


 if (!strcmp(name,"-"))
  f = stdin;
 else
 {
  f = fopen(name, "r");
  if (!f)
   Error ("LoadPortals: couldn't read %s\n",name);
 }

 if (fscanf (f,"%79s\n%i\n%i\n%i\n",magic, &portalclusters, &numportals, &numfaces) != 4)
  Error ("LoadPortals: failed to read header");
 if (strcmp(magic, PORTALFILE))
  Error ("LoadPortals: not a portal file");

 _printf ("%6i portalclusters\n", portalclusters);
 _printf ("%6i numportals\n", numportals);
 _printf ("%6i numfaces\n", numfaces);

 if (portalclusters >= MAX_CLUSTERS)
  Error ("more than %d clusters in portal file\n", MAX_CLUSTERS);


 portals = malloc(2*numportals*sizeof(lportal_t));
 memset (portals, 0, 2*numportals*sizeof(lportal_t));

 leafs = malloc(portalclusters*sizeof(lleaf_t));
 memset (leafs, 0, portalclusters*sizeof(lleaf_t));

 for (i=0, p=portals ; i<numportals ; i++)
 {
  if (fscanf (f, "%i %i %i ", &numpoints, &leafnums[0], &leafnums[1]) != 3)
   Error ("LoadPortals: reading portal %i", i);
  if (numpoints > MAX_POINTS_ON_WINDING)
   Error ("LoadPortals: portal %i has too many points", i);
  if ( (unsigned)leafnums[0] > portalclusters
  || (unsigned)leafnums[1] > portalclusters)
   Error ("LoadPortals: reading portal %i", i);
  if (fscanf (f, "%i ", &hint) != 1)
   Error ("LoadPortals: reading hint state");

  w = p->winding = VL_AllocWinding (numpoints);
  w->numpoints = numpoints;

  for (j=0 ; j<numpoints ; j++)
  {
   double v[3];
   int k;



   if (fscanf (f, "(%lf %lf %lf ) "
   , &v[0], &v[1], &v[2]) != 3)
    Error ("LoadPortals: reading portal %i", i);
   for (k=0 ; k<3 ; k++)
    w->points[j][k] = v[k];
  }
  fscanf (f, "\n");


  VL_PlaneFromWinding (w, &plane);


  l = &leafs[leafnums[0]];
  if (l->numportals == MAX_PORTALS_ON_LEAF)
   Error ("Leaf with too many portals");
  l->portals[l->numportals] = p;
  l->numportals++;

  p->winding = w;
  VectorSubtract (vec3_origin, plane.normal, p->plane.normal);
  p->plane.dist = -plane.dist;
  p->leaf = leafnums[1];
  VL_SetPortalSphere (p);
  p++;


  l = &leafs[leafnums[1]];
  if (l->numportals == MAX_PORTALS_ON_LEAF)
   Error ("Leaf with too many portals");
  l->portals[l->numportals] = p;
  l->numportals++;

  p->winding = VL_AllocWinding(w->numpoints);
  p->winding->numpoints = w->numpoints;
  for (j=0 ; j<w->numpoints ; j++)
  {
   VectorCopy (w->points[w->numpoints-1-j], p->winding->points[j]);
  }

  p->plane = plane;
  p->leaf = leafnums[0];
  VL_SetPortalSphere (p);
  p++;

 }

 fclose (f);
}
