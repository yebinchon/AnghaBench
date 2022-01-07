
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLuint ;


 int GL_COMPILE_AND_EXECUTE ;
 int GL_QUAD_STRIP ;
 double M_PI ;
 double TORUS_MAJOR ;
 int TORUS_MAJOR_RES ;
 double TORUS_MINOR ;
 int TORUS_MINOR_RES ;
 double cos (double) ;
 int glBegin (int ) ;
 int glCallList (scalar_t__) ;
 int glEnd () ;
 int glEndList () ;
 scalar_t__ glGenLists (int) ;
 int glNewList (scalar_t__,int ) ;
 int glNormal3f (float,float,float) ;
 int glVertex3f (float,float,float) ;
 double sin (double) ;
 double sqrt (double) ;

__attribute__((used)) static void drawTorus(void)
{
    static GLuint torus_list = 0;
    int i, j, k;
    double s, t, x, y, z, nx, ny, nz, scale, twopi;

    if (!torus_list)
    {

        torus_list = glGenLists(1);
        glNewList(torus_list, GL_COMPILE_AND_EXECUTE);


        twopi = 2.0 * M_PI;
        for (i = 0; i < TORUS_MINOR_RES; i++)
        {
            glBegin(GL_QUAD_STRIP);
            for (j = 0; j <= TORUS_MAJOR_RES; j++)
            {
                for (k = 1; k >= 0; k--)
                {
                    s = (i + k) % TORUS_MINOR_RES + 0.5;
                    t = j % TORUS_MAJOR_RES;


                    x = (TORUS_MAJOR + TORUS_MINOR * cos(s * twopi / TORUS_MINOR_RES)) * cos(t * twopi / TORUS_MAJOR_RES);
                    y = TORUS_MINOR * sin(s * twopi / TORUS_MINOR_RES);
                    z = (TORUS_MAJOR + TORUS_MINOR * cos(s * twopi / TORUS_MINOR_RES)) * sin(t * twopi / TORUS_MAJOR_RES);


                    nx = x - TORUS_MAJOR * cos(t * twopi / TORUS_MAJOR_RES);
                    ny = y;
                    nz = z - TORUS_MAJOR * sin(t * twopi / TORUS_MAJOR_RES);
                    scale = 1.0 / sqrt(nx*nx + ny*ny + nz*nz);
                    nx *= scale;
                    ny *= scale;
                    nz *= scale;

                    glNormal3f((float) nx, (float) ny, (float) nz);
                    glVertex3f((float) x, (float) y, (float) z);
                }
            }

            glEnd();
        }


        glEndList();
    }
    else
    {

        glCallList(torus_list);
    }
}
