
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qhandle_t ;


 int CG_R_DRAWSTRETCHPIC ;
 int PASSFLOAT (float) ;
 int syscall (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void trap_R_DrawStretchPic( float x, float y, float w, float h,
          float s1, float t1, float s2, float t2, qhandle_t hShader ) {
 syscall( CG_R_DRAWSTRETCHPIC, PASSFLOAT(x), PASSFLOAT(y), PASSFLOAT(w), PASSFLOAT(h), PASSFLOAT(s1), PASSFLOAT(t1), PASSFLOAT(s2), PASSFLOAT(t2), hShader );
}
