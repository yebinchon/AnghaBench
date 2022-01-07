
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;


 int GL_LINES ;
 int GL_LINE_LOOP ;
 int GL_LINE_STRIP ;
 int GL_POINTS ;
 int GL_POLYGON ;
 int GL_QUADS ;
 int GL_QUAD_STRIP ;
 int GL_TRIANGLES ;
 int GL_TRIANGLE_FAN ;
 int GL_TRIANGLE_STRIP ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static const char * PrimToString( GLenum mode )
{
 static char prim[1024];

 if ( mode == GL_TRIANGLES )
  strcpy( prim, "GL_TRIANGLES" );
 else if ( mode == GL_TRIANGLE_STRIP )
  strcpy( prim, "GL_TRIANGLE_STRIP" );
 else if ( mode == GL_TRIANGLE_FAN )
  strcpy( prim, "GL_TRIANGLE_FAN" );
 else if ( mode == GL_QUADS )
  strcpy( prim, "GL_QUADS" );
 else if ( mode == GL_QUAD_STRIP )
  strcpy( prim, "GL_QUAD_STRIP" );
 else if ( mode == GL_POLYGON )
  strcpy( prim, "GL_POLYGON" );
 else if ( mode == GL_POINTS )
  strcpy( prim, "GL_POINTS" );
 else if ( mode == GL_LINES )
  strcpy( prim, "GL_LINES" );
 else if ( mode == GL_LINE_STRIP )
  strcpy( prim, "GL_LINE_STRIP" );
 else if ( mode == GL_LINE_LOOP )
  strcpy( prim, "GL_LINE_LOOP" );
 else
  sprintf( prim, "0x%x", mode );

 return prim;
}
