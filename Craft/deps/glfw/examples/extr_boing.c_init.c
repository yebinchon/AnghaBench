
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_FLAT ;
 int glClearColor (float,float,float,float) ;
 int glShadeModel (int ) ;

void init( void )
{



   glClearColor( 0.55f, 0.55f, 0.55f, 0.f );

   glShadeModel( GL_FLAT );
}
