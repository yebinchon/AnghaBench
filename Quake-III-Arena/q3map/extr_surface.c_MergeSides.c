
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree_t ;
struct TYPE_3__ {int firstDrawSurf; } ;
typedef TYPE_1__ entity_t ;


 int numMapDrawSurfs ;
 int numSideRefs ;
 int qprintf (char*,...) ;

void MergeSides( entity_t *e, tree_t *tree ) {
 int i;

 qprintf( "----- MergeSides -----\n");

 for ( i = e->firstDrawSurf ; i < numMapDrawSurfs ; i++ ) {

 }

 qprintf( "%5i siderefs\n", numSideRefs );
}
