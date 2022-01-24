#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_7__ {void* Value; void* Name; } ;
struct TYPE_6__ {size_t NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ STRMAP_ENTRY ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 TYPE_1__* FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,char*) ; 

__attribute__((used)) static LIST *FUNC8(char *target,char *filename, UINT size)
{
	char *start, tmp;

	if(target == NULL || filename == NULL)
	{
		return NULL;
	}

	// Process the absolute path specification
	if(FUNC6(target,"http://"))
	{
		// Skip http://
		target += 7;

		// Skip the host name portion
		while(*target != '/' && *target != '\0')
		{
			target ++;
		}

		// Error if the "/" isn't included after "http://"
		if(*target == '\0')
		{
			return NULL;
		}

		target++;
	}

	// Unescape
	// (not implemented)

	// Extract the file name portion
	start = target;
	while(*target != '?' && *target != '\0')
	{
		target ++;
	}
	tmp = *target;
	*target = '\0';
	FUNC7(filename, size, start);
	*target = tmp;

	// Interpret if there are parameters
	if(*target == '?')
	{
		LIST *params = FUNC4();
		UINT i;
		TOKEN_LIST *tl;
		target++;
		tl =FUNC5(target,"&");
		for(i=0;i<tl->NumTokens;i++)
		{
			char *token = tl->Token[i];
			char *body = token;
			STRMAP_ENTRY *newentry = (STRMAP_ENTRY*)FUNC3(sizeof(STRMAP_ENTRY));

			while(*body != '=' && *body != '\0')
			{
				body++;
			}
			if(*body == '=')
			{
				*body = '\0';
				body++;
			}
			newentry->Name = FUNC1(token);
			newentry->Value = FUNC1(body);
			FUNC0(params, newentry);
//			Debug("PARAMS: %s : %s\n",token,body);
		}
		FUNC2(tl);
		return params;
	}
	return NULL;
}