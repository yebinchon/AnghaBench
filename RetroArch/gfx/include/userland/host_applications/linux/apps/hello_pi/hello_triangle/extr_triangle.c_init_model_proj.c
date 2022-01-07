
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ screen_height; scalar_t__ screen_width; } ;
typedef int GLsizei ;
typedef TYPE_1__ CUBE_STATE_T ;


 int GL_BYTE ;
 int GL_NICEST ;
 int GL_PERSPECTIVE_CORRECTION_HINT ;
 int GL_PROJECTION ;
 int GL_VERTEX_ARRAY ;
 double M_PI ;
 int glEnableClientState (int ) ;
 int glFrustumf (float,float,float,float,float,float) ;
 int glHint (int ,int ) ;
 int glLoadIdentity () ;
 int glMatrixMode (int ) ;
 int glVertexPointer (int,int ,int ,int ) ;
 int glViewport (int ,int ,int ,int ) ;
 int quadx ;
 int reset_model (TYPE_1__*) ;
 scalar_t__ tan (double) ;

__attribute__((used)) static void init_model_proj(CUBE_STATE_T *state)
{
   float nearp = 1.0f;
   float farp = 500.0f;
   float hht;
   float hwd;

   glHint( GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST );

   glViewport(0, 0, (GLsizei)state->screen_width, (GLsizei)state->screen_height);

   glMatrixMode(GL_PROJECTION);
   glLoadIdentity();

   hht = nearp * (float)tan(45.0 / 2.0 / 180.0 * M_PI);
   hwd = hht * (float)state->screen_width / (float)state->screen_height;

   glFrustumf(-hwd, hwd, -hht, hht, nearp, farp);

   glEnableClientState( GL_VERTEX_ARRAY );
   glVertexPointer( 3, GL_BYTE, 0, quadx );

   reset_model(state);
}
