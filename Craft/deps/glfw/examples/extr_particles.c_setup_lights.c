
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_AMBIENT ;
 int GL_DIFFUSE ;
 int GL_LIGHT1 ;
 int GL_LIGHT2 ;
 int GL_LIGHT3 ;
 int GL_POSITION ;
 int GL_SPECULAR ;
 int glEnable (int ) ;
 int glLightfv (int ,int ,float*) ;
 float* glow_color ;
 float* glow_pos ;

__attribute__((used)) static void setup_lights(void)
{
    float l1pos[4], l1amb[4], l1dif[4], l1spec[4];
    float l2pos[4], l2amb[4], l2dif[4], l2spec[4];


    l1pos[0] = 0.f; l1pos[1] = -9.f; l1pos[2] = 8.f; l1pos[3] = 1.f;
    l1amb[0] = 0.2f; l1amb[1] = 0.2f; l1amb[2] = 0.2f; l1amb[3] = 1.f;
    l1dif[0] = 0.8f; l1dif[1] = 0.4f; l1dif[2] = 0.2f; l1dif[3] = 1.f;
    l1spec[0] = 1.f; l1spec[1] = 0.6f; l1spec[2] = 0.2f; l1spec[3] = 0.f;


    l2pos[0] = -15.f; l2pos[1] = 12.f; l2pos[2] = 1.5f; l2pos[3] = 1.f;
    l2amb[0] = 0.f; l2amb[1] = 0.f; l2amb[2] = 0.f; l2amb[3] = 1.f;
    l2dif[0] = 0.2f; l2dif[1] = 0.4f; l2dif[2] = 0.8f; l2dif[3] = 1.f;
    l2spec[0] = 0.2f; l2spec[1] = 0.6f; l2spec[2] = 1.f; l2spec[3] = 0.f;

    glLightfv(GL_LIGHT1, GL_POSITION, l1pos);
    glLightfv(GL_LIGHT1, GL_AMBIENT, l1amb);
    glLightfv(GL_LIGHT1, GL_DIFFUSE, l1dif);
    glLightfv(GL_LIGHT1, GL_SPECULAR, l1spec);
    glLightfv(GL_LIGHT2, GL_POSITION, l2pos);
    glLightfv(GL_LIGHT2, GL_AMBIENT, l2amb);
    glLightfv(GL_LIGHT2, GL_DIFFUSE, l2dif);
    glLightfv(GL_LIGHT2, GL_SPECULAR, l2spec);
    glLightfv(GL_LIGHT3, GL_POSITION, glow_pos);
    glLightfv(GL_LIGHT3, GL_DIFFUSE, glow_color);
    glLightfv(GL_LIGHT3, GL_SPECULAR, glow_color);

    glEnable(GL_LIGHT1);
    glEnable(GL_LIGHT2);
    glEnable(GL_LIGHT3);
}
