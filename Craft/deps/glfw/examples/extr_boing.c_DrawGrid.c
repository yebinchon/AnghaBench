
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLfloat ;


 int DIST_BALL ;
 int GL_CULL_FACE ;
 int GL_POLYGON ;
 int const GRID_SIZE ;
 int glBegin (int ) ;
 int glColor3f (float,float,float) ;
 int glDisable (int ) ;
 int glEnd () ;
 int glPopMatrix () ;
 int glPushMatrix () ;
 int glTranslatef (double,double,int ) ;
 int glVertex3f (int,int,int const) ;

void DrawGrid( void )
{
   int row, col;
   const int rowTotal = 12;
   const int colTotal = rowTotal;
   const GLfloat widthLine = 2.0;
   const GLfloat sizeCell = GRID_SIZE / rowTotal;
   const GLfloat z_offset = -40.0;
   GLfloat xl, xr;
   GLfloat yt, yb;

   glPushMatrix();
   glDisable( GL_CULL_FACE );




   glTranslatef( 0.0, 0.0, DIST_BALL );




   for ( col = 0; col <= colTotal; col++ )
   {



      xl = -GRID_SIZE / 2 + col * sizeCell;
      xr = xl + widthLine;

      yt = GRID_SIZE / 2;
      yb = -GRID_SIZE / 2 - widthLine;

      glBegin( GL_POLYGON );

      glColor3f( 0.6f, 0.1f, 0.6f );

      glVertex3f( xr, yt, z_offset );
      glVertex3f( xl, yt, z_offset );
      glVertex3f( xl, yb, z_offset );
      glVertex3f( xr, yb, z_offset );

      glEnd();
   }




   for ( row = 0; row <= rowTotal; row++ )
   {



      yt = GRID_SIZE / 2 - row * sizeCell;
      yb = yt - widthLine;

      xl = -GRID_SIZE / 2;
      xr = GRID_SIZE / 2 + widthLine;

      glBegin( GL_POLYGON );

      glColor3f( 0.6f, 0.1f, 0.6f );

      glVertex3f( xr, yt, z_offset );
      glVertex3f( xl, yt, z_offset );
      glVertex3f( xl, yb, z_offset );
      glVertex3f( xr, yb, z_offset );

      glEnd();
   }

   glPopMatrix();

   return;
}
