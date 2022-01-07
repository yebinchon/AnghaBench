
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GLFW_DEPTH_BITS ;
 int cursor_position_callback ;
 int display () ;
 scalar_t__ dt ;
 int exit (int ) ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 int glfwGetFramebufferSize (int *,int *,int *) ;
 scalar_t__ glfwGetTime () ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwPollEvents () ;
 int glfwSetCursorPosCallback (int *,int ) ;
 int glfwSetFramebufferSizeCallback (int *,int (*) (int *,int ,int )) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSetMouseButtonCallback (int *,int ) ;
 int glfwSetTime (double) ;
 int glfwSwapBuffers (int *) ;
 int glfwSwapInterval (int) ;
 int glfwTerminate () ;
 int glfwWindowHint (int ,int) ;
 scalar_t__ glfwWindowShouldClose (int *) ;
 int height ;
 int init () ;
 int key_callback ;
 int mouse_button_callback ;
 int reshape (int *,int ,int ) ;
 scalar_t__ t ;
 scalar_t__ t_old ;
 int width ;

int main( void )
{
   GLFWwindow* window;


   if( !glfwInit() )
      exit( EXIT_FAILURE );

   glfwWindowHint(GLFW_DEPTH_BITS, 16);

   window = glfwCreateWindow( 400, 400, "Boing (classic Amiga demo)", ((void*)0), ((void*)0) );
   if (!window)
   {
       glfwTerminate();
       exit( EXIT_FAILURE );
   }

   glfwSetFramebufferSizeCallback(window, reshape);
   glfwSetKeyCallback(window, key_callback);
   glfwSetMouseButtonCallback(window, mouse_button_callback);
   glfwSetCursorPosCallback(window, cursor_position_callback);

   glfwMakeContextCurrent(window);
   glfwSwapInterval( 1 );

   glfwGetFramebufferSize(window, &width, &height);
   reshape(window, width, height);

   glfwSetTime( 0.0 );

   init();


   for (;;)
   {

       t = glfwGetTime();
       dt = t - t_old;
       t_old = t;


       display();


       glfwSwapBuffers(window);
       glfwPollEvents();


       if (glfwWindowShouldClose(window))
           break;
   }

   glfwTerminate();
   exit( EXIT_SUCCESS );
}
