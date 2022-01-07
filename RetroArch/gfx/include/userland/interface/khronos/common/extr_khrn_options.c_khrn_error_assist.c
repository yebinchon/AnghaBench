
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ gl_error_assist; } ;
typedef int GLenum ;





 int GL_NO_ERROR ;

 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 TYPE_1__ khrn_options ;
 int stderr ;

void khrn_error_assist(GLenum error, const char *func)
{
   if (khrn_options.gl_error_assist && error != GL_NO_ERROR)
   {
      fprintf(stderr, "V3D ERROR ASSIST : ");
      switch (error)
      {
      case 131 : fprintf(stderr, "GL_INVALID_ENUM in %s\n", func); break;
      case 129 : fprintf(stderr, "GL_INVALID_VALUE in %s\n", func); break;
      case 130 : fprintf(stderr, "GL_INVALID_OPERATION in %s\n", func); break;
      case 128 : fprintf(stderr, "GL_OUT_OF_MEMORY in %s\n", func); break;
      default : fprintf(stderr, "ERROR CODE %d in %s\n", (int)error, func); break;
      }
      fflush(stderr);
   }
}
