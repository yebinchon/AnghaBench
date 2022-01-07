
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Vertex {int dummy; } ;
struct TYPE_3__ {int r; } ;


 int GL_COLOR_ARRAY ;
 int GL_DEPTH_TEST ;
 int GL_FLOAT ;
 int GL_SMOOTH ;
 int GL_VERTEX_ARRAY ;
 int glClearColor (int ,int ,int ,int ) ;
 int glColorPointer (int,int ,int,int *) ;
 int glEnable (int ) ;
 int glEnableClientState (int ) ;
 int glPointSize (double) ;
 int glShadeModel (int ) ;
 int glVertexPointer (int,int ,int,TYPE_1__*) ;
 TYPE_1__* vertex ;

void init_opengl(void)
{

    glShadeModel(GL_SMOOTH);


    glEnable(GL_DEPTH_TEST);

    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    glVertexPointer(3, GL_FLOAT, sizeof(struct Vertex), vertex);
    glColorPointer(3, GL_FLOAT, sizeof(struct Vertex), &vertex[0].r);

    glPointSize(2.0);


    glClearColor(0, 0, 0, 0);
}
