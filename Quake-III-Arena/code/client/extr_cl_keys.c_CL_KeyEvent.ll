; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_keys.c_CL_KeyEvent.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_keys.c_CL_KeyEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32 }

@keys = common dso_local global %struct.TYPE_4__* null, align 8
@anykeydown = common dso_local global i64 0, align 8
@K_ENTER = common dso_local global i32 0, align 4
@K_ALT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"r_fullscreen\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Switching to fullscreen rendering\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Switching to windowed rendering\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"vid_restart\0A\00", align 1
@K_MOUSE1 = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@cls = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@CA_CINEMATIC = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"com_cameraMode\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"nextdemo\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@K_ESCAPE = common dso_local global i32 0, align 4
@KEYCATCH_MESSAGE = common dso_local global i32 0, align 4
@KEYCATCH_CGAME = common dso_local global i32 0, align 4
@cgvm = common dso_local global i64 0, align 8
@CG_EVENT_HANDLING = common dso_local global i32 0, align 4
@CGAME_EVENT_NONE = common dso_local global i32 0, align 4
@KEYCATCH_UI = common dso_local global i32 0, align 4
@CA_ACTIVE = common dso_local global i64 0, align 8
@uivm = common dso_local global i64 0, align 8
@UI_SET_ACTIVE_MENU = common dso_local global i32 0, align 4
@UIMENU_INGAME = common dso_local global i32 0, align 4
@UIMENU_MAIN = common dso_local global i32 0, align 4
@UI_KEY_EVENT = common dso_local global i32 0, align 4
@CG_KEY_EVENT = common dso_local global i32 0, align 4
@KEYCATCH_CONSOLE = common dso_local global i32 0, align 4
@CA_DISCONNECTED = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [42 x i8] c"%s is unbound, use controls menu to set.\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%s %i %i\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_KeyEvent(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keys, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i64 %12, i64* %17, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keys, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keys, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load i64, i64* @anykeydown, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* @anykeydown, align 8
  br label %38

38:                                               ; preds = %35, %20
  br label %51

39:                                               ; preds = %3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keys, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load i64, i64* @anykeydown, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* @anykeydown, align 8
  %47 = load i64, i64* @anykeydown, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i64 0, i64* @anykeydown, align 8
  br label %50

50:                                               ; preds = %49, %39
  br label %51

51:                                               ; preds = %50, %38
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @K_ENTER, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = load i64, i64* %5, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %55
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keys, align 8
  %60 = load i64, i64* @K_ALT, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %58
  %66 = call i32 (...) @Key_ClearStates()
  %67 = call i64 @Cvar_VariableValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %71 = call i32 @Cvar_Set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %75

72:                                               ; preds = %65
  %73 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %74 = call i32 @Cvar_Set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* @EXEC_APPEND, align 4
  %77 = call i32 @Cbuf_ExecuteText(i32 %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %394

78:                                               ; preds = %58
  br label %79

79:                                               ; preds = %78, %55
  br label %80

80:                                               ; preds = %79, %51
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 96
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 126
  br i1 %85, label %86, label %92

86:                                               ; preds = %83, %80
  %87 = load i64, i64* %5, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  br label %394

90:                                               ; preds = %86
  %91 = call i32 (...) @Con_ToggleConsole_f()
  br label %394

92:                                               ; preds = %83
  %93 = load i64, i64* %5, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %92
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %96, 128
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @K_MOUSE1, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %98, %95
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 0), align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0), align 8
  %107 = load i64, i64* @CA_CINEMATIC, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %105, %102
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %109
  %113 = call i64 @Cvar_VariableValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = call i32 @Cvar_Set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  %117 = load i32, i32* @K_ESCAPE, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %118, %109, %105, %98, %92
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @K_ESCAPE, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %179

123:                                              ; preds = %119
  %124 = load i64, i64* %5, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %179

126:                                              ; preds = %123
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %128 = load i32, i32* @KEYCATCH_MESSAGE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @Message_Key(i32 %132)
  br label %394

134:                                              ; preds = %126
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %136 = load i32, i32* @KEYCATCH_CGAME, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load i32, i32* @KEYCATCH_CGAME, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %143 = and i32 %142, %141
  store i32 %143, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %144 = load i64, i64* @cgvm, align 8
  %145 = load i32, i32* @CG_EVENT_HANDLING, align 4
  %146 = load i32, i32* @CGAME_EVENT_NONE, align 4
  %147 = call i32 (i64, i32, i32, ...) @VM_Call(i64 %144, i32 %145, i32 %146)
  br label %394

148:                                              ; preds = %134
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %150 = load i32, i32* @KEYCATCH_UI, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %173, label %153

153:                                              ; preds = %148
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0), align 8
  %155 = load i64, i64* @CA_ACTIVE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 0), align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %157
  %161 = load i64, i64* @uivm, align 8
  %162 = load i32, i32* @UI_SET_ACTIVE_MENU, align 4
  %163 = load i32, i32* @UIMENU_INGAME, align 4
  %164 = call i32 (i64, i32, i32, ...) @VM_Call(i64 %161, i32 %162, i32 %163)
  br label %172

165:                                              ; preds = %157, %153
  %166 = call i32 (...) @CL_Disconnect_f()
  %167 = call i32 (...) @S_StopAllSounds()
  %168 = load i64, i64* @uivm, align 8
  %169 = load i32, i32* @UI_SET_ACTIVE_MENU, align 4
  %170 = load i32, i32* @UIMENU_MAIN, align 4
  %171 = call i32 (i64, i32, i32, ...) @VM_Call(i64 %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %165, %160
  br label %394

173:                                              ; preds = %148
  %174 = load i64, i64* @uivm, align 8
  %175 = load i32, i32* @UI_KEY_EVENT, align 4
  %176 = load i32, i32* %4, align 4
  %177 = load i64, i64* %5, align 8
  %178 = call i32 (i64, i32, i32, ...) @VM_Call(i64 %174, i32 %175, i32 %176, i64 %177)
  br label %394

179:                                              ; preds = %123, %119
  %180 = load i64, i64* %5, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %221, label %182

182:                                              ; preds = %179
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keys, align 8
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  store i8* %188, i8** %7, align 8
  %189 = load i32, i32* %4, align 4
  %190 = load i8*, i8** %7, align 8
  %191 = call i32 @CL_AddKeyUpCommands(i32 %189, i8* %190)
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %193 = load i32, i32* @KEYCATCH_UI, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %182
  %197 = load i64, i64* @uivm, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %196
  %200 = load i64, i64* @uivm, align 8
  %201 = load i32, i32* @UI_KEY_EVENT, align 4
  %202 = load i32, i32* %4, align 4
  %203 = load i64, i64* %5, align 8
  %204 = call i32 (i64, i32, i32, ...) @VM_Call(i64 %200, i32 %201, i32 %202, i64 %203)
  br label %220

205:                                              ; preds = %196, %182
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %207 = load i32, i32* @KEYCATCH_CGAME, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %205
  %211 = load i64, i64* @cgvm, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %210
  %214 = load i64, i64* @cgvm, align 8
  %215 = load i32, i32* @CG_KEY_EVENT, align 4
  %216 = load i32, i32* %4, align 4
  %217 = load i64, i64* %5, align 8
  %218 = call i32 (i64, i32, i32, ...) @VM_Call(i64 %214, i32 %215, i32 %216, i64 %217)
  br label %219

219:                                              ; preds = %213, %210, %205
  br label %220

220:                                              ; preds = %219, %199
  br label %394

221:                                              ; preds = %179
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %223 = load i32, i32* @KEYCATCH_CONSOLE, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load i32, i32* %4, align 4
  %228 = call i32 @Console_Key(i32 %227)
  br label %394

229:                                              ; preds = %221
  %230 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %231 = load i32, i32* @KEYCATCH_UI, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %244

234:                                              ; preds = %229
  %235 = load i64, i64* @uivm, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %234
  %238 = load i64, i64* @uivm, align 8
  %239 = load i32, i32* @UI_KEY_EVENT, align 4
  %240 = load i32, i32* %4, align 4
  %241 = load i64, i64* %5, align 8
  %242 = call i32 (i64, i32, i32, ...) @VM_Call(i64 %238, i32 %239, i32 %240, i64 %241)
  br label %243

243:                                              ; preds = %237, %234
  br label %393

244:                                              ; preds = %229
  %245 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %246 = load i32, i32* @KEYCATCH_CGAME, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %259

249:                                              ; preds = %244
  %250 = load i64, i64* @cgvm, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %249
  %253 = load i64, i64* @cgvm, align 8
  %254 = load i32, i32* @CG_KEY_EVENT, align 4
  %255 = load i32, i32* %4, align 4
  %256 = load i64, i64* %5, align 8
  %257 = call i32 (i64, i32, i32, ...) @VM_Call(i64 %253, i32 %254, i32 %255, i64 %256)
  br label %258

258:                                              ; preds = %252, %249
  br label %392

259:                                              ; preds = %244
  %260 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %261 = load i32, i32* @KEYCATCH_MESSAGE, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %259
  %265 = load i32, i32* %4, align 4
  %266 = call i32 @Message_Key(i32 %265)
  br label %391

267:                                              ; preds = %259
  %268 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0), align 8
  %269 = load i64, i64* @CA_DISCONNECTED, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %267
  %272 = load i32, i32* %4, align 4
  %273 = call i32 @Console_Key(i32 %272)
  br label %390

274:                                              ; preds = %267
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keys, align 8
  %276 = load i32, i32* %4, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 1
  %280 = load i8*, i8** %279, align 8
  store i8* %280, i8** %7, align 8
  %281 = load i8*, i8** %7, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %291, label %283

283:                                              ; preds = %274
  %284 = load i32, i32* %4, align 4
  %285 = icmp sge i32 %284, 200
  br i1 %285, label %286, label %290

286:                                              ; preds = %283
  %287 = load i32, i32* %4, align 4
  %288 = call i32 @Key_KeynumToString(i32 %287)
  %289 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %288)
  br label %290

290:                                              ; preds = %286, %283
  br label %389

291:                                              ; preds = %274
  %292 = load i8*, i8** %7, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 0
  %294 = load i8, i8* %293, align 1
  %295 = sext i8 %294 to i32
  %296 = icmp eq i32 %295, 43
  br i1 %296, label %297, label %384

297:                                              ; preds = %291
  %298 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  store i8* %298, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %299

299:                                              ; preds = %380, %297
  %300 = load i8*, i8** %7, align 8
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8, i8* %300, i64 %302
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  %306 = icmp eq i32 %305, 59
  br i1 %306, label %314, label %307

307:                                              ; preds = %299
  %308 = load i8*, i8** %7, align 8
  %309 = load i32, i32* %9, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %308, i64 %310
  %312 = load i8, i8* %311, align 1
  %313 = icmp ne i8 %312, 0
  br i1 %313, label %364, label %314

314:                                              ; preds = %307, %299
  %315 = load i8*, i8** %11, align 8
  store i8 0, i8* %315, align 1
  %316 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %317 = load i8, i8* %316, align 16
  %318 = sext i8 %317 to i32
  %319 = icmp eq i32 %318, 43
  br i1 %319, label %320, label %328

320:                                              ; preds = %314
  %321 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %322 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %323 = load i32, i32* %4, align 4
  %324 = load i32, i32* %6, align 4
  %325 = call i32 @Com_sprintf(i8* %321, i32 1024, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %322, i32 %323, i32 %324)
  %326 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %327 = call i32 @Cbuf_AddText(i8* %326)
  br label %332

328:                                              ; preds = %314
  %329 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %330 = call i32 @Cbuf_AddText(i8* %329)
  %331 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %332

332:                                              ; preds = %328, %320
  %333 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  store i8* %333, i8** %11, align 8
  br label %334

334:                                              ; preds = %360, %332
  %335 = load i8*, i8** %7, align 8
  %336 = load i32, i32* %9, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8, i8* %335, i64 %337
  %339 = load i8, i8* %338, align 1
  %340 = sext i8 %339 to i32
  %341 = icmp sle i32 %340, 32
  br i1 %341, label %350, label %342

342:                                              ; preds = %334
  %343 = load i8*, i8** %7, align 8
  %344 = load i32, i32* %9, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8, i8* %343, i64 %345
  %347 = load i8, i8* %346, align 1
  %348 = sext i8 %347 to i32
  %349 = icmp eq i32 %348, 59
  br i1 %349, label %350, label %358

350:                                              ; preds = %342, %334
  %351 = load i8*, i8** %7, align 8
  %352 = load i32, i32* %9, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8, i8* %351, i64 %353
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp ne i32 %356, 0
  br label %358

358:                                              ; preds = %350, %342
  %359 = phi i1 [ false, %342 ], [ %357, %350 ]
  br i1 %359, label %360, label %363

360:                                              ; preds = %358
  %361 = load i32, i32* %9, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %9, align 4
  br label %334

363:                                              ; preds = %358
  br label %364

364:                                              ; preds = %363, %307
  %365 = load i8*, i8** %7, align 8
  %366 = load i32, i32* %9, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %365, i64 %367
  %369 = load i8, i8* %368, align 1
  %370 = load i8*, i8** %11, align 8
  %371 = getelementptr inbounds i8, i8* %370, i32 1
  store i8* %371, i8** %11, align 8
  store i8 %369, i8* %370, align 1
  %372 = load i8*, i8** %7, align 8
  %373 = load i32, i32* %9, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8, i8* %372, i64 %374
  %376 = load i8, i8* %375, align 1
  %377 = icmp ne i8 %376, 0
  br i1 %377, label %379, label %378

378:                                              ; preds = %364
  br label %383

379:                                              ; preds = %364
  br label %380

380:                                              ; preds = %379
  %381 = load i32, i32* %9, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %9, align 4
  br label %299

383:                                              ; preds = %378
  br label %388

384:                                              ; preds = %291
  %385 = load i8*, i8** %7, align 8
  %386 = call i32 @Cbuf_AddText(i8* %385)
  %387 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %388

388:                                              ; preds = %384, %383
  br label %389

389:                                              ; preds = %388, %290
  br label %390

390:                                              ; preds = %389, %271
  br label %391

391:                                              ; preds = %390, %264
  br label %392

392:                                              ; preds = %391, %258
  br label %393

393:                                              ; preds = %392, %243
  br label %394

394:                                              ; preds = %75, %89, %90, %131, %139, %172, %173, %220, %393, %226
  ret void
}

declare dso_local i32 @Key_ClearStates(...) #1

declare dso_local i64 @Cvar_VariableValue(i8*) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i32 @Cbuf_ExecuteText(i32, i8*) #1

declare dso_local i32 @Con_ToggleConsole_f(...) #1

declare dso_local i32 @Message_Key(i32) #1

declare dso_local i32 @VM_Call(i64, i32, i32, ...) #1

declare dso_local i32 @CL_Disconnect_f(...) #1

declare dso_local i32 @S_StopAllSounds(...) #1

declare dso_local i32 @CL_AddKeyUpCommands(i32, i8*) #1

declare dso_local i32 @Console_Key(i32) #1

declare dso_local i32 @Key_KeynumToString(i32) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @Cbuf_AddText(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
