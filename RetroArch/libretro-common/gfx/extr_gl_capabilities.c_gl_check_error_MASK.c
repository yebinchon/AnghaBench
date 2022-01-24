#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
#define  GL_INVALID_ENUM 132 
#define  GL_INVALID_OPERATION 131 
#define  GL_INVALID_VALUE 130 
#define  GL_NO_ERROR 129 
#define  GL_OUT_OF_MEMORY 128 
 int FUNC0 () ; 
 char* FUNC1 (char*) ; 

bool FUNC2(char **error_string)
{
   int error = FUNC0();
   switch (error)
   {
      case GL_INVALID_ENUM:
         *error_string = FUNC1("GL: Invalid enum.");
         break;
      case GL_INVALID_VALUE:
         *error_string = FUNC1("GL: Invalid value.");
         break;
      case GL_INVALID_OPERATION:
         *error_string = FUNC1("GL: Invalid operation.");
         break;
      case GL_OUT_OF_MEMORY:
         *error_string = FUNC1("GL: Out of memory.");
         break;
      case GL_NO_ERROR:
         return true;
      default:
         *error_string = FUNC1("Non specified GL error.");
         break;
   }

   return false;
}