; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_keys.c_Console_Key.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_keys.c_Console_Key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i8*, i32, i32 }

@keys = common dso_local global %struct.TYPE_8__* null, align 8
@K_CTRL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"clear\0A\00", align 1
@K_ENTER = common dso_local global i32 0, align 4
@K_KP_ENTER = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@CA_ACTIVE = common dso_local global i64 0, align 8
@g_consoleField = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"\\%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"]%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"cmd say \00", align 1
@historyEditLines = common dso_local global %struct.TYPE_9__* null, align 8
@nextHistoryLine = common dso_local global i64 0, align 8
@COMMAND_HISTORY = common dso_local global i64 0, align 8
@historyLine = common dso_local global i64 0, align 8
@g_console_field_width = common dso_local global i32 0, align 4
@CA_DISCONNECTED = common dso_local global i64 0, align 8
@K_TAB = common dso_local global i32 0, align 4
@K_MWHEELUP = common dso_local global i32 0, align 4
@K_SHIFT = common dso_local global i64 0, align 8
@K_UPARROW = common dso_local global i32 0, align 4
@K_KP_UPARROW = common dso_local global i32 0, align 4
@K_MWHEELDOWN = common dso_local global i32 0, align 4
@K_DOWNARROW = common dso_local global i32 0, align 4
@K_KP_DOWNARROW = common dso_local global i32 0, align 4
@K_PGUP = common dso_local global i32 0, align 4
@K_PGDN = common dso_local global i32 0, align 4
@K_HOME = common dso_local global i32 0, align 4
@K_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Console_Key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 108
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @keys, align 8
  %9 = load i64, i64* @K_CTRL, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %276

16:                                               ; preds = %7, %1
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @K_ENTER, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @K_KP_ENTER, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %102

24:                                               ; preds = %20, %16
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 0), align 8
  %26 = load i64, i64* @CA_ACTIVE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_consoleField, i32 0, i32 0), align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 92
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_consoleField, i32 0, i32 0), align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 47
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load i32, i32* @MAX_STRING_CHARS, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %3, align 8
  %44 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %4, align 8
  %45 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_consoleField, i32 0, i32 0), align 8
  %46 = trunc i64 %42 to i32
  %47 = call i32 @Q_strncpyz(i8* %44, i8* %45, i32 %46)
  %48 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_consoleField, i32 0, i32 0), align 8
  %49 = call i32 @Com_sprintf(i8* %48, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_consoleField, i32 0, i32 2), align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_consoleField, i32 0, i32 2), align 4
  %52 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %52)
  br label %53

53:                                               ; preds = %40, %34, %28, %24
  %54 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_consoleField, i32 0, i32 0), align 8
  %55 = call i32 @Com_Printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_consoleField, i32 0, i32 0), align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 92
  br i1 %60, label %67, label %61

61:                                               ; preds = %53
  %62 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_consoleField, i32 0, i32 0), align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 47
  br i1 %66, label %67, label %72

67:                                               ; preds = %61, %53
  %68 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_consoleField, i32 0, i32 0), align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = call i32 @Cbuf_AddText(i8* %69)
  %71 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %84

72:                                               ; preds = %61
  %73 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_consoleField, i32 0, i32 0), align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %276

78:                                               ; preds = %72
  %79 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_consoleField, i32 0, i32 0), align 8
  %81 = call i32 @Cbuf_AddText(i8* %80)
  %82 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %67
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** @historyEditLines, align 8
  %86 = load i64, i64* @nextHistoryLine, align 8
  %87 = load i64, i64* @COMMAND_HISTORY, align 8
  %88 = urem i64 %86, %87
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 %88
  %90 = bitcast %struct.TYPE_9__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 bitcast (%struct.TYPE_9__* @g_consoleField to i8*), i64 16, i1 false)
  %91 = load i64, i64* @nextHistoryLine, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* @nextHistoryLine, align 8
  %93 = load i64, i64* @nextHistoryLine, align 8
  store i64 %93, i64* @historyLine, align 8
  %94 = call i32 @Field_Clear(%struct.TYPE_9__* @g_consoleField)
  %95 = load i32, i32* @g_console_field_width, align 4
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_consoleField, i32 0, i32 1), align 8
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 0), align 8
  %97 = load i64, i64* @CA_DISCONNECTED, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %84
  %100 = call i32 (...) @SCR_UpdateScreen()
  br label %101

101:                                              ; preds = %99, %84
  br label %276

102:                                              ; preds = %20
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* @K_TAB, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = call i32 @Field_CompleteCommand(%struct.TYPE_9__* @g_consoleField)
  br label %276

108:                                              ; preds = %102
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* @K_MWHEELUP, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** @keys, align 8
  %114 = load i64, i64* @K_SHIFT, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %139, label %119

119:                                              ; preds = %112, %108
  %120 = load i32, i32* %2, align 4
  %121 = load i32, i32* @K_UPARROW, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %139, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %2, align 4
  %125 = load i32, i32* @K_KP_UPARROW, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %139, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %2, align 4
  %129 = call signext i8 @tolower(i32 %128)
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 112
  br i1 %131, label %132, label %158

132:                                              ; preds = %127
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** @keys, align 8
  %134 = load i64, i64* @K_CTRL, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %132, %123, %119, %112
  %140 = load i64, i64* @nextHistoryLine, align 8
  %141 = load i64, i64* @historyLine, align 8
  %142 = sub i64 %140, %141
  %143 = load i64, i64* @COMMAND_HISTORY, align 8
  %144 = icmp ult i64 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = load i64, i64* @historyLine, align 8
  %147 = icmp ugt i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i64, i64* @historyLine, align 8
  %150 = add i64 %149, -1
  store i64 %150, i64* @historyLine, align 8
  br label %151

151:                                              ; preds = %148, %145, %139
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** @historyEditLines, align 8
  %153 = load i64, i64* @historyLine, align 8
  %154 = load i64, i64* @COMMAND_HISTORY, align 8
  %155 = urem i64 %153, %154
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i64 %155
  %157 = bitcast %struct.TYPE_9__* %156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_9__* @g_consoleField to i8*), i8* align 8 %157, i64 16, i1 false)
  br label %276

158:                                              ; preds = %132, %127
  %159 = load i32, i32* %2, align 4
  %160 = load i32, i32* @K_MWHEELDOWN, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** @keys, align 8
  %164 = load i64, i64* @K_SHIFT, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %189, label %169

169:                                              ; preds = %162, %158
  %170 = load i32, i32* %2, align 4
  %171 = load i32, i32* @K_DOWNARROW, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %189, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* %2, align 4
  %175 = load i32, i32* @K_KP_DOWNARROW, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %189, label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %2, align 4
  %179 = call signext i8 @tolower(i32 %178)
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 110
  br i1 %181, label %182, label %203

182:                                              ; preds = %177
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** @keys, align 8
  %184 = load i64, i64* @K_CTRL, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %182, %173, %169, %162
  %190 = load i64, i64* @historyLine, align 8
  %191 = load i64, i64* @nextHistoryLine, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  br label %276

194:                                              ; preds = %189
  %195 = load i64, i64* @historyLine, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* @historyLine, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** @historyEditLines, align 8
  %198 = load i64, i64* @historyLine, align 8
  %199 = load i64, i64* @COMMAND_HISTORY, align 8
  %200 = urem i64 %198, %199
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i64 %200
  %202 = bitcast %struct.TYPE_9__* %201 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_9__* @g_consoleField to i8*), i8* align 8 %202, i64 16, i1 false)
  br label %276

203:                                              ; preds = %182, %177
  %204 = load i32, i32* %2, align 4
  %205 = load i32, i32* @K_PGUP, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = call i32 (...) @Con_PageUp()
  br label %276

209:                                              ; preds = %203
  %210 = load i32, i32* %2, align 4
  %211 = load i32, i32* @K_PGDN, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %209
  %214 = call i32 (...) @Con_PageDown()
  br label %276

215:                                              ; preds = %209
  %216 = load i32, i32* %2, align 4
  %217 = load i32, i32* @K_MWHEELUP, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %231

219:                                              ; preds = %215
  %220 = call i32 (...) @Con_PageUp()
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** @keys, align 8
  %222 = load i64, i64* @K_CTRL, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %219
  %228 = call i32 (...) @Con_PageUp()
  %229 = call i32 (...) @Con_PageUp()
  br label %230

230:                                              ; preds = %227, %219
  br label %276

231:                                              ; preds = %215
  %232 = load i32, i32* %2, align 4
  %233 = load i32, i32* @K_MWHEELDOWN, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %247

235:                                              ; preds = %231
  %236 = call i32 (...) @Con_PageDown()
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** @keys, align 8
  %238 = load i64, i64* @K_CTRL, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %235
  %244 = call i32 (...) @Con_PageDown()
  %245 = call i32 (...) @Con_PageDown()
  br label %246

246:                                              ; preds = %243, %235
  br label %276

247:                                              ; preds = %231
  %248 = load i32, i32* %2, align 4
  %249 = load i32, i32* @K_HOME, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %260

251:                                              ; preds = %247
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** @keys, align 8
  %253 = load i64, i64* @K_CTRL, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %251
  %259 = call i32 (...) @Con_Top()
  br label %276

260:                                              ; preds = %251, %247
  %261 = load i32, i32* %2, align 4
  %262 = load i32, i32* @K_END, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %273

264:                                              ; preds = %260
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** @keys, align 8
  %266 = load i64, i64* @K_CTRL, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %264
  %272 = call i32 (...) @Con_Bottom()
  br label %276

273:                                              ; preds = %264, %260
  %274 = load i32, i32* %2, align 4
  %275 = call i32 @Field_KeyDownEvent(%struct.TYPE_9__* @g_consoleField, i32 %274)
  br label %276

276:                                              ; preds = %273, %271, %258, %246, %230, %213, %207, %194, %193, %151, %106, %101, %77, %14
  ret void
}

declare dso_local i32 @Cbuf_AddText(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Com_Printf(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @Field_Clear(%struct.TYPE_9__*) #1

declare dso_local i32 @SCR_UpdateScreen(...) #1

declare dso_local i32 @Field_CompleteCommand(%struct.TYPE_9__*) #1

declare dso_local signext i8 @tolower(i32) #1

declare dso_local i32 @Con_PageUp(...) #1

declare dso_local i32 @Con_PageDown(...) #1

declare dso_local i32 @Con_Top(...) #1

declare dso_local i32 @Con_Bottom(...) #1

declare dso_local i32 @Field_KeyDownEvent(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
