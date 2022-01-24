#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ type; char* string; } ;
typedef  TYPE_1__ token_t ;
struct TYPE_18__ {int /*<<< orphan*/  token; int /*<<< orphan*/  defines; int /*<<< orphan*/  definehash; scalar_t__ skip; } ;
typedef  TYPE_2__ source_t ;
typedef  int /*<<< orphan*/  define_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ MAX_TOKEN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,scalar_t__) ; 
 scalar_t__ TT_NAME ; 
 scalar_t__ TT_PUNCTUATION ; 
 scalar_t__ TT_STRING ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char*) ; 

int FUNC13(source_t *source, token_t *token)
{
	define_t *define;

	while(1)
	{
		if (!FUNC7(source, token)) return qfalse;
		//check for precompiler directives
		if (token->type == TT_PUNCTUATION && *token->string == '#')
		{
#ifdef QUAKEC
			if (!BuiltinFunction(source))
#endif //QUAKC
			{
				//read the precompiler directive
				if (!FUNC5(source)) return qfalse;
				continue;
			} //end if
		} //end if
		if (token->type == TT_PUNCTUATION && *token->string == '$')
		{
#ifdef QUAKEC
			if (!QuakeCMacro(source))
#endif //QUAKEC
			{
				//read the precompiler directive
				if (!FUNC6(source)) return qfalse;
				continue;
			} //end if
		} //end if
		// recursively concatenate strings that are behind each other still resolving defines
		if (token->type == TT_STRING)
		{
			token_t newtoken;
			if (FUNC13(source, &newtoken))
			{
				if (newtoken.type == TT_STRING)
				{
					token->string[FUNC12(token->string)-1] = '\0';
					if (FUNC12(token->string) + FUNC12(newtoken.string+1) + 1 >= MAX_TOKEN)
					{
						FUNC10(source, "string longer than MAX_TOKEN %d\n", MAX_TOKEN);
						return qfalse;
					}
					FUNC11(token->string, newtoken.string+1);
				}
				else
				{
					FUNC8(source, &newtoken);
				}
			}
		} //end if
		//if skipping source because of conditional compilation
		if (source->skip) continue;
		//if the token is a name
		if (token->type == TT_NAME)
		{
			//check if the name is a define macro
#if DEFINEHASHING
			define = PC_FindHashedDefine(source->definehash, token->string);
#else
			define = FUNC3(source->defines, token->string);
#endif //DEFINEHASHING
			//if it is a define macro
			if (define)
			{
				//expand the defined macro
				if (!FUNC2(source, token, define)) return qfalse;
				continue;
			} //end if
		} //end if
		//copy token for unreading
		FUNC1(&source->token, token, sizeof(token_t));
		//found a token
		return qtrue;
	} //end while
}