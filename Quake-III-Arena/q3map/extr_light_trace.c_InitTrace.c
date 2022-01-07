
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tnode_t ;


 int InitSurfacesForTesting () ;
 int MAX_TNODES ;
 int MakeTnode (int ) ;
 int * malloc (int) ;
 int * tnode_p ;
 int * tnodes ;

void InitTrace( void ) {

 tnodes = malloc( (MAX_TNODES+1) * sizeof(tnode_t));
 tnodes = (tnode_t *)(((int)tnodes + 31)&~31);
 tnode_p = tnodes;

 MakeTnode (0);

 InitSurfacesForTesting();
}
