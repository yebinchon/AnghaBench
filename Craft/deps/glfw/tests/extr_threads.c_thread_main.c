
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float const r; float const g; float const b; int * window; } ;
typedef TYPE_1__ Thread ;


 int GL_COLOR_BUFFER_BIT ;
 scalar_t__ fabs (int ) ;
 int glClear (int ) ;
 int glClearColor (float const,float const,float const,float) ;
 float glfwGetTime () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwSwapBuffers (int *) ;
 int glfwSwapInterval (int) ;
 scalar_t__ running ;
 int sin (float) ;

__attribute__((used)) static int thread_main(void* data)
{
    const Thread* thread = data;

    glfwMakeContextCurrent(thread->window);
    glfwSwapInterval(1);

    while (running)
    {
        const float v = (float) fabs(sin(glfwGetTime() * 2.f));
        glClearColor(thread->r * v, thread->g * v, thread->b * v, 0.f);

        glClear(GL_COLOR_BUFFER_BIT);
        glfwSwapBuffers(thread->window);
    }

    glfwMakeContextCurrent(((void*)0));
    return 0;
}
