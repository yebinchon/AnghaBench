#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int id; } ;
typedef  TYPE_7__ menucommon_s ;
struct TYPE_14__ {int /*<<< orphan*/  string; } ;
struct TYPE_13__ {int /*<<< orphan*/  string; } ;
struct TYPE_16__ {int modelpage; char** modelnames; int selectedmodel; TYPE_6__ skinname; TYPE_5__ modelname; int /*<<< orphan*/  modelskin; TYPE_4__* picbuttons; TYPE_2__* pics; } ;
struct TYPE_11__ {int /*<<< orphan*/  flags; } ;
struct TYPE_12__ {TYPE_3__ generic; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {TYPE_1__ generic; } ;

/* Variables and functions */
 int ID_PLAYERPIC0 ; 
 scalar_t__ LOW_MEMORY ; 
 int MAX_MODELSPERPAGE ; 
 int PLAYERGRID_COLS ; 
 int PLAYERGRID_ROWS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  QMF_HIGHLIGHT ; 
 int /*<<< orphan*/  QMF_PULSEIFFOCUS ; 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_8__ s_playermodel ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static void FUNC7( void* ptr, int event )
{
	int				modelnum;
	int				maxlen;
	char*			buffptr;
	char*			pdest;
	int				i;

	if (event != QM_ACTIVATED)
		return;

	for (i=0; i<PLAYERGRID_ROWS*PLAYERGRID_COLS; i++)
	{
		// reset
 		s_playermodel.pics[i].generic.flags       &= ~QMF_HIGHLIGHT;
 		s_playermodel.picbuttons[i].generic.flags |= QMF_PULSEIFFOCUS;
	}

	// set selected
	i = ((menucommon_s*)ptr)->id - ID_PLAYERPIC0;
	s_playermodel.pics[i].generic.flags       |= QMF_HIGHLIGHT;
	s_playermodel.picbuttons[i].generic.flags &= ~QMF_PULSEIFFOCUS;

	// get model and strip icon_
	modelnum = s_playermodel.modelpage*MAX_MODELSPERPAGE + i;
	buffptr  = s_playermodel.modelnames[modelnum] + FUNC4("models/players/");
	pdest    = FUNC5(buffptr,"icon_");
	if (pdest)
	{
		// track the whole model/skin name
		FUNC1(s_playermodel.modelskin,buffptr,pdest-buffptr+1);
		FUNC3(s_playermodel.modelskin,pdest + 5);

		// seperate the model name
		maxlen = pdest-buffptr;
		if (maxlen > 16)
			maxlen = 16;
		FUNC1( s_playermodel.modelname.string, buffptr, maxlen );
		FUNC2( s_playermodel.modelname.string );

		// seperate the skin name
		maxlen = FUNC4(pdest+5)+1;
		if (maxlen > 16)
			maxlen = 16;
		FUNC1( s_playermodel.skinname.string, pdest+5, maxlen );
		FUNC2( s_playermodel.skinname.string );

		s_playermodel.selectedmodel = modelnum;

		if( FUNC6() > LOW_MEMORY ) {
			FUNC0();
		}
	}
}