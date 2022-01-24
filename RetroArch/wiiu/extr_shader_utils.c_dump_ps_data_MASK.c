#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int size; int uniformBlockCount; int uniformVarCount; int initialValueCount; int loopVarCount; int samplerVarCount; TYPE_5__* samplerVars; TYPE_4__* loopVars; TYPE_3__* initialValues; TYPE_2__* uniformVars; TYPE_1__* uniformBlocks; int /*<<< orphan*/  mode; } ;
struct TYPE_12__ {int type; int location; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int offset; int /*<<< orphan*/  value; } ;
struct TYPE_10__ {int offset; int /*<<< orphan*/ * value; } ;
struct TYPE_9__ {int offset; int type; int count; int block; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int offset; int size; int /*<<< orphan*/  name; } ;
typedef  TYPE_6__ GX2PixelShader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(GX2PixelShader* ps)
{
   FUNC1(ps->size);
   FUNC3(ps->mode);
   FUNC1(ps->uniformBlockCount);
   for(int i = 0; i < ps->uniformBlockCount; i++)
   {
      FUNC2(ps->uniformBlocks[i].name);
      FUNC1(ps->uniformBlocks[i].offset);
      FUNC1(ps->uniformBlocks[i].size);
   }
   FUNC1(ps->uniformVarCount);
   for(int i = 0; i < ps->uniformVarCount; i++)
   {
      FUNC2(ps->uniformVars[i].name);
      FUNC1(ps->uniformVars[i].offset);
      FUNC1(ps->uniformVars[i].type);
      FUNC1(ps->uniformVars[i].count);
      FUNC1(ps->uniformVars[i].block);
   }
   FUNC1(ps->initialValueCount);
   for(int i = 0; i < ps->initialValueCount; i++)
   {
      FUNC1(ps->initialValues[i].offset);
      FUNC0(ps->initialValues[i].value[0]);
      FUNC0(ps->initialValues[i].value[1]);
      FUNC0(ps->initialValues[i].value[2]);
      FUNC0(ps->initialValues[i].value[3]);
   }
   FUNC1(ps->loopVarCount);
   for(int i = 0; i < ps->loopVarCount; i++)
   {
      FUNC1(ps->loopVars[i].offset);
      FUNC3(ps->loopVars[i].value);
   }
   FUNC1(ps->samplerVarCount);
   for(int i = 0; i < ps->samplerVarCount; i++)
   {
      FUNC2(ps->samplerVars[i].name);
      FUNC1(ps->samplerVars[i].type);
      FUNC1(ps->samplerVars[i].location);
   }

}