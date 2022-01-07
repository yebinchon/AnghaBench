
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __gx_litobj {float px; float py; float pz; float nx; float ny; float nz; } ;
typedef float f32 ;
typedef int GXLightObj ;


 float LARGE_NUMBER ;
 float sqrtf (float) ;

void GX_InitSpecularDir(GXLightObj *lit_obj,f32 nx,f32 ny,f32 nz)
{
    f32 px, py, pz;
    f32 hx, hy, hz, mag;
 struct __gx_litobj *lit = (struct __gx_litobj*)lit_obj;


    hx = -nx;
    hy = -ny;
    hz = (-nz + 1.0f);
 mag = ((hx * hx) + (hy * hy) + (hz * hz));
 if(mag!=0.0f) mag = 1.0f / sqrtf(mag);

    hx *= mag;
    hy *= mag;
    hz *= mag;

    px = (nx * LARGE_NUMBER);
    py = (ny * LARGE_NUMBER);
    pz = (nz * LARGE_NUMBER);

 lit->px = px;
 lit->py = py;
 lit->pz = pz;
 lit->nx = hx;
 lit->ny = hy;
 lit->nz = hz;
}
