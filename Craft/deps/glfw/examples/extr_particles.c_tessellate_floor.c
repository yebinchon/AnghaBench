
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fabs (float) ;
 int glTexCoord2f (float,float) ;
 int glVertex3f (float,float,float) ;

__attribute__((used)) static void tessellate_floor(float x1, float y1, float x2, float y2, int depth)
{
    float delta, x, y;


    if (depth >= 5)
        delta = 999999.f;
    else
    {
        x = (float) (fabs(x1) < fabs(x2) ? fabs(x1) : fabs(x2));
        y = (float) (fabs(y1) < fabs(y2) ? fabs(y1) : fabs(y2));
        delta = x*x + y*y;
    }


    if (delta < 0.1f)
    {
        x = (x1 + x2) * 0.5f;
        y = (y1 + y2) * 0.5f;
        tessellate_floor(x1, y1, x, y, depth + 1);
        tessellate_floor(x, y1, x2, y, depth + 1);
        tessellate_floor(x1, y, x, y2, depth + 1);
        tessellate_floor(x, y, x2, y2, depth + 1);
    }
    else
    {
        glTexCoord2f(x1 * 30.f, y1 * 30.f);
        glVertex3f( x1 * 80.f, y1 * 80.f, 0.f);
        glTexCoord2f(x2 * 30.f, y1 * 30.f);
        glVertex3f( x2 * 80.f, y1 * 80.f, 0.f);
        glTexCoord2f(x2 * 30.f, y2 * 30.f);
        glVertex3f( x2 * 80.f, y2 * 80.f, 0.f);
        glTexCoord2f(x1 * 30.f, y2 * 30.f);
        glVertex3f( x1 * 80.f, y2 * 80.f, 0.f);
    }
}
