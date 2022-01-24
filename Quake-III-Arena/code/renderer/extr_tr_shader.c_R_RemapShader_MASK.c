#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  timeOffset; struct TYPE_7__* remappedShader; int /*<<< orphan*/  name; struct TYPE_7__* next; } ;
typedef  TYPE_1__ shader_t ;
typedef  int /*<<< orphan*/  qhandle_t ;
struct TYPE_9__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,char const*) ;} ;
struct TYPE_8__ {TYPE_1__* defaultShader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FILE_HASH_SIZE ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  PRINT_WARNING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (char const*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__** hashTable ; 
 TYPE_3__ ri ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_2__ tr ; 

void FUNC9(const char *shaderName, const char *newShaderName, const char *timeOffset) {
	char		strippedName[MAX_QPATH];
	int			hash;
	shader_t	*sh, *sh2;
	qhandle_t	h;

	sh = FUNC3( shaderName );
	if (sh == NULL || sh == tr.defaultShader) {
		h = FUNC2(shaderName, 0);
		sh = FUNC4(h);
	}
	if (sh == NULL || sh == tr.defaultShader) {
		ri.Printf( PRINT_WARNING, "WARNING: R_RemapShader: shader %s not found\n", shaderName );
		return;
	}

	sh2 = FUNC3( newShaderName );
	if (sh2 == NULL || sh2 == tr.defaultShader) {
		h = FUNC2(newShaderName, 0);
		sh2 = FUNC4(h);
	}

	if (sh2 == NULL || sh2 == tr.defaultShader) {
		ri.Printf( PRINT_WARNING, "WARNING: R_RemapShader: new shader %s not found\n", newShaderName );
		return;
	}

	// remap all the shaders with the given name
	// even tho they might have different lightmaps
	FUNC0( shaderName, strippedName );
	hash = FUNC6(strippedName, FILE_HASH_SIZE);
	for (sh = hashTable[hash]; sh; sh = sh->next) {
		if (FUNC1(sh->name, strippedName) == 0) {
			if (sh != sh2) {
				sh->remappedShader = sh2;
			} else {
				sh->remappedShader = NULL;
			}
		}
	}
	if (timeOffset) {
		sh2->timeOffset = FUNC5(timeOffset);
	}
}