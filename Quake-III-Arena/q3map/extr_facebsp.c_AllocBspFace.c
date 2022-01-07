
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bspface_t ;


 int * malloc (int) ;
 int memset (int *,int ,int) ;

bspface_t *AllocBspFace( void ) {
 bspface_t *f;

 f = malloc(sizeof(*f));
 memset( f, 0, sizeof(*f) );

 return f;
}
