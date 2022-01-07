; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_Responder.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_Responder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_9__*, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i32, i32, i32 (i64)* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }

@M_Responder.joywait = internal global i32 0, align 4
@M_Responder.mousewait = internal global i32 0, align 4
@M_Responder.mousey = internal global i32 0, align 4
@M_Responder.lasty = internal global i32 0, align 4
@M_Responder.mousex = internal global i32 0, align 4
@M_Responder.lastx = internal global i32 0, align 4
@ev_joystick = common dso_local global i64 0, align 8
@ev_mouse = common dso_local global i64 0, align 8
@ev_keydown = common dso_local global i64 0, align 8
@saveStringEnter = common dso_local global i64 0, align 8
@saveCharIndex = common dso_local global i64 0, align 8
@savegamestrings = common dso_local global i32** null, align 8
@saveSlot = common dso_local global i64 0, align 8
@saveOldString = common dso_local global i32 0, align 4
@HU_FONTSTART = common dso_local global i32 0, align 4
@HU_FONTSIZE = common dso_local global i32 0, align 4
@SAVESTRINGSIZE = common dso_local global i32 0, align 4
@messageToPrint = common dso_local global i64 0, align 8
@messageNeedsInput = common dso_local global i32 0, align 4
@messageLastMenuActive = common dso_local global i32 0, align 4
@menuactive = common dso_local global i32 0, align 4
@sfx_swtchx = common dso_local global i32 0, align 4
@devparm = common dso_local global i64 0, align 8
@automapactive = common dso_local global i32 0, align 4
@chat_on = common dso_local global i32 0, align 4
@sfx_stnmov = common dso_local global i32 0, align 4
@gamemode = common dso_local global i32 0, align 4
@retail = common dso_local global i32 0, align 4
@ReadDef2 = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@currentMenu = common dso_local global %struct.TYPE_12__* null, align 8
@ReadDef1 = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@itemOn = common dso_local global i64 0, align 8
@sfx_swtchn = common dso_local global i32 0, align 4
@SoundDef = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@sfx_vol = common dso_local global i64 0, align 8
@usegamma = common dso_local global i32 0, align 4
@gammamsg = common dso_local global i32* null, align 8
@players = common dso_local global %struct.TYPE_11__* null, align 8
@consoleplayer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"PLAYPAL\00", align 1
@PU_CACHE = common dso_local global i32 0, align 4
@sfx_pstop = common dso_local global i32 0, align 4
@sfx_pistol = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @M_Responder(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 -1, i32* %4, align 4
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ev_joystick, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %68

11:                                               ; preds = %1
  %12 = load i32, i32* @M_Responder.joywait, align 4
  %13 = call i32 (...) @I_GetTime()
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %68

15:                                               ; preds = %11
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  store i32 128, i32* %4, align 4
  %21 = call i32 (...) @I_GetTime()
  %22 = add nsw i32 %21, 5
  store i32 %22, i32* @M_Responder.joywait, align 4
  br label %32

23:                                               ; preds = %15
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  store i32 146, i32* %4, align 4
  %29 = call i32 (...) @I_GetTime()
  %30 = add nsw i32 %29, 5
  store i32 %30, i32* @M_Responder.joywait, align 4
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31, %20
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  store i32 131, i32* %4, align 4
  %38 = call i32 (...) @I_GetTime()
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* @M_Responder.joywait, align 4
  br label %49

40:                                               ; preds = %32
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  store i32 129, i32* %4, align 4
  %46 = call i32 (...) @I_GetTime()
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* @M_Responder.joywait, align 4
  br label %48

48:                                               ; preds = %45, %40
  br label %49

49:                                               ; preds = %48, %37
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  store i32 145, i32* %4, align 4
  %56 = call i32 (...) @I_GetTime()
  %57 = add nsw i32 %56, 5
  store i32 %57, i32* @M_Responder.joywait, align 4
  br label %58

58:                                               ; preds = %55, %49
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 2
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  store i32 147, i32* %4, align 4
  %65 = call i32 (...) @I_GetTime()
  %66 = add nsw i32 %65, 5
  store i32 %66, i32* @M_Responder.joywait, align 4
  br label %67

67:                                               ; preds = %64, %58
  br label %161

68:                                               ; preds = %11, %1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ev_mouse, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %149

74:                                               ; preds = %68
  %75 = load i32, i32* @M_Responder.mousewait, align 4
  %76 = call i32 (...) @I_GetTime()
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %149

78:                                               ; preds = %74
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @M_Responder.mousey, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* @M_Responder.mousey, align 4
  %84 = load i32, i32* @M_Responder.mousey, align 4
  %85 = load i32, i32* @M_Responder.lasty, align 4
  %86 = sub nsw i32 %85, 30
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %78
  store i32 146, i32* %4, align 4
  %89 = call i32 (...) @I_GetTime()
  %90 = add nsw i32 %89, 5
  store i32 %90, i32* @M_Responder.mousewait, align 4
  %91 = load i32, i32* @M_Responder.lasty, align 4
  %92 = sub nsw i32 %91, 30
  store i32 %92, i32* @M_Responder.lasty, align 4
  store i32 %92, i32* @M_Responder.mousey, align 4
  br label %104

93:                                               ; preds = %78
  %94 = load i32, i32* @M_Responder.mousey, align 4
  %95 = load i32, i32* @M_Responder.lasty, align 4
  %96 = add nsw i32 %95, 30
  %97 = icmp sgt i32 %94, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  store i32 128, i32* %4, align 4
  %99 = call i32 (...) @I_GetTime()
  %100 = add nsw i32 %99, 5
  store i32 %100, i32* @M_Responder.mousewait, align 4
  %101 = load i32, i32* @M_Responder.lasty, align 4
  %102 = add nsw i32 %101, 30
  store i32 %102, i32* @M_Responder.lasty, align 4
  store i32 %102, i32* @M_Responder.mousey, align 4
  br label %103

103:                                              ; preds = %98, %93
  br label %104

104:                                              ; preds = %103, %88
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @M_Responder.mousex, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* @M_Responder.mousex, align 4
  %110 = load i32, i32* @M_Responder.mousex, align 4
  %111 = load i32, i32* @M_Responder.lastx, align 4
  %112 = sub nsw i32 %111, 30
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %104
  store i32 131, i32* %4, align 4
  %115 = call i32 (...) @I_GetTime()
  %116 = add nsw i32 %115, 5
  store i32 %116, i32* @M_Responder.mousewait, align 4
  %117 = load i32, i32* @M_Responder.lastx, align 4
  %118 = sub nsw i32 %117, 30
  store i32 %118, i32* @M_Responder.lastx, align 4
  store i32 %118, i32* @M_Responder.mousex, align 4
  br label %130

119:                                              ; preds = %104
  %120 = load i32, i32* @M_Responder.mousex, align 4
  %121 = load i32, i32* @M_Responder.lastx, align 4
  %122 = add nsw i32 %121, 30
  %123 = icmp sgt i32 %120, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  store i32 129, i32* %4, align 4
  %125 = call i32 (...) @I_GetTime()
  %126 = add nsw i32 %125, 5
  store i32 %126, i32* @M_Responder.mousewait, align 4
  %127 = load i32, i32* @M_Responder.lastx, align 4
  %128 = add nsw i32 %127, 30
  store i32 %128, i32* @M_Responder.lastx, align 4
  store i32 %128, i32* @M_Responder.mousex, align 4
  br label %129

129:                                              ; preds = %124, %119
  br label %130

130:                                              ; preds = %129, %114
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, 1
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  store i32 145, i32* %4, align 4
  %137 = call i32 (...) @I_GetTime()
  %138 = add nsw i32 %137, 15
  store i32 %138, i32* @M_Responder.mousewait, align 4
  br label %139

139:                                              ; preds = %136, %130
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, 2
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  store i32 147, i32* %4, align 4
  %146 = call i32 (...) @I_GetTime()
  %147 = add nsw i32 %146, 15
  store i32 %147, i32* @M_Responder.mousewait, align 4
  br label %148

148:                                              ; preds = %145, %139
  br label %160

149:                                              ; preds = %74, %68
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @ev_keydown, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %155, %149
  br label %160

160:                                              ; preds = %159, %148
  br label %161

161:                                              ; preds = %160, %67
  %162 = load i32, i32* %4, align 4
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 0, i32* %2, align 4
  br label %655

165:                                              ; preds = %161
  %166 = load i64, i64* @saveStringEnter, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %260

168:                                              ; preds = %165
  %169 = load i32, i32* %4, align 4
  switch i32 %169, label %203 [
    i32 147, label %170
    i32 143, label %183
    i32 145, label %191
  ]

170:                                              ; preds = %168
  %171 = load i64, i64* @saveCharIndex, align 8
  %172 = icmp ugt i64 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %170
  %174 = load i64, i64* @saveCharIndex, align 8
  %175 = add i64 %174, -1
  store i64 %175, i64* @saveCharIndex, align 8
  %176 = load i32**, i32*** @savegamestrings, align 8
  %177 = load i64, i64* @saveSlot, align 8
  %178 = getelementptr inbounds i32*, i32** %176, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @saveCharIndex, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32 0, i32* %181, align 4
  br label %182

182:                                              ; preds = %173, %170
  br label %259

183:                                              ; preds = %168
  store i64 0, i64* @saveStringEnter, align 8
  %184 = load i32**, i32*** @savegamestrings, align 8
  %185 = load i64, i64* @saveSlot, align 8
  %186 = getelementptr inbounds i32*, i32** %184, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* @saveOldString, align 4
  %190 = call i32 @strcpy(i32* %188, i32 %189)
  br label %259

191:                                              ; preds = %168
  store i64 0, i64* @saveStringEnter, align 8
  %192 = load i32**, i32*** @savegamestrings, align 8
  %193 = load i64, i64* @saveSlot, align 8
  %194 = getelementptr inbounds i32*, i32** %192, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %191
  %200 = load i64, i64* @saveSlot, align 8
  %201 = call i32 @M_DoSave(i64 %200)
  br label %202

202:                                              ; preds = %199, %191
  br label %259

203:                                              ; preds = %168
  %204 = load i32, i32* %4, align 4
  %205 = call i32 @toupper(i32 %204) #3
  store i32 %205, i32* %4, align 4
  %206 = load i32, i32* %4, align 4
  %207 = icmp ne i32 %206, 32
  br i1 %207, label %208, label %221

208:                                              ; preds = %203
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* @HU_FONTSTART, align 4
  %211 = sub nsw i32 %209, %210
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %208
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @HU_FONTSTART, align 4
  %216 = sub nsw i32 %214, %215
  %217 = load i32, i32* @HU_FONTSIZE, align 4
  %218 = icmp sge i32 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %213, %208
  br label %259

220:                                              ; preds = %213
  br label %221

221:                                              ; preds = %220, %203
  %222 = load i32, i32* %4, align 4
  %223 = icmp sge i32 %222, 32
  br i1 %223, label %224, label %258

224:                                              ; preds = %221
  %225 = load i32, i32* %4, align 4
  %226 = icmp sle i32 %225, 127
  br i1 %226, label %227, label %258

227:                                              ; preds = %224
  %228 = load i64, i64* @saveCharIndex, align 8
  %229 = load i32, i32* @SAVESTRINGSIZE, align 4
  %230 = sub nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = icmp ult i64 %228, %231
  br i1 %232, label %233, label %258

233:                                              ; preds = %227
  %234 = load i32**, i32*** @savegamestrings, align 8
  %235 = load i64, i64* @saveSlot, align 8
  %236 = getelementptr inbounds i32*, i32** %234, i64 %235
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 @M_StringWidth(i32* %237)
  %239 = load i32, i32* @SAVESTRINGSIZE, align 4
  %240 = sub nsw i32 %239, 2
  %241 = mul nsw i32 %240, 8
  %242 = icmp slt i32 %238, %241
  br i1 %242, label %243, label %258

243:                                              ; preds = %233
  %244 = load i32, i32* %4, align 4
  %245 = load i32**, i32*** @savegamestrings, align 8
  %246 = load i64, i64* @saveSlot, align 8
  %247 = getelementptr inbounds i32*, i32** %245, i64 %246
  %248 = load i32*, i32** %247, align 8
  %249 = load i64, i64* @saveCharIndex, align 8
  %250 = add i64 %249, 1
  store i64 %250, i64* @saveCharIndex, align 8
  %251 = getelementptr inbounds i32, i32* %248, i64 %249
  store i32 %244, i32* %251, align 4
  %252 = load i32**, i32*** @savegamestrings, align 8
  %253 = load i64, i64* @saveSlot, align 8
  %254 = getelementptr inbounds i32*, i32** %252, i64 %253
  %255 = load i32*, i32** %254, align 8
  %256 = load i64, i64* @saveCharIndex, align 8
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  store i32 0, i32* %257, align 4
  br label %258

258:                                              ; preds = %243, %233, %227, %224, %221
  br label %259

259:                                              ; preds = %258, %219, %202, %183, %182
  store i32 1, i32* %2, align 4
  br label %655

260:                                              ; preds = %165
  %261 = load i64, i64* @messageToPrint, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %287

263:                                              ; preds = %260
  %264 = load i32, i32* @messageNeedsInput, align 4
  %265 = icmp eq i32 %264, 1
  br i1 %265, label %266, label %279

266:                                              ; preds = %263
  %267 = load i32, i32* %4, align 4
  %268 = icmp eq i32 %267, 32
  br i1 %268, label %279, label %269

269:                                              ; preds = %266
  %270 = load i32, i32* %4, align 4
  %271 = icmp eq i32 %270, 110
  br i1 %271, label %279, label %272

272:                                              ; preds = %269
  %273 = load i32, i32* %4, align 4
  %274 = icmp eq i32 %273, 121
  br i1 %274, label %279, label %275

275:                                              ; preds = %272
  %276 = load i32, i32* %4, align 4
  %277 = icmp eq i32 %276, 143
  br i1 %277, label %279, label %278

278:                                              ; preds = %275
  store i32 0, i32* %2, align 4
  br label %655

279:                                              ; preds = %275, %272, %269, %266, %263
  %280 = load i32, i32* @messageLastMenuActive, align 4
  store i32 %280, i32* @menuactive, align 4
  store i64 0, i64* @messageToPrint, align 8
  br i1 true, label %281, label %284

281:                                              ; preds = %279
  %282 = load i32, i32* %4, align 4
  %283 = call i32 @messageRoutine(i32 %282)
  br label %284

284:                                              ; preds = %281, %279
  store i32 0, i32* @menuactive, align 4
  %285 = load i32, i32* @sfx_swtchx, align 4
  %286 = call i32 @S_StartSound(i32* null, i32 %285)
  store i32 1, i32* %2, align 4
  br label %655

287:                                              ; preds = %260
  %288 = load i64, i64* @devparm, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %287
  %291 = load i32, i32* %4, align 4
  %292 = icmp eq i32 %291, 142
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = call i32 (...) @G_ScreenShot()
  store i32 1, i32* %2, align 4
  br label %655

295:                                              ; preds = %290, %287
  %296 = load i32, i32* @menuactive, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %391, label %298

298:                                              ; preds = %295
  %299 = load i32, i32* %4, align 4
  switch i32 %299, label %390 [
    i32 130, label %300
    i32 144, label %311
    i32 142, label %322
    i32 139, label %332
    i32 138, label %337
    i32 137, label %342
    i32 136, label %347
    i32 135, label %351
    i32 134, label %355
    i32 133, label %359
    i32 132, label %363
    i32 141, label %367
    i32 140, label %371
  ]

300:                                              ; preds = %298
  %301 = load i32, i32* @automapactive, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %300
  %304 = load i32, i32* @chat_on, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %303, %300
  store i32 0, i32* %2, align 4
  br label %655

307:                                              ; preds = %303
  %308 = call i32 @M_SizeDisplay(i32 0)
  %309 = load i32, i32* @sfx_stnmov, align 4
  %310 = call i32 @S_StartSound(i32* null, i32 %309)
  store i32 1, i32* %2, align 4
  br label %655

311:                                              ; preds = %298
  %312 = load i32, i32* @automapactive, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %317, label %314

314:                                              ; preds = %311
  %315 = load i32, i32* @chat_on, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %314, %311
  store i32 0, i32* %2, align 4
  br label %655

318:                                              ; preds = %314
  %319 = call i32 @M_SizeDisplay(i32 1)
  %320 = load i32, i32* @sfx_stnmov, align 4
  %321 = call i32 @S_StartSound(i32* null, i32 %320)
  store i32 1, i32* %2, align 4
  br label %655

322:                                              ; preds = %298
  %323 = call i32 (...) @M_StartControlPanel()
  %324 = load i32, i32* @gamemode, align 4
  %325 = load i32, i32* @retail, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %322
  store %struct.TYPE_12__* @ReadDef2, %struct.TYPE_12__** @currentMenu, align 8
  br label %329

328:                                              ; preds = %322
  store %struct.TYPE_12__* @ReadDef1, %struct.TYPE_12__** @currentMenu, align 8
  br label %329

329:                                              ; preds = %328, %327
  store i64 0, i64* @itemOn, align 8
  %330 = load i32, i32* @sfx_swtchn, align 4
  %331 = call i32 @S_StartSound(i32* null, i32 %330)
  store i32 1, i32* %2, align 4
  br label %655

332:                                              ; preds = %298
  %333 = call i32 (...) @M_StartControlPanel()
  %334 = load i32, i32* @sfx_swtchn, align 4
  %335 = call i32 @S_StartSound(i32* null, i32 %334)
  %336 = call i32 @M_SaveGame(i32 0)
  store i32 1, i32* %2, align 4
  br label %655

337:                                              ; preds = %298
  %338 = call i32 (...) @M_StartControlPanel()
  %339 = load i32, i32* @sfx_swtchn, align 4
  %340 = call i32 @S_StartSound(i32* null, i32 %339)
  %341 = call i32 @M_LoadGame(i32 0)
  store i32 1, i32* %2, align 4
  br label %655

342:                                              ; preds = %298
  %343 = call i32 (...) @M_StartControlPanel()
  store %struct.TYPE_12__* @SoundDef, %struct.TYPE_12__** @currentMenu, align 8
  %344 = load i64, i64* @sfx_vol, align 8
  store i64 %344, i64* @itemOn, align 8
  %345 = load i32, i32* @sfx_swtchn, align 4
  %346 = call i32 @S_StartSound(i32* null, i32 %345)
  store i32 1, i32* %2, align 4
  br label %655

347:                                              ; preds = %298
  %348 = call i32 @M_ChangeDetail(i32 0)
  %349 = load i32, i32* @sfx_swtchn, align 4
  %350 = call i32 @S_StartSound(i32* null, i32 %349)
  store i32 1, i32* %2, align 4
  br label %655

351:                                              ; preds = %298
  %352 = load i32, i32* @sfx_swtchn, align 4
  %353 = call i32 @S_StartSound(i32* null, i32 %352)
  %354 = call i32 (...) @M_QuickSave()
  store i32 1, i32* %2, align 4
  br label %655

355:                                              ; preds = %298
  %356 = load i32, i32* @sfx_swtchn, align 4
  %357 = call i32 @S_StartSound(i32* null, i32 %356)
  %358 = call i32 @M_EndGame(i32 0)
  store i32 1, i32* %2, align 4
  br label %655

359:                                              ; preds = %298
  %360 = call i32 @M_ChangeMessages(i32 0)
  %361 = load i32, i32* @sfx_swtchn, align 4
  %362 = call i32 @S_StartSound(i32* null, i32 %361)
  store i32 1, i32* %2, align 4
  br label %655

363:                                              ; preds = %298
  %364 = load i32, i32* @sfx_swtchn, align 4
  %365 = call i32 @S_StartSound(i32* null, i32 %364)
  %366 = call i32 (...) @M_QuickLoad()
  store i32 1, i32* %2, align 4
  br label %655

367:                                              ; preds = %298
  %368 = load i32, i32* @sfx_swtchn, align 4
  %369 = call i32 @S_StartSound(i32* null, i32 %368)
  %370 = call i32 @M_QuitDOOM(i32 0)
  store i32 1, i32* %2, align 4
  br label %655

371:                                              ; preds = %298
  %372 = load i32, i32* @usegamma, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* @usegamma, align 4
  %374 = load i32, i32* @usegamma, align 4
  %375 = icmp sgt i32 %374, 4
  br i1 %375, label %376, label %377

376:                                              ; preds = %371
  store i32 0, i32* @usegamma, align 4
  br label %377

377:                                              ; preds = %376, %371
  %378 = load i32*, i32** @gammamsg, align 8
  %379 = load i32, i32* @usegamma, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** @players, align 8
  %384 = load i64, i64* @consoleplayer, align 8
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 0
  store i32 %382, i32* %386, align 4
  %387 = load i32, i32* @PU_CACHE, align 4
  %388 = call i32 @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %387)
  %389 = call i32 @I_SetPalette(i32 %388)
  store i32 1, i32* %2, align 4
  br label %655

390:                                              ; preds = %298
  br label %391

391:                                              ; preds = %390, %295
  %392 = load i32, i32* @menuactive, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %402, label %394

394:                                              ; preds = %391
  %395 = load i32, i32* %4, align 4
  %396 = icmp eq i32 %395, 143
  br i1 %396, label %397, label %401

397:                                              ; preds = %394
  %398 = call i32 (...) @M_StartControlPanel()
  %399 = load i32, i32* @sfx_swtchn, align 4
  %400 = call i32 @S_StartSound(i32* null, i32 %399)
  store i32 1, i32* %2, align 4
  br label %655

401:                                              ; preds = %394
  store i32 0, i32* %2, align 4
  br label %655

402:                                              ; preds = %391
  %403 = load i32, i32* %4, align 4
  switch i32 %403, label %597 [
    i32 146, label %404
    i32 128, label %431
    i32 131, label %457
    i32 129, label %487
    i32 145, label %517
    i32 143, label %572
    i32 147, label %579
  ]

404:                                              ; preds = %402
  br label %405

405:                                              ; preds = %421, %404
  %406 = load i64, i64* @itemOn, align 8
  %407 = add i64 %406, 1
  %408 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %409 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = sub nsw i32 %410, 1
  %412 = sext i32 %411 to i64
  %413 = icmp ugt i64 %407, %412
  br i1 %413, label %414, label %415

414:                                              ; preds = %405
  store i64 0, i64* @itemOn, align 8
  br label %418

415:                                              ; preds = %405
  %416 = load i64, i64* @itemOn, align 8
  %417 = add i64 %416, 1
  store i64 %417, i64* @itemOn, align 8
  br label %418

418:                                              ; preds = %415, %414
  %419 = load i32, i32* @sfx_pstop, align 4
  %420 = call i32 @S_StartSound(i32* null, i32 %419)
  br label %421

421:                                              ; preds = %418
  %422 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %423 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %422, i32 0, i32 2
  %424 = load %struct.TYPE_9__*, %struct.TYPE_9__** %423, align 8
  %425 = load i64, i64* @itemOn, align 8
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %424, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = icmp eq i32 %428, -1
  br i1 %429, label %405, label %430

430:                                              ; preds = %421
  store i32 1, i32* %2, align 4
  br label %655

431:                                              ; preds = %402
  br label %432

432:                                              ; preds = %447, %431
  %433 = load i64, i64* @itemOn, align 8
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %441, label %435

435:                                              ; preds = %432
  %436 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %437 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = sub nsw i32 %438, 1
  %440 = sext i32 %439 to i64
  store i64 %440, i64* @itemOn, align 8
  br label %444

441:                                              ; preds = %432
  %442 = load i64, i64* @itemOn, align 8
  %443 = add i64 %442, -1
  store i64 %443, i64* @itemOn, align 8
  br label %444

444:                                              ; preds = %441, %435
  %445 = load i32, i32* @sfx_pstop, align 4
  %446 = call i32 @S_StartSound(i32* null, i32 %445)
  br label %447

447:                                              ; preds = %444
  %448 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %449 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %448, i32 0, i32 2
  %450 = load %struct.TYPE_9__*, %struct.TYPE_9__** %449, align 8
  %451 = load i64, i64* @itemOn, align 8
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %450, i64 %451
  %453 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = icmp eq i32 %454, -1
  br i1 %455, label %432, label %456

456:                                              ; preds = %447
  store i32 1, i32* %2, align 4
  br label %655

457:                                              ; preds = %402
  %458 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %459 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %458, i32 0, i32 2
  %460 = load %struct.TYPE_9__*, %struct.TYPE_9__** %459, align 8
  %461 = load i64, i64* @itemOn, align 8
  %462 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %460, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %462, i32 0, i32 2
  %464 = load i32 (i64)*, i32 (i64)** %463, align 8
  %465 = icmp ne i32 (i64)* %464, null
  br i1 %465, label %466, label %486

466:                                              ; preds = %457
  %467 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %468 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %467, i32 0, i32 2
  %469 = load %struct.TYPE_9__*, %struct.TYPE_9__** %468, align 8
  %470 = load i64, i64* @itemOn, align 8
  %471 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %469, i64 %470
  %472 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = icmp eq i32 %473, 2
  br i1 %474, label %475, label %486

475:                                              ; preds = %466
  %476 = load i32, i32* @sfx_stnmov, align 4
  %477 = call i32 @S_StartSound(i32* null, i32 %476)
  %478 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %479 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %478, i32 0, i32 2
  %480 = load %struct.TYPE_9__*, %struct.TYPE_9__** %479, align 8
  %481 = load i64, i64* @itemOn, align 8
  %482 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %480, i64 %481
  %483 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %482, i32 0, i32 2
  %484 = load i32 (i64)*, i32 (i64)** %483, align 8
  %485 = call i32 %484(i64 0)
  br label %486

486:                                              ; preds = %475, %466, %457
  store i32 1, i32* %2, align 4
  br label %655

487:                                              ; preds = %402
  %488 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %489 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %488, i32 0, i32 2
  %490 = load %struct.TYPE_9__*, %struct.TYPE_9__** %489, align 8
  %491 = load i64, i64* @itemOn, align 8
  %492 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %490, i64 %491
  %493 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %492, i32 0, i32 2
  %494 = load i32 (i64)*, i32 (i64)** %493, align 8
  %495 = icmp ne i32 (i64)* %494, null
  br i1 %495, label %496, label %516

496:                                              ; preds = %487
  %497 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %498 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %497, i32 0, i32 2
  %499 = load %struct.TYPE_9__*, %struct.TYPE_9__** %498, align 8
  %500 = load i64, i64* @itemOn, align 8
  %501 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %499, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 8
  %504 = icmp eq i32 %503, 2
  br i1 %504, label %505, label %516

505:                                              ; preds = %496
  %506 = load i32, i32* @sfx_stnmov, align 4
  %507 = call i32 @S_StartSound(i32* null, i32 %506)
  %508 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %509 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %508, i32 0, i32 2
  %510 = load %struct.TYPE_9__*, %struct.TYPE_9__** %509, align 8
  %511 = load i64, i64* @itemOn, align 8
  %512 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %510, i64 %511
  %513 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %512, i32 0, i32 2
  %514 = load i32 (i64)*, i32 (i64)** %513, align 8
  %515 = call i32 %514(i64 1)
  br label %516

516:                                              ; preds = %505, %496, %487
  store i32 1, i32* %2, align 4
  br label %655

517:                                              ; preds = %402
  %518 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %519 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %518, i32 0, i32 2
  %520 = load %struct.TYPE_9__*, %struct.TYPE_9__** %519, align 8
  %521 = load i64, i64* @itemOn, align 8
  %522 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %520, i64 %521
  %523 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %522, i32 0, i32 2
  %524 = load i32 (i64)*, i32 (i64)** %523, align 8
  %525 = icmp ne i32 (i64)* %524, null
  br i1 %525, label %526, label %571

526:                                              ; preds = %517
  %527 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %528 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %527, i32 0, i32 2
  %529 = load %struct.TYPE_9__*, %struct.TYPE_9__** %528, align 8
  %530 = load i64, i64* @itemOn, align 8
  %531 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %529, i64 %530
  %532 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 8
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %571

535:                                              ; preds = %526
  %536 = load i64, i64* @itemOn, align 8
  %537 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %538 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %537, i32 0, i32 1
  store i64 %536, i64* %538, align 8
  %539 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %540 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %539, i32 0, i32 2
  %541 = load %struct.TYPE_9__*, %struct.TYPE_9__** %540, align 8
  %542 = load i64, i64* @itemOn, align 8
  %543 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %541, i64 %542
  %544 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = icmp eq i32 %545, 2
  br i1 %546, label %547, label %558

547:                                              ; preds = %535
  %548 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %549 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %548, i32 0, i32 2
  %550 = load %struct.TYPE_9__*, %struct.TYPE_9__** %549, align 8
  %551 = load i64, i64* @itemOn, align 8
  %552 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %550, i64 %551
  %553 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %552, i32 0, i32 2
  %554 = load i32 (i64)*, i32 (i64)** %553, align 8
  %555 = call i32 %554(i64 1)
  %556 = load i32, i32* @sfx_stnmov, align 4
  %557 = call i32 @S_StartSound(i32* null, i32 %556)
  br label %570

558:                                              ; preds = %535
  %559 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %560 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %559, i32 0, i32 2
  %561 = load %struct.TYPE_9__*, %struct.TYPE_9__** %560, align 8
  %562 = load i64, i64* @itemOn, align 8
  %563 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %561, i64 %562
  %564 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %563, i32 0, i32 2
  %565 = load i32 (i64)*, i32 (i64)** %564, align 8
  %566 = load i64, i64* @itemOn, align 8
  %567 = call i32 %565(i64 %566)
  %568 = load i32, i32* @sfx_pistol, align 4
  %569 = call i32 @S_StartSound(i32* null, i32 %568)
  br label %570

570:                                              ; preds = %558, %547
  br label %571

571:                                              ; preds = %570, %526, %517
  store i32 1, i32* %2, align 4
  br label %655

572:                                              ; preds = %402
  %573 = load i64, i64* @itemOn, align 8
  %574 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %575 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %574, i32 0, i32 1
  store i64 %573, i64* %575, align 8
  %576 = call i32 (...) @M_ClearMenus()
  %577 = load i32, i32* @sfx_swtchx, align 4
  %578 = call i32 @S_StartSound(i32* null, i32 %577)
  store i32 1, i32* %2, align 4
  br label %655

579:                                              ; preds = %402
  %580 = load i64, i64* @itemOn, align 8
  %581 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %582 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %581, i32 0, i32 1
  store i64 %580, i64* %582, align 8
  %583 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %584 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %583, i32 0, i32 3
  %585 = load %struct.TYPE_12__*, %struct.TYPE_12__** %584, align 8
  %586 = icmp ne %struct.TYPE_12__* %585, null
  br i1 %586, label %587, label %596

587:                                              ; preds = %579
  %588 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %589 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %588, i32 0, i32 3
  %590 = load %struct.TYPE_12__*, %struct.TYPE_12__** %589, align 8
  store %struct.TYPE_12__* %590, %struct.TYPE_12__** @currentMenu, align 8
  %591 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %592 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %591, i32 0, i32 1
  %593 = load i64, i64* %592, align 8
  store i64 %593, i64* @itemOn, align 8
  %594 = load i32, i32* @sfx_swtchn, align 4
  %595 = call i32 @S_StartSound(i32* null, i32 %594)
  br label %596

596:                                              ; preds = %587, %579
  store i32 1, i32* %2, align 4
  br label %655

597:                                              ; preds = %402
  %598 = load i64, i64* @itemOn, align 8
  %599 = add i64 %598, 1
  %600 = trunc i64 %599 to i32
  store i32 %600, i32* %5, align 4
  br label %601

601:                                              ; preds = %624, %597
  %602 = load i32, i32* %5, align 4
  %603 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %604 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 8
  %606 = icmp slt i32 %602, %605
  br i1 %606, label %607, label %627

607:                                              ; preds = %601
  %608 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %609 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %608, i32 0, i32 2
  %610 = load %struct.TYPE_9__*, %struct.TYPE_9__** %609, align 8
  %611 = load i32, i32* %5, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %610, i64 %612
  %614 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %613, i32 0, i32 1
  %615 = load i32, i32* %614, align 4
  %616 = load i32, i32* %4, align 4
  %617 = icmp eq i32 %615, %616
  br i1 %617, label %618, label %623

618:                                              ; preds = %607
  %619 = load i32, i32* %5, align 4
  %620 = sext i32 %619 to i64
  store i64 %620, i64* @itemOn, align 8
  %621 = load i32, i32* @sfx_pstop, align 4
  %622 = call i32 @S_StartSound(i32* null, i32 %621)
  store i32 1, i32* %2, align 4
  br label %655

623:                                              ; preds = %607
  br label %624

624:                                              ; preds = %623
  %625 = load i32, i32* %5, align 4
  %626 = add nsw i32 %625, 1
  store i32 %626, i32* %5, align 4
  br label %601

627:                                              ; preds = %601
  store i32 0, i32* %5, align 4
  br label %628

628:                                              ; preds = %650, %627
  %629 = load i32, i32* %5, align 4
  %630 = sext i32 %629 to i64
  %631 = load i64, i64* @itemOn, align 8
  %632 = icmp ule i64 %630, %631
  br i1 %632, label %633, label %653

633:                                              ; preds = %628
  %634 = load %struct.TYPE_12__*, %struct.TYPE_12__** @currentMenu, align 8
  %635 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %634, i32 0, i32 2
  %636 = load %struct.TYPE_9__*, %struct.TYPE_9__** %635, align 8
  %637 = load i32, i32* %5, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %636, i64 %638
  %640 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %639, i32 0, i32 1
  %641 = load i32, i32* %640, align 4
  %642 = load i32, i32* %4, align 4
  %643 = icmp eq i32 %641, %642
  br i1 %643, label %644, label %649

644:                                              ; preds = %633
  %645 = load i32, i32* %5, align 4
  %646 = sext i32 %645 to i64
  store i64 %646, i64* @itemOn, align 8
  %647 = load i32, i32* @sfx_pstop, align 4
  %648 = call i32 @S_StartSound(i32* null, i32 %647)
  store i32 1, i32* %2, align 4
  br label %655

649:                                              ; preds = %633
  br label %650

650:                                              ; preds = %649
  %651 = load i32, i32* %5, align 4
  %652 = add nsw i32 %651, 1
  store i32 %652, i32* %5, align 4
  br label %628

653:                                              ; preds = %628
  br label %654

654:                                              ; preds = %653
  store i32 0, i32* %2, align 4
  br label %655

655:                                              ; preds = %654, %644, %618, %596, %572, %571, %516, %486, %456, %430, %401, %397, %377, %367, %363, %359, %355, %351, %347, %342, %337, %332, %329, %318, %317, %307, %306, %293, %284, %278, %259, %164
  %656 = load i32, i32* %2, align 4
  ret i32 %656
}

declare dso_local i32 @I_GetTime(...) #1

declare dso_local i32 @strcpy(i32*, i32) #1

declare dso_local i32 @M_DoSave(i64) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #2

declare dso_local i32 @M_StringWidth(i32*) #1

declare dso_local i32 @messageRoutine(i32) #1

declare dso_local i32 @S_StartSound(i32*, i32) #1

declare dso_local i32 @G_ScreenShot(...) #1

declare dso_local i32 @M_SizeDisplay(i32) #1

declare dso_local i32 @M_StartControlPanel(...) #1

declare dso_local i32 @M_SaveGame(i32) #1

declare dso_local i32 @M_LoadGame(i32) #1

declare dso_local i32 @M_ChangeDetail(i32) #1

declare dso_local i32 @M_QuickSave(...) #1

declare dso_local i32 @M_EndGame(i32) #1

declare dso_local i32 @M_ChangeMessages(i32) #1

declare dso_local i32 @M_QuickLoad(...) #1

declare dso_local i32 @M_QuitDOOM(i32) #1

declare dso_local i32 @I_SetPalette(i32) #1

declare dso_local i32 @W_CacheLumpName(i8*, i32) #1

declare dso_local i32 @M_ClearMenus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
