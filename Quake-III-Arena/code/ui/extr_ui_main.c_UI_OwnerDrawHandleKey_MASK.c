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
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
#define  UI_BLUETEAM1 154 
#define  UI_BLUETEAM2 153 
#define  UI_BLUETEAM3 152 
#define  UI_BLUETEAM4 151 
#define  UI_BLUETEAM5 150 
#define  UI_BLUETEAMNAME 149 
#define  UI_BOTNAME 148 
#define  UI_BOTSKILL 147 
 int /*<<< orphan*/  FUNC0 (int,float*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,float*,int) ; 
#define  UI_CLANNAME 146 
#define  UI_CROSSHAIR 145 
 int /*<<< orphan*/  FUNC2 (int,float*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,float*,int) ; 
#define  UI_EFFECTS 144 
 int /*<<< orphan*/  FUNC4 (int,float*,int) ; 
#define  UI_GAMETYPE 143 
 int /*<<< orphan*/  FUNC5 (int,float*,int,int /*<<< orphan*/ ) ; 
#define  UI_HANDICAP 142 
 int /*<<< orphan*/  FUNC6 (int,float*,int) ; 
#define  UI_JOINGAMETYPE 141 
 int /*<<< orphan*/  FUNC7 (int,float*,int) ; 
#define  UI_NETFILTER 140 
#define  UI_NETGAMETYPE 139 
#define  UI_NETSOURCE 138 
 int /*<<< orphan*/  FUNC8 (int,float*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,float*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,float*,int) ; 
#define  UI_OPPONENT_NAME 137 
 int /*<<< orphan*/  FUNC11 (int,float*,int) ; 
#define  UI_REDBLUE 136 
#define  UI_REDTEAM1 135 
#define  UI_REDTEAM2 134 
#define  UI_REDTEAM3 133 
#define  UI_REDTEAM4 132 
#define  UI_REDTEAM5 131 
#define  UI_REDTEAMNAME 130 
 int /*<<< orphan*/  FUNC12 (int,float*,int) ; 
#define  UI_SELECTEDPLAYER 129 
#define  UI_SKILL 128 
 int /*<<< orphan*/  FUNC13 (int,float*,int) ; 
 int /*<<< orphan*/  FUNC14 (int,float*,int) ; 
 int /*<<< orphan*/  FUNC15 (int,float*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,float*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static qboolean FUNC17(int ownerDraw, int flags, float *special, int key) {
  switch (ownerDraw) {
    case UI_HANDICAP:
      return FUNC6(flags, special, key);
      break;
    case UI_EFFECTS:
      return FUNC4(flags, special, key);
      break;
    case UI_CLANNAME:
      return FUNC2(flags, special, key);
      break;
    case UI_GAMETYPE:
      return FUNC5(flags, special, key, qtrue);
      break;
    case UI_NETGAMETYPE:
      return FUNC9(flags, special, key);
      break;
    case UI_JOINGAMETYPE:
      return FUNC7(flags, special, key);
      break;
    case UI_SKILL:
      return FUNC14(flags, special, key);
      break;
    case UI_BLUETEAMNAME:
      return FUNC16(flags, special, key, qtrue);
      break;
    case UI_REDTEAMNAME:
      return FUNC16(flags, special, key, qfalse);
      break;
    case UI_BLUETEAM1:
		case UI_BLUETEAM2:
		case UI_BLUETEAM3:
		case UI_BLUETEAM4:
		case UI_BLUETEAM5:
      FUNC15(flags, special, key, qtrue, ownerDraw - UI_BLUETEAM1 + 1);
      break;
    case UI_REDTEAM1:
		case UI_REDTEAM2:
		case UI_REDTEAM3:
		case UI_REDTEAM4:
		case UI_REDTEAM5:
      FUNC15(flags, special, key, qfalse, ownerDraw - UI_REDTEAM1 + 1);
      break;
		case UI_NETSOURCE:
      FUNC10(flags, special, key);
			break;
		case UI_NETFILTER:
      FUNC8(flags, special, key);
			break;
		case UI_OPPONENT_NAME:
			FUNC11(flags, special, key);
			break;
		case UI_BOTNAME:
			return FUNC0(flags, special, key);
			break;
		case UI_BOTSKILL:
			return FUNC1(flags, special, key);
			break;
		case UI_REDBLUE:
			FUNC12(flags, special, key);
			break;
		case UI_CROSSHAIR:
			FUNC3(flags, special, key);
			break;
		case UI_SELECTEDPLAYER:
			FUNC13(flags, special, key);
			break;
    default:
      break;
  }

  return qfalse;
}