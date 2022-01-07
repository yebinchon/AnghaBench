
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float y; float x; float z; } ;
typedef TYPE_1__ vertex_t ;
typedef int GLfloat ;


 int CrossProduct (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__*) ;
 scalar_t__ DRAW_BALL_SHADOW ;
 int GL_POLYGON ;
 float RADIUS ;
 int STEP_LATITUDE ;
 int STEP_LONGITUDE ;
 scalar_t__ cos_deg (int) ;
 scalar_t__ drawBallHow ;
 int glBegin (int ) ;
 int glColor3f (float,float,float) ;
 int glEnd () ;
 int glNormal3f (float,float,float) ;
 int glVertex3f (float,float,float) ;
 int printf (char*,...) ;
 scalar_t__ sin_deg (int) ;

void DrawBoingBallBand( GLfloat long_lo,
                        GLfloat long_hi )
{
   vertex_t vert_ne;
   vertex_t vert_nw;
   vertex_t vert_sw;
   vertex_t vert_se;
   vertex_t vert_norm;
   GLfloat lat_deg;
   static int colorToggle = 0;





   for ( lat_deg = 0;
         lat_deg <= (360 - STEP_LATITUDE);
         lat_deg += STEP_LATITUDE )
   {



      if ( colorToggle )
         glColor3f( 0.8f, 0.1f, 0.1f );
      else
         glColor3f( 0.95f, 0.95f, 0.95f );







      colorToggle = ! colorToggle;




      if ( drawBallHow == DRAW_BALL_SHADOW )
         glColor3f( 0.35f, 0.35f, 0.35f );




      vert_ne.y = vert_nw.y = (float) cos_deg(long_hi) * RADIUS;
      vert_sw.y = vert_se.y = (float) cos_deg(long_lo) * RADIUS;






      vert_ne.x = (float) cos_deg( lat_deg ) * (RADIUS * (float) sin_deg( long_lo + STEP_LONGITUDE ));
      vert_se.x = (float) cos_deg( lat_deg ) * (RADIUS * (float) sin_deg( long_lo ));
      vert_nw.x = (float) cos_deg( lat_deg + STEP_LATITUDE ) * (RADIUS * (float) sin_deg( long_lo + STEP_LONGITUDE ));
      vert_sw.x = (float) cos_deg( lat_deg + STEP_LATITUDE ) * (RADIUS * (float) sin_deg( long_lo ));

      vert_ne.z = (float) sin_deg( lat_deg ) * (RADIUS * (float) sin_deg( long_lo + STEP_LONGITUDE ));
      vert_se.z = (float) sin_deg( lat_deg ) * (RADIUS * (float) sin_deg( long_lo ));
      vert_nw.z = (float) sin_deg( lat_deg + STEP_LATITUDE ) * (RADIUS * (float) sin_deg( long_lo + STEP_LONGITUDE ));
      vert_sw.z = (float) sin_deg( lat_deg + STEP_LATITUDE ) * (RADIUS * (float) sin_deg( long_lo ));




      glBegin( GL_POLYGON );

      CrossProduct( vert_ne, vert_nw, vert_sw, &vert_norm );
      glNormal3f( vert_norm.x, vert_norm.y, vert_norm.z );

      glVertex3f( vert_ne.x, vert_ne.y, vert_ne.z );
      glVertex3f( vert_nw.x, vert_nw.y, vert_nw.z );
      glVertex3f( vert_sw.x, vert_sw.y, vert_sw.z );
      glVertex3f( vert_se.x, vert_se.y, vert_se.z );

      glEnd();
   }




   colorToggle = ! colorToggle;




   return;
}
