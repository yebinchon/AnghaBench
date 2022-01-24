#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  v0; } ;
struct TYPE_9__ {int /*<<< orphan*/  v3; int /*<<< orphan*/  v2; int /*<<< orphan*/  v1; int /*<<< orphan*/  v0; } ;
struct TYPE_11__ {TYPE_4__ integer; int /*<<< orphan*/  floatv; TYPE_3__ f; } ;
struct TYPE_8__ {size_t idx; int /*<<< orphan*/  ident; scalar_t__ enable; } ;
struct uniform_info {int type; TYPE_5__ result; int /*<<< orphan*/  location; TYPE_2__ lookup; } ;
struct TYPE_12__ {TYPE_1__* prg; } ;
typedef  TYPE_6__ glsl_shader_data_t ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  GLint ;

/* Variables and functions */
#define  UNIFORM_1F 136 
#define  UNIFORM_1FV 135 
#define  UNIFORM_1I 134 
#define  UNIFORM_2F 133 
#define  UNIFORM_2FV 132 
#define  UNIFORM_3F 131 
#define  UNIFORM_3FV 130 
#define  UNIFORM_4F 129 
#define  UNIFORM_4FV 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(
      void *data,
      struct uniform_info *param,
      void *uniform_data)
{
   GLint            location = 0;
   glsl_shader_data_t  *glsl = (glsl_shader_data_t*)data;

   if (!glsl || !param)
      return;

   if (param->lookup.enable)
      location = FUNC0(glsl->prg[param->lookup.idx].id, param->lookup.ident);
   else
      location = param->location;

   switch (param->type)
   {
      case UNIFORM_1F:
         FUNC1(location, param->result.f.v0);
         break;
      case UNIFORM_2F:
         FUNC4(location, param->result.f.v0,
               param->result.f.v1);
         break;
      case UNIFORM_3F:
         FUNC6(location, param->result.f.v0,
               param->result.f.v1, param->result.f.v2);
         break;
      case UNIFORM_4F:
         FUNC8(location, param->result.f.v0,
               param->result.f.v1, param->result.f.v2,
               param->result.f.v3);
         break;
      case UNIFORM_1FV:
         FUNC2(location, 1, param->result.floatv);
         break;
      case UNIFORM_2FV:
         FUNC5(location, 1, param->result.floatv);
         break;
      case UNIFORM_3FV:
         FUNC7(location, 1, param->result.floatv);
         break;
      case UNIFORM_4FV:
         FUNC9(location, 1, param->result.floatv);
         break;
      case UNIFORM_1I:
         FUNC3(location, (GLint)param->result.integer.v0);
         break;
   }
}