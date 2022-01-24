#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* string; } ;
struct TYPE_6__ {char* string; } ;
struct TYPE_5__ {int /*<<< orphan*/  string; } ;
struct TYPE_8__ {int nummodels; char** modelnames; int selectedmodel; int modelpage; TYPE_3__ skinname; TYPE_2__ modelname; int /*<<< orphan*/  modelskin; TYPE_1__ playername; } ;

/* Variables and functions */
 int MAX_MODELSPERPAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_4__ s_playermodel ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8( void )
{
	int				i;
	int				maxlen;
	char			modelskin[64];
	char*			buffptr;
	char*			pdest;

	// name
	FUNC7( "name", s_playermodel.playername.string, 16 );
	FUNC0( s_playermodel.playername.string );

	// model
	FUNC7( "model", s_playermodel.modelskin, 64 );
	
	// find model in our list
	for (i=0; i<s_playermodel.nummodels; i++)
	{
		// strip icon_
		buffptr  = s_playermodel.modelnames[i] + FUNC5("models/players/");
		pdest    = FUNC6(buffptr,"icon_");
		if (pdest)
		{
			FUNC2(modelskin,buffptr,pdest-buffptr+1);
			FUNC4(modelskin,pdest + 5);
		}
		else
			continue;

		if (!FUNC1( s_playermodel.modelskin, modelskin ))
		{
			// found pic, set selection here		
			s_playermodel.selectedmodel = i;
			s_playermodel.modelpage     = i/MAX_MODELSPERPAGE;

			// seperate the model name
			maxlen = pdest-buffptr;
			if (maxlen > 16)
				maxlen = 16;
			FUNC2( s_playermodel.modelname.string, buffptr, maxlen );
			FUNC3( s_playermodel.modelname.string );

			// seperate the skin name
			maxlen = FUNC5(pdest+5)+1;
			if (maxlen > 16)
				maxlen = 16;
			FUNC2( s_playermodel.skinname.string, pdest+5, maxlen );
			FUNC3( s_playermodel.skinname.string );
			break;
		}
	}
}