; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_TryRunTics.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_TryRunTics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }

@TryRunTics.oldentertics = internal global i32 0, align 4
@ticdup = common dso_local global i32 0, align 4
@MAXINT = common dso_local global i32 0, align 4
@doomcom = common dso_local global %struct.TYPE_5__* null, align 8
@nodeingame = common dso_local global i64* null, align 8
@nettics = common dso_local global i32* null, align 8
@gametic = common dso_local global i32 0, align 4
@frameon = common dso_local global i32 0, align 4
@debugfile = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"=======real: %i  avail: %i  game: %i\0A\00", align 1
@demoplayback = common dso_local global i32 0, align 4
@MAXPLAYERS = common dso_local global i32 0, align 4
@playeringame = common dso_local global i64* null, align 8
@consoleplayer = common dso_local global i32 0, align 4
@nodeforplayer = common dso_local global i64* null, align 8
@gametime = common dso_local global i32 0, align 4
@oldnettics = common dso_local global i32 0, align 4
@frameskip = common dso_local global i32* null, align 8
@skiptics = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"TryRunTics: lowtic < gametic\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gametic>lowtic\00", align 1
@advancedemo = common dso_local global i64 0, align 8
@BACKUPTICS = common dso_local global i32 0, align 4
@netcmds = common dso_local global %struct.TYPE_4__** null, align 8
@BT_SPECIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TryRunTics() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = call i32 (...) @I_GetTime()
  %12 = load i32, i32* @ticdup, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @TryRunTics.oldentertics, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* @TryRunTics.oldentertics, align 4
  %18 = call i32 (...) @NetUpdate()
  %19 = load i32, i32* @MAXINT, align 4
  store i32 %19, i32* %2, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %51, %0
  %21 = load i32, i32* %1, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @doomcom, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %20
  %27 = load i64*, i64** @nodeingame, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load i32*, i32** @nettics, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load i32*, i32** @nettics, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %33
  br label %50

50:                                               ; preds = %49, %26
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %20

54:                                               ; preds = %20
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @gametic, align 4
  %57 = load i32, i32* @ticdup, align 4
  %58 = sdiv i32 %56, %57
  %59 = sub nsw i32 %55, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %76

67:                                               ; preds = %54
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %6, align 4
  br label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %73, %71
  br label %76

76:                                               ; preds = %75, %64
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 1, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, i32* @frameon, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @frameon, align 4
  %83 = load i64, i64* @debugfile, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i64, i64* @debugfile, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @fprintf(i64 %86, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %80
  %92 = load i32, i32* @demoplayback, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %174, label %94

94:                                               ; preds = %91
  store i32 0, i32* %1, align 4
  br label %95

95:                                               ; preds = %108, %94
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* @MAXPLAYERS, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = load i64*, i64** @playeringame, align 8
  %101 = load i32, i32* %1, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %111

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %1, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %1, align 4
  br label %95

111:                                              ; preds = %106, %95
  %112 = load i32, i32* @consoleplayer, align 4
  %113 = load i32, i32* %1, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %173

116:                                              ; preds = %111
  %117 = load i32*, i32** @nettics, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** @nettics, align 8
  %121 = load i64*, i64** @nodeforplayer, align 8
  %122 = load i32, i32* %1, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i32, i32* %120, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp sle i32 %119, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %116
  %130 = load i32, i32* @gametime, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* @gametime, align 4
  br label %132

132:                                              ; preds = %129, %116
  %133 = load i32, i32* @oldnettics, align 4
  %134 = load i32*, i32** @nettics, align 8
  %135 = load i64*, i64** @nodeforplayer, align 8
  %136 = load i32, i32* %1, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32, i32* %134, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp sgt i32 %133, %141
  %143 = zext i1 %142 to i32
  %144 = load i32*, i32** @frameskip, align 8
  %145 = load i32, i32* @frameon, align 4
  %146 = and i32 %145, 3
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  store i32 %143, i32* %148, align 4
  %149 = load i32*, i32** @nettics, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* @oldnettics, align 4
  %152 = load i32*, i32** @frameskip, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %132
  %157 = load i32*, i32** @frameskip, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %156
  %162 = load i32*, i32** @frameskip, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load i32*, i32** @frameskip, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 3
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 1, i32* @skiptics, align 4
  br label %172

172:                                              ; preds = %171, %166, %161, %156, %132
  br label %173

173:                                              ; preds = %172, %115
  br label %174

174:                                              ; preds = %173, %91
  br label %175

175:                                              ; preds = %234, %174
  %176 = load i32, i32* %2, align 4
  %177 = load i32, i32* @gametic, align 4
  %178 = load i32, i32* @ticdup, align 4
  %179 = sdiv i32 %177, %178
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %179, %180
  %182 = icmp slt i32 %176, %181
  br i1 %182, label %183, label %235

183:                                              ; preds = %175
  %184 = call i32 (...) @NetUpdate()
  %185 = load i32, i32* @MAXINT, align 4
  store i32 %185, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %186

186:                                              ; preds = %214, %183
  %187 = load i32, i32* %1, align 4
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** @doomcom, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %217

192:                                              ; preds = %186
  %193 = load i64*, i64** @nodeingame, align 8
  %194 = load i32, i32* %1, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %193, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %213

199:                                              ; preds = %192
  %200 = load i32*, i32** @nettics, align 8
  %201 = load i32, i32* %1, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %2, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %199
  %208 = load i32*, i32** @nettics, align 8
  %209 = load i32, i32* %1, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %2, align 4
  br label %213

213:                                              ; preds = %207, %199, %192
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %1, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %1, align 4
  br label %186

217:                                              ; preds = %186
  %218 = load i32, i32* %2, align 4
  %219 = load i32, i32* @gametic, align 4
  %220 = load i32, i32* @ticdup, align 4
  %221 = sdiv i32 %219, %220
  %222 = icmp slt i32 %218, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = call i32 @I_Error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %225

225:                                              ; preds = %223, %217
  %226 = call i32 (...) @I_GetTime()
  %227 = load i32, i32* @ticdup, align 4
  %228 = sdiv i32 %226, %227
  %229 = load i32, i32* %3, align 4
  %230 = sub nsw i32 %228, %229
  %231 = icmp sge i32 %230, 20
  br i1 %231, label %232, label %234

232:                                              ; preds = %225
  %233 = call i32 (...) @M_Ticker()
  br label %308

234:                                              ; preds = %225
  br label %175

235:                                              ; preds = %175
  br label %236

236:                                              ; preds = %306, %235
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %6, align 4
  %239 = icmp ne i32 %237, 0
  br i1 %239, label %240, label %308

240:                                              ; preds = %236
  store i32 0, i32* %1, align 4
  br label %241

241:                                              ; preds = %303, %240
  %242 = load i32, i32* %1, align 4
  %243 = load i32, i32* @ticdup, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %306

245:                                              ; preds = %241
  %246 = load i32, i32* @gametic, align 4
  %247 = load i32, i32* @ticdup, align 4
  %248 = sdiv i32 %246, %247
  %249 = load i32, i32* %2, align 4
  %250 = icmp sgt i32 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %245
  %252 = call i32 @I_Error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %253

253:                                              ; preds = %251, %245
  %254 = load i64, i64* @advancedemo, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = call i32 (...) @D_DoAdvanceDemo()
  br label %258

258:                                              ; preds = %256, %253
  %259 = call i32 (...) @M_Ticker()
  %260 = call i32 (...) @G_Ticker()
  %261 = load i32, i32* @gametic, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* @gametic, align 4
  %263 = load i32, i32* %1, align 4
  %264 = load i32, i32* @ticdup, align 4
  %265 = sub nsw i32 %264, 1
  %266 = icmp ne i32 %263, %265
  br i1 %266, label %267, label %302

267:                                              ; preds = %258
  %268 = load i32, i32* @gametic, align 4
  %269 = load i32, i32* @ticdup, align 4
  %270 = sdiv i32 %268, %269
  %271 = load i32, i32* @BACKUPTICS, align 4
  %272 = srem i32 %270, %271
  store i32 %272, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %273

273:                                              ; preds = %298, %267
  %274 = load i32, i32* %10, align 4
  %275 = load i32, i32* @MAXPLAYERS, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %301

277:                                              ; preds = %273
  %278 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @netcmds, align 8
  %279 = load i32, i32* %10, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %278, i64 %280
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %281, align 8
  %283 = load i32, i32* %9, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i64 %284
  store %struct.TYPE_4__* %285, %struct.TYPE_4__** %8, align 8
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 1
  store i64 0, i64* %287, align 8
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @BT_SPECIAL, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %277
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  store i32 0, i32* %296, align 8
  br label %297

297:                                              ; preds = %294, %277
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %10, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %10, align 4
  br label %273

301:                                              ; preds = %273
  br label %302

302:                                              ; preds = %301, %258
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %1, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %1, align 4
  br label %241

306:                                              ; preds = %241
  %307 = call i32 (...) @NetUpdate()
  br label %236

308:                                              ; preds = %232, %236
  ret void
}

declare dso_local i32 @I_GetTime(...) #1

declare dso_local i32 @NetUpdate(...) #1

declare dso_local i32 @fprintf(i64, i8*, i32, i32, i32) #1

declare dso_local i32 @I_Error(i8*) #1

declare dso_local i32 @M_Ticker(...) #1

declare dso_local i32 @D_DoAdvanceDemo(...) #1

declare dso_local i32 @G_Ticker(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
