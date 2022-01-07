
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_t ;


 int MakeFaces_r (int *) ;
 scalar_t__ c_merge ;
 scalar_t__ c_nodefaces ;
 scalar_t__ c_subdivide ;
 int qprintf (char*,...) ;

void MakeFaces (node_t *node)
{
 qprintf ("--- MakeFaces ---\n");
 c_merge = 0;
 c_subdivide = 0;
 c_nodefaces = 0;

 MakeFaces_r (node);

 qprintf ("%5i makefaces\n", c_nodefaces);
 qprintf ("%5i merged\n", c_merge);
 qprintf ("%5i subdivided\n", c_subdivide);
}
