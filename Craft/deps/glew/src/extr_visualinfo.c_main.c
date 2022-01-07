
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dc; } ;
typedef int GLenum ;
typedef TYPE_1__ GLContext ;


 scalar_t__ CreateContext (TYPE_1__*) ;
 int DefaultScreen (int ) ;
 int DestroyContext (TYPE_1__*) ;
 int GLEW_OK ;
 int GLU_EXTENSIONS ;
 int GLU_VERSION ;
 int GL_EXTENSIONS ;
 int GL_RENDERER ;
 scalar_t__ GL_TRUE ;
 int GL_VENDOR ;
 int GL_VERSION ;
 int InitContext (TYPE_1__*) ;
 scalar_t__ ParseArgs (int,char**) ;
 int PrintExtensions (char*) ;
 int VisualInfo (TYPE_1__*) ;
 scalar_t__ WGLEW_ARB_extensions_string ;
 scalar_t__ WGLEW_EXT_extensions_string ;
 int displaystdout ;
 int fclose (int *) ;
 int * file ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 char* glGetString (int ) ;
 int glXGetCurrentDisplay () ;
 char* glXQueryExtensionsString (int ,int ) ;
 int glewContextInit (int ) ;
 scalar_t__ glewExperimental ;
 int glewGetContext () ;
 char* glewGetErrorString (int) ;
 int glewInit () ;
 char* gluGetString (int ) ;
 scalar_t__ glxewContextInit (int ) ;
 int glxewGetContext () ;
 int * stderr ;
 int * stdout ;
 scalar_t__ wglGetExtensionsStringARB (int ) ;
 scalar_t__ wglGetExtensionsStringEXT () ;
 scalar_t__ wglewContextInit (int ) ;
 int wglewGetContext () ;

int
main (int argc, char** argv)
{
  GLenum err;
  GLContext ctx;



  if (GL_TRUE == ParseArgs(argc-1, argv+1))
  {







    fprintf(stderr, "Usage: visualinfo [-h] [-display <display>] [-visual <id>]\n");
    fprintf(stderr, "        -h: this screen\n");
    fprintf(stderr, "        -display <display>: use given display\n");
    fprintf(stderr, "        -visual <id>: use given visual\n");

    return 1;
  }



  InitContext(&ctx);
  if (GL_TRUE == CreateContext(&ctx))
  {
    fprintf(stderr, "Error: CreateContext failed\n");
    DestroyContext(&ctx);
    return 1;
  }



  glewExperimental = GL_TRUE;
  err = glewInit();

  if (GLEW_OK != err)
  {
    fprintf(stderr, "Error [main]: glewInit failed: %s\n", glewGetErrorString(err));
    DestroyContext(&ctx);
    return 1;
  }
  file = stdout;





  fprintf(file, "OpenGL vendor string: %s\n", glGetString(GL_VENDOR));
  fprintf(file, "OpenGL renderer string: %s\n", glGetString(GL_RENDERER));
  fprintf(file, "OpenGL version string: %s\n", glGetString(GL_VERSION));
  fprintf(file, "OpenGL extensions (GL_): \n");
  PrintExtensions((char*)glGetString(GL_EXTENSIONS));



  fprintf(file, "GLU version string: %s\n", gluGetString(GLU_VERSION));
  fprintf(file, "GLU extensions (GLU_): \n");
  PrintExtensions((char*)gluGetString(GLU_EXTENSIONS));
  fprintf(file, "GLX extensions (GLX_): \n");
  PrintExtensions(glXQueryExtensionsString(glXGetCurrentDisplay(),
                                           DefaultScreen(glXGetCurrentDisplay())));




  VisualInfo(&ctx);



  DestroyContext(&ctx);
  if (file != stdout)
    fclose(file);
  return 0;
}
