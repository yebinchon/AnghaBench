#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  log ;
struct TYPE_5__ {char** attribute_names; int* attribute_locations; char** uniform_names; int* uniform_locations; void* vs; void* fs; int /*<<< orphan*/  program; struct TYPE_5__* fragment_source; struct TYPE_5__* vertex_source; } ;
typedef  TYPE_1__ RASPITEXUTIL_SHADER_PROGRAM_T ;
typedef  int /*<<< orphan*/  GLint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COMPILE_STATUS ; 
 int /*<<< orphan*/  GL_FRAGMENT_SHADER ; 
 int /*<<< orphan*/  GL_LINK_STATUS ; 
 int /*<<< orphan*/  GL_VERTEX_SHADER ; 
 int SHADER_MAX_ATTRIBUTES ; 
 int SHADER_MAX_UNIFORMS ; 
 char* VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*,int,int*,char*) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*,int,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 

int FUNC17(RASPITEXUTIL_SHADER_PROGRAM_T *p)
{
   GLint status;
   int i = 0;
   char log[1024];
   int logLen = 0;
   FUNC14(p);
   FUNC14(p->vertex_source);
   FUNC14(p->fragment_source);

   if (! (p && p->vertex_source && p->fragment_source))
      goto fail;

   p->vs = p->fs = 0;

   p->vs = FUNC3(GL_VERTEX_SHADER);
   FUNC13(p->vs, 1, &p->vertex_source, NULL);
   FUNC1(p->vs);
   FUNC10(p->vs, GL_COMPILE_STATUS, &status);
   if (! status)
   {
      FUNC9(p->vs, sizeof(log), &logLen, log);
      FUNC15("Program info log %s", log);
      goto fail;
   }

   p->fs = FUNC3(GL_FRAGMENT_SHADER);
   FUNC13(p->fs, 1, &p->fragment_source, NULL);
   FUNC1(p->fs);

   FUNC10(p->fs, GL_COMPILE_STATUS, &status);
   if (! status)
   {
      FUNC9(p->fs, sizeof(log), &logLen, log);
      FUNC15("Program info log %s", log);
      goto fail;
   }

   p->program = FUNC2();
   FUNC0(p->program, p->vs);
   FUNC0(p->program, p->fs);
   FUNC12(p->program);
   FUNC8(p->program, GL_LINK_STATUS, &status);
   if (! status)
   {
      FUNC15("Failed to link shader program");
      FUNC7(p->program, sizeof(log), &logLen, log);
      FUNC15("Program info log %s", log);
      goto fail;
   }

   for (i = 0; i < SHADER_MAX_ATTRIBUTES; ++i)
   {
      if (! p->attribute_names[i])
         break;
      p->attribute_locations[i] = FUNC6(p->program, p->attribute_names[i]);
      if (p->attribute_locations[i] == -1)
      {
         FUNC15("Failed to get location for attribute %s",
                        p->attribute_names[i]);
         goto fail;
      }
      else
      {
         FUNC16("Attribute for %s is %d",
                        p->attribute_names[i], p->attribute_locations[i]);
      }
   }

   for (i = 0; i < SHADER_MAX_UNIFORMS; ++i)
   {
      if (! p->uniform_names[i])
         break;
      p->uniform_locations[i] = FUNC11(p->program, p->uniform_names[i]);
      if (p->uniform_locations[i] == -1)
      {
         FUNC15("Failed to get location for uniform %s",
                        p->uniform_names[i]);
         goto fail;
      }
      else
      {
         FUNC16("Uniform for %s is %d",
                        p->uniform_names[i], p->uniform_locations[i]);
      }
   }

   return 0;

fail:
   FUNC15("%s: Failed to build shader program", VCOS_FUNCTION);
   if (p)
   {
      FUNC4(p->program);
      FUNC5(p->fs);
      FUNC5(p->vs);
   }
   return -1;
}