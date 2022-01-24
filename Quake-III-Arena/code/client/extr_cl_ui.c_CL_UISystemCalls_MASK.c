#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int (* PC_AddGlobalDefine ) (int) ;int (* PC_LoadSourceHandle ) (int) ;int (* PC_FreeSourceHandle ) (int) ;int (* PC_ReadTokenHandle ) (int,int) ;int (* PC_SourceFileAndLine ) (int,int,int) ;} ;
struct TYPE_3__ {int (* RegisterModel ) (int) ;int (* RegisterSkin ) (int) ;int (* RegisterShaderNoMip ) (int) ;int /*<<< orphan*/  (* RemapShader ) (int,int,int) ;int /*<<< orphan*/  (* RegisterFont ) (int,int,int) ;int /*<<< orphan*/  (* LerpTag ) (int,int,int,int,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* ModelBounds ) (int,int,int) ;int /*<<< orphan*/  (* DrawStretchPic ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* SetColor ) (int) ;int /*<<< orphan*/  (* RenderScene ) (int) ;int /*<<< orphan*/  (* AddLightToScene ) (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* AddPolyToScene ) (int,int,int,int) ;int /*<<< orphan*/  (* AddRefEntityToScene ) (int) ;int /*<<< orphan*/  (* ClearScene ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int,int,int,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 int FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int,int) ; 
 int /*<<< orphan*/  FUNC23 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int,int,int) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int FUNC28 (int,int,int) ; 
 int FUNC29 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC30 (int,int,int) ; 
 int FUNC31 (int,int,int) ; 
 int /*<<< orphan*/  FUNC32 (int,int,int) ; 
 int FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int) ; 
 int /*<<< orphan*/  FUNC35 (int,int) ; 
 int FUNC36 (int,int,int) ; 
 int FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int /*<<< orphan*/  FUNC39 (int,int,int) ; 
 int FUNC40 () ; 
 int FUNC41 () ; 
 int FUNC42 (int) ; 
 int /*<<< orphan*/  FUNC43 (int,int,int) ; 
 int /*<<< orphan*/  FUNC44 (int,int) ; 
 int /*<<< orphan*/  FUNC45 (int) ; 
 int /*<<< orphan*/  FUNC46 (int) ; 
 int FUNC47 (int,int,int) ; 
 int /*<<< orphan*/  FUNC48 (int) ; 
 int FUNC49 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC50 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC51 (int,int,int) ; 
 int FUNC52 () ; 
 int /*<<< orphan*/  FUNC53 (int,int,int,int) ; 
 int FUNC54 (int) ; 
 int /*<<< orphan*/  FUNC55 (int,int,int,int) ; 
 int FUNC56 (int,int) ; 
 int FUNC57 (int,int,int) ; 
 int /*<<< orphan*/  FUNC58 () ; 
 int /*<<< orphan*/  FUNC59 (int,int,int) ; 
 int /*<<< orphan*/  FUNC60 (int,int) ; 
 int /*<<< orphan*/  FUNC61 (int) ; 
 int /*<<< orphan*/  FUNC62 () ; 
 int FUNC63 (int,int) ; 
 int FUNC64 (int) ; 
 int /*<<< orphan*/  FUNC65 () ; 
 int FUNC66 (int,int) ; 
 int /*<<< orphan*/  FUNC67 (int,int) ; 
 int /*<<< orphan*/  FUNC68 (int,int) ; 
 int /*<<< orphan*/  FUNC69 () ; 
 int FUNC70 () ; 
#define  UI_ARGC 223 
#define  UI_ARGV 222 
#define  UI_ATAN2 221 
#define  UI_CEIL 220 
#define  UI_CIN_DRAWCINEMATIC 219 
#define  UI_CIN_PLAYCINEMATIC 218 
#define  UI_CIN_RUNCINEMATIC 217 
#define  UI_CIN_SETEXTENTS 216 
#define  UI_CIN_STOPCINEMATIC 215 
#define  UI_CMD_EXECUTETEXT 214 
#define  UI_CM_LERPTAG 213 
#define  UI_COS 212 
#define  UI_CVAR_CREATE 211 
#define  UI_CVAR_INFOSTRINGBUFFER 210 
#define  UI_CVAR_REGISTER 209 
#define  UI_CVAR_RESET 208 
#define  UI_CVAR_SET 207 
#define  UI_CVAR_SETVALUE 206 
#define  UI_CVAR_UPDATE 205 
#define  UI_CVAR_VARIABLESTRINGBUFFER 204 
#define  UI_CVAR_VARIABLEVALUE 203 
#define  UI_ERROR 202 
#define  UI_FLOOR 201 
#define  UI_FS_FCLOSEFILE 200 
#define  UI_FS_FOPENFILE 199 
#define  UI_FS_GETFILELIST 198 
#define  UI_FS_READ 197 
#define  UI_FS_SEEK 196 
#define  UI_FS_WRITE 195 
#define  UI_GETCLIENTSTATE 194 
#define  UI_GETCLIPBOARDDATA 193 
#define  UI_GETCONFIGSTRING 192 
#define  UI_GETGLCONFIG 191 
#define  UI_GET_CDKEY 190 
#define  UI_KEY_CLEARSTATES 189 
#define  UI_KEY_GETBINDINGBUF 188 
#define  UI_KEY_GETCATCHER 187 
#define  UI_KEY_GETOVERSTRIKEMODE 186 
#define  UI_KEY_ISDOWN 185 
#define  UI_KEY_KEYNUMTOSTRINGBUF 184 
#define  UI_KEY_SETBINDING 183 
#define  UI_KEY_SETCATCHER 182 
#define  UI_KEY_SETOVERSTRIKEMODE 181 
#define  UI_LAN_ADDSERVER 180 
#define  UI_LAN_CLEARPING 179 
#define  UI_LAN_COMPARESERVERS 178 
#define  UI_LAN_GETPING 177 
#define  UI_LAN_GETPINGINFO 176 
#define  UI_LAN_GETPINGQUEUECOUNT 175 
#define  UI_LAN_GETSERVERADDRESSSTRING 174 
#define  UI_LAN_GETSERVERCOUNT 173 
#define  UI_LAN_GETSERVERINFO 172 
#define  UI_LAN_GETSERVERPING 171 
#define  UI_LAN_LOADCACHEDSERVERS 170 
#define  UI_LAN_MARKSERVERVISIBLE 169 
#define  UI_LAN_REMOVESERVER 168 
#define  UI_LAN_RESETPINGS 167 
#define  UI_LAN_SAVECACHEDSERVERS 166 
#define  UI_LAN_SERVERISVISIBLE 165 
#define  UI_LAN_SERVERSTATUS 164 
#define  UI_LAN_UPDATEVISIBLEPINGS 163 
#define  UI_MEMCPY 162 
#define  UI_MEMORY_REMAINING 161 
#define  UI_MEMSET 160 
#define  UI_MILLISECONDS 159 
#define  UI_PC_ADD_GLOBAL_DEFINE 158 
#define  UI_PC_FREE_SOURCE 157 
#define  UI_PC_LOAD_SOURCE 156 
#define  UI_PC_READ_TOKEN 155 
#define  UI_PC_SOURCE_FILE_AND_LINE 154 
#define  UI_PRINT 153 
#define  UI_REAL_TIME 152 
#define  UI_R_ADDLIGHTTOSCENE 151 
#define  UI_R_ADDPOLYTOSCENE 150 
#define  UI_R_ADDREFENTITYTOSCENE 149 
#define  UI_R_CLEARSCENE 148 
#define  UI_R_DRAWSTRETCHPIC 147 
#define  UI_R_MODELBOUNDS 146 
#define  UI_R_REGISTERFONT 145 
#define  UI_R_REGISTERMODEL 144 
#define  UI_R_REGISTERSHADERNOMIP 143 
#define  UI_R_REGISTERSKIN 142 
#define  UI_R_REMAP_SHADER 141 
#define  UI_R_RENDERSCENE 140 
#define  UI_R_SETCOLOR 139 
#define  UI_SET_CDKEY 138 
#define  UI_SET_PBCLSTATUS 137 
#define  UI_SIN 136 
#define  UI_SQRT 135 
#define  UI_STRNCPY 134 
#define  UI_S_REGISTERSOUND 133 
#define  UI_S_STARTBACKGROUNDTRACK 132 
#define  UI_S_STARTLOCALSOUND 131 
#define  UI_S_STOPBACKGROUNDTRACK 130 
#define  UI_UPDATESCREEN 129 
#define  UI_VERIFY_CDKEY 128 
 int FUNC71 (int) ; 
 int /*<<< orphan*/  FUNC72 (int) ; 
 int /*<<< orphan*/  FUNC73 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* botlib_export ; 
 int /*<<< orphan*/  FUNC74 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC75 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC76 (int /*<<< orphan*/ ) ; 
 TYPE_1__ re ; 
 int /*<<< orphan*/  FUNC77 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC78 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC79 (int,int,int) ; 
 int FUNC80 (int) ; 
 int /*<<< orphan*/  FUNC81 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC82 (int,int,int) ; 
 int /*<<< orphan*/  FUNC83 (int,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC84 (int,int,int) ; 
 int FUNC85 (int) ; 
 int FUNC86 (int) ; 
 int FUNC87 (int) ; 
 int FUNC88 (int,int) ; 
 int FUNC89 (int,int,int) ; 
 int /*<<< orphan*/  FUNC90 (int,int,int) ; 
 int FUNC91 (int) ; 
 int FUNC92 (int) ; 
 int /*<<< orphan*/  FUNC93 () ; 
 int /*<<< orphan*/  FUNC94 (int) ; 
 int /*<<< orphan*/  FUNC95 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC96 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC97 (int) ; 
 int /*<<< orphan*/  FUNC98 (int) ; 

int FUNC99( int *args ) {
	switch( args[0] ) {
	case UI_ERROR:
		FUNC13( ERR_DROP, "%s", FUNC71(1) );
		return 0;

	case UI_PRINT:
		FUNC16( "%s", FUNC71(1) );
		return 0;

	case UI_MILLISECONDS:
		return FUNC70();

	case UI_CVAR_REGISTER:
		FUNC20( FUNC71(1), FUNC71(2), FUNC71(3), args[4] ); 
		return 0;

	case UI_CVAR_UPDATE:
		FUNC24( FUNC71(1) );
		return 0;

	case UI_CVAR_SET:
		FUNC22( FUNC71(1), FUNC71(2) );
		return 0;

	case UI_CVAR_VARIABLEVALUE:
		return FUNC33( FUNC26( FUNC71(1) ) );

	case UI_CVAR_VARIABLESTRINGBUFFER:
		FUNC25( FUNC71(1), FUNC71(2), args[3] );
		return 0;

	case UI_CVAR_SETVALUE:
		FUNC23( FUNC71(1), FUNC72(2) );
		return 0;

	case UI_CVAR_RESET:
		FUNC21( FUNC71(1) );
		return 0;

	case UI_CVAR_CREATE:
		FUNC18( FUNC71(1), FUNC71(2), args[3] );
		return 0;

	case UI_CVAR_INFOSTRINGBUFFER:
		FUNC19( args[1], FUNC71(2), args[3] );
		return 0;

	case UI_ARGC:
		return FUNC10();

	case UI_ARGV:
		FUNC11( args[1], FUNC71(2), args[3] );
		return 0;

	case UI_CMD_EXECUTETEXT:
		FUNC9( args[1], FUNC71(2) );
		return 0;

	case UI_FS_FOPENFILE:
		return FUNC28( FUNC71(1), FUNC71(2), args[3] );

	case UI_FS_READ:
		FUNC30( FUNC71(1), args[2], args[3] );
		return 0;

	case UI_FS_WRITE:
		FUNC32( FUNC71(1), args[2], args[3] );
		return 0;

	case UI_FS_FCLOSEFILE:
		FUNC27( args[1] );
		return 0;

	case UI_FS_GETFILELIST:
		return FUNC29( FUNC71(1), FUNC71(2), FUNC71(3), args[4] );

	case UI_FS_SEEK:
		return FUNC31( args[1], args[2], args[3] );
	
	case UI_R_REGISTERMODEL:
		return re.RegisterModel( FUNC71(1) );

	case UI_R_REGISTERSKIN:
		return re.RegisterSkin( FUNC71(1) );

	case UI_R_REGISTERSHADERNOMIP:
		return re.RegisterShaderNoMip( FUNC71(1) );

	case UI_R_CLEARSCENE:
		re.ClearScene();
		return 0;

	case UI_R_ADDREFENTITYTOSCENE:
		re.AddRefEntityToScene( FUNC71(1) );
		return 0;

	case UI_R_ADDPOLYTOSCENE:
		re.AddPolyToScene( args[1], args[2], FUNC71(3), 1 );
		return 0;

	case UI_R_ADDLIGHTTOSCENE:
		re.AddLightToScene( FUNC71(1), FUNC72(2), FUNC72(3), FUNC72(4), FUNC72(5) );
		return 0;

	case UI_R_RENDERSCENE:
		re.RenderScene( FUNC71(1) );
		return 0;

	case UI_R_SETCOLOR:
		re.SetColor( FUNC71(1) );
		return 0;

	case UI_R_DRAWSTRETCHPIC:
		re.DrawStretchPic( FUNC72(1), FUNC72(2), FUNC72(3), FUNC72(4), FUNC72(5), FUNC72(6), FUNC72(7), FUNC72(8), args[9] );
		return 0;

  case UI_R_MODELBOUNDS:
		re.ModelBounds( args[1], FUNC71(2), FUNC71(3) );
		return 0;

	case UI_UPDATESCREEN:
		FUNC65();
		return 0;

	case UI_CM_LERPTAG:
		re.LerpTag( FUNC71(1), args[2], args[3], args[4], FUNC72(5), FUNC71(6) );
		return 0;

	case UI_S_REGISTERSOUND:
		return FUNC66( FUNC71(1), args[2] );

	case UI_S_STARTLOCALSOUND:
		FUNC68( args[1], args[2] );
		return 0;

	case UI_KEY_KEYNUMTOSTRINGBUF:
		FUNC43( args[1], FUNC71(2), args[3] );
		return 0;

	case UI_KEY_GETBINDINGBUF:
		FUNC39( args[1], FUNC71(2), args[3] );
		return 0;

	case UI_KEY_SETBINDING:
		FUNC44( args[1], FUNC71(2) );
		return 0;

	case UI_KEY_ISDOWN:
		return FUNC42( args[1] );

	case UI_KEY_GETOVERSTRIKEMODE:
		return FUNC41();

	case UI_KEY_SETOVERSTRIKEMODE:
		FUNC46( args[1] );
		return 0;

	case UI_KEY_CLEARSTATES:
		FUNC38();
		return 0;

	case UI_KEY_GETCATCHER:
		return FUNC40();

	case UI_KEY_SETCATCHER:
		FUNC45( args[1] );
		return 0;

	case UI_GETCLIPBOARDDATA:
		FUNC35( FUNC71(1), args[2] );
		return 0;

	case UI_GETCLIENTSTATE:
		FUNC34( FUNC71(1) );
		return 0;		

	case UI_GETGLCONFIG:
		FUNC8( FUNC71(1) );
		return 0;

	case UI_GETCONFIGSTRING:
		return FUNC36( args[1], FUNC71(2), args[3] );

	case UI_LAN_LOADCACHEDSERVERS:
		FUNC58();
		return 0;

	case UI_LAN_SAVECACHEDSERVERS:
		FUNC62();
		return 0;

	case UI_LAN_ADDSERVER:
		return FUNC47(args[1], FUNC71(2), FUNC71(3));

	case UI_LAN_REMOVESERVER:
		FUNC60(args[1], FUNC71(2));
		return 0;

	case UI_LAN_GETPINGQUEUECOUNT:
		return FUNC52();

	case UI_LAN_CLEARPING:
		FUNC48( args[1] );
		return 0;

	case UI_LAN_GETPING:
		FUNC50( args[1], FUNC71(2), args[3], FUNC71(4) );
		return 0;

	case UI_LAN_GETPINGINFO:
		FUNC51( args[1], FUNC71(2), args[3] );
		return 0;

	case UI_LAN_GETSERVERCOUNT:
		return FUNC54(args[1]);

	case UI_LAN_GETSERVERADDRESSSTRING:
		FUNC53( args[1], args[2], FUNC71(3), args[4] );
		return 0;

	case UI_LAN_GETSERVERINFO:
		FUNC55( args[1], args[2], FUNC71(3), args[4] );
		return 0;

	case UI_LAN_GETSERVERPING:
		return FUNC56( args[1], args[2] );

	case UI_LAN_MARKSERVERVISIBLE:
		FUNC59( args[1], args[2], args[3] );
		return 0;

	case UI_LAN_SERVERISVISIBLE:
		return FUNC63( args[1], args[2] );

	case UI_LAN_UPDATEVISIBLEPINGS:
		return FUNC64( args[1] );

	case UI_LAN_RESETPINGS:
		FUNC61( args[1] );
		return 0;

	case UI_LAN_SERVERSTATUS:
		return FUNC57( FUNC71(1), FUNC71(2), args[3] );

	case UI_LAN_COMPARESERVERS:
		return FUNC49( args[1], args[2], args[3], args[4], args[5] );

	case UI_MEMORY_REMAINING:
		return FUNC37();

	case UI_GET_CDKEY:
		FUNC5( FUNC71(1), args[2] );
		return 0;

	case UI_SET_CDKEY:
		FUNC6( FUNC71(1) );
		return 0;
	
	case UI_SET_PBCLSTATUS:
		return 0;	

	case UI_R_REGISTERFONT:
		re.RegisterFont( FUNC71(1), args[2], FUNC71(3));
		return 0;

	case UI_MEMSET:
		FUNC15( FUNC71(1), args[2], args[3] );
		return 0;

	case UI_MEMCPY:
		FUNC14( FUNC71(1), FUNC71(2), args[3] );
		return 0;

	case UI_STRNCPY:
		return (int)FUNC79( FUNC71(1), FUNC71(2), args[3] );

	case UI_SIN:
		return FUNC33( FUNC77( FUNC72(1) ) );

	case UI_COS:
		return FUNC33( FUNC75( FUNC72(1) ) );

	case UI_ATAN2:
		return FUNC33( FUNC73( FUNC72(1), FUNC72(2) ) );

	case UI_SQRT:
		return FUNC33( FUNC78( FUNC72(1) ) );

	case UI_FLOOR:
		return FUNC33( FUNC76( FUNC72(1) ) );

	case UI_CEIL:
		return FUNC33( FUNC74( FUNC72(1) ) );

	case UI_PC_ADD_GLOBAL_DEFINE:
		return botlib_export->PC_AddGlobalDefine( FUNC71(1) );
	case UI_PC_LOAD_SOURCE:
		return botlib_export->PC_LoadSourceHandle( FUNC71(1) );
	case UI_PC_FREE_SOURCE:
		return botlib_export->PC_FreeSourceHandle( args[1] );
	case UI_PC_READ_TOKEN:
		return botlib_export->PC_ReadTokenHandle( args[1], FUNC71(2) );
	case UI_PC_SOURCE_FILE_AND_LINE:
		return botlib_export->PC_SourceFileAndLine( args[1], FUNC71(2), FUNC71(3) );

	case UI_S_STOPBACKGROUNDTRACK:
		FUNC69();
		return 0;
	case UI_S_STARTBACKGROUNDTRACK:
		FUNC67( FUNC71(1), FUNC71(2));
		return 0;

	case UI_REAL_TIME:
		return FUNC17( FUNC71(1) );

	case UI_CIN_PLAYCINEMATIC:
	  FUNC12("UI_CIN_PlayCinematic\n");
	  return FUNC1(FUNC71(1), args[2], args[3], args[4], args[5], args[6]);

	case UI_CIN_STOPCINEMATIC:
	  return FUNC4(args[1]);

	case UI_CIN_RUNCINEMATIC:
	  return FUNC2(args[1]);

	case UI_CIN_DRAWCINEMATIC:
	  FUNC0(args[1]);
	  return 0;

	case UI_CIN_SETEXTENTS:
	  FUNC3(args[1], args[2], args[3], args[4], args[5]);
	  return 0;

	case UI_R_REMAP_SHADER:
		re.RemapShader( FUNC71(1), FUNC71(2), FUNC71(3) );
		return 0;

	case UI_VERIFY_CDKEY:
		return FUNC7(FUNC71(1), FUNC71(2));


		
	default:
		FUNC13( ERR_DROP, "Bad UI system trap: %i", args[0] );

	}

	return 0;
}