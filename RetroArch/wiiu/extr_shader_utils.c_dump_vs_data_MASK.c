#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int size; int uniformBlockCount; int uniformVarCount; int initialValueCount; int loopVarCount; int samplerVarCount; int attribVarCount; TYPE_6__* attribVars; TYPE_5__* samplerVars; TYPE_4__* loopVars; TYPE_3__* initialValues; TYPE_2__* uniformVars; TYPE_1__* uniformBlocks; int /*<<< orphan*/  mode; } ;
struct TYPE_14__ {int location; int count; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct TYPE_13__ {int type; int location; int /*<<< orphan*/  name; } ;
struct TYPE_12__ {int offset; int /*<<< orphan*/  value; } ;
struct TYPE_11__ {int offset; int /*<<< orphan*/ * value; } ;
struct TYPE_10__ {int offset; int type; int count; int block; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int offset; int size; int /*<<< orphan*/  name; } ;
typedef  TYPE_7__ GX2VertexShader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(GX2VertexShader* vs)
{

   FUNC1(vs->size);
   FUNC3(vs->mode);
   FUNC1(vs->uniformBlockCount);
   for(int i = 0; i < vs->uniformBlockCount; i++)
   {
      FUNC2(vs->uniformBlocks[i].name);
      FUNC1(vs->uniformBlocks[i].offset);
      FUNC1(vs->uniformBlocks[i].size);
   }
   FUNC1(vs->uniformVarCount);
   for(int i = 0; i < vs->uniformVarCount; i++)
   {
      FUNC2(vs->uniformVars[i].name);
      FUNC1(vs->uniformVars[i].offset);
      FUNC1(vs->uniformVars[i].type);
      FUNC1(vs->uniformVars[i].count);
      FUNC1(vs->uniformVars[i].block);
   }
   FUNC1(vs->initialValueCount);
   for(int i = 0; i < vs->initialValueCount; i++)
   {
      FUNC1(vs->initialValues[i].offset);
      FUNC0(vs->initialValues[i].value[0]);
      FUNC0(vs->initialValues[i].value[1]);
      FUNC0(vs->initialValues[i].value[2]);
      FUNC0(vs->initialValues[i].value[3]);
   }
   FUNC1(vs->loopVarCount);
   for(int i = 0; i < vs->loopVarCount; i++)
   {
      FUNC1(vs->loopVars[i].offset);
      FUNC3(vs->loopVars[i].value);
   }
   FUNC1(vs->samplerVarCount);
   for(int i = 0; i < vs->samplerVarCount; i++)
   {
      FUNC2(vs->samplerVars[i].name);
      FUNC1(vs->samplerVars[i].type);
      FUNC1(vs->samplerVars[i].location);
   }

   for(int i = 0; i < vs->attribVarCount; i++)
   {
      FUNC2(vs->attribVars[i].name);
      FUNC3(vs->attribVars[i].type);
      FUNC1(vs->attribVars[i].location);
      FUNC1(vs->attribVars[i].count);
   }
}