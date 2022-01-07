; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_StartSound.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_StartSound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_8__*, i64, i32 }

@s_soundStarted = common dso_local global i32 0, align 4
@s_soundMuted = common dso_local global i64 0, align 8
@MAX_GENTITIES = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"S_StartSound: bad entitynum %i\00", align 1
@s_numSfx = common dso_local global i64 0, align 8
@S_COLOR_YELLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"S_StartSound: handle %i out of range\0A\00", align 1
@s_knownSfx = common dso_local global %struct.TYPE_8__* null, align 8
@qfalse = common dso_local global i64 0, align 8
@s_show = common dso_local global %struct.TYPE_10__* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%i : %s\0A\00", align 1
@s_paintedtime = common dso_local global i32 0, align 4
@listener_number = common dso_local global i32 0, align 4
@s_channels = common dso_local global %struct.TYPE_9__* null, align 8
@MAX_CHANNELS = common dso_local global i32 0, align 4
@CHAN_ANNOUNCER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"dropping sound\0A\00", align 1
@qtrue = common dso_local global i64 0, align 8
@START_SAMPLE_IMMEDIATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_StartSound(i64 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %17 = load i32, i32* @s_soundStarted, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i64, i64* @s_soundMuted, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %4
  br label %310

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MAX_GENTITIES, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29, %26
  %34 = load i32, i32* @ERR_DROP, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @Com_Error(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %29, %23
  %38 = load i64, i64* %8, align 8
  %39 = icmp ult i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @s_numSfx, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40, %37
  %45 = load i32, i32* @S_COLOR_YELLOW, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load i64, i64* %8, align 8
  %49 = call i32 (i8*, ...) @Com_Printf(i8* %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  br label %310

50:                                               ; preds = %40
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_knownSfx, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %52
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %10, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @qfalse, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = call i32 @S_memoryLoad(%struct.TYPE_8__* %60)
  br label %62

62:                                               ; preds = %59, %50
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @s_show, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32, i32* @s_paintedtime, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %67, %62
  %74 = call i32 (...) @Com_Milliseconds()
  store i32 %74, i32* %14, align 4
  store i32 4, i32* %16, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @listener_number, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 8, i32* %16, align 4
  br label %79

79:                                               ; preds = %78, %73
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @s_channels, align 8
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %118, %79
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @MAX_CHANNELS, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %123

85:                                               ; preds = %81
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %85
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %102 = icmp eq %struct.TYPE_8__* %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %94
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %104, %110
  %112 = icmp slt i32 %111, 50
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %310

114:                                              ; preds = %103
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %114, %94, %85
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 1
  store %struct.TYPE_9__* %122, %struct.TYPE_9__** %9, align 8
  br label %81

123:                                              ; preds = %81
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %16, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %310

128:                                              ; preds = %123
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = call %struct.TYPE_9__* (...) @S_ChannelMalloc()
  store %struct.TYPE_9__* %132, %struct.TYPE_9__** %9, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %134 = icmp ne %struct.TYPE_9__* %133, null
  br i1 %134, label %266, label %135

135:                                              ; preds = %128
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** @s_channels, align 8
  store %struct.TYPE_9__* %136, %struct.TYPE_9__** %9, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %140

140:                                              ; preds = %174, %135
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @MAX_CHANNELS, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %179

144:                                              ; preds = %140
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @listener_number, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %173

150:                                              ; preds = %144
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %173

156:                                              ; preds = %150
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %156
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %162
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %11, align 4
  store i32 %172, i32* %13, align 4
  br label %173

173:                                              ; preds = %168, %162, %156, %150, %144
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %11, align 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 1
  store %struct.TYPE_9__* %178, %struct.TYPE_9__** %9, align 8
  br label %140

179:                                              ; preds = %140
  %180 = load i32, i32* %13, align 4
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %256

182:                                              ; preds = %179
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** @s_channels, align 8
  store %struct.TYPE_9__* %183, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %11, align 4
  br label %184

184:                                              ; preds = %212, %182
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* @MAX_CHANNELS, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %217

188:                                              ; preds = %184
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @listener_number, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %211

194:                                              ; preds = %188
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %12, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %211

200:                                              ; preds = %194
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %200
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %12, align 4
  %210 = load i32, i32* %11, align 4
  store i32 %210, i32* %13, align 4
  br label %211

211:                                              ; preds = %206, %200, %194, %188
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %11, align 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 1
  store %struct.TYPE_9__* %216, %struct.TYPE_9__** %9, align 8
  br label %184

217:                                              ; preds = %184
  %218 = load i32, i32* %13, align 4
  %219 = icmp eq i32 %218, -1
  br i1 %219, label %220, label %255

220:                                              ; preds = %217
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @listener_number, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %249

226:                                              ; preds = %220
  store i32 0, i32* %11, align 4
  br label %227

227:                                              ; preds = %243, %226
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* @MAX_CHANNELS, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %248

231:                                              ; preds = %227
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %12, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %242

237:                                              ; preds = %231
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %12, align 4
  %241 = load i32, i32* %11, align 4
  store i32 %241, i32* %13, align 4
  br label %242

242:                                              ; preds = %237, %231
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %11, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %11, align 4
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 1
  store %struct.TYPE_9__* %247, %struct.TYPE_9__** %9, align 8
  br label %227

248:                                              ; preds = %227
  br label %249

249:                                              ; preds = %248, %220
  %250 = load i32, i32* %13, align 4
  %251 = icmp eq i32 %250, -1
  br i1 %251, label %252, label %254

252:                                              ; preds = %249
  %253 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %310

254:                                              ; preds = %249
  br label %255

255:                                              ; preds = %254, %217
  br label %256

256:                                              ; preds = %255, %179
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** @s_channels, align 8
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i64 %259
  store %struct.TYPE_9__* %260, %struct.TYPE_9__** %9, align 8
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 1
  store i32 %263, i32* %265, align 4
  br label %266

266:                                              ; preds = %256, %128
  %267 = load i64, i64* %5, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %278

269:                                              ; preds = %266
  %270 = load i64, i64* %5, align 8
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 10
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @VectorCopy(i64 %270, i32 %273)
  %275 = load i64, i64* @qtrue, align 8
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 9
  store i64 %275, i64* %277, align 8
  br label %282

278:                                              ; preds = %266
  %279 = load i64, i64* @qfalse, align 8
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 9
  store i64 %279, i64* %281, align 8
  br label %282

282:                                              ; preds = %278, %269
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 3
  store i32 127, i32* %284, align 4
  %285 = load i32, i32* %6, align 4
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 0
  store i32 %285, i32* %287, align 8
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 8
  store %struct.TYPE_8__* %288, %struct.TYPE_8__** %290, align 8
  %291 = load i32, i32* @START_SAMPLE_IMMEDIATE, align 4
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 7
  store i32 %291, i32* %293, align 8
  %294 = load i32, i32* %7, align 4
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 2
  store i32 %294, i32* %296, align 8
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 4
  store i32 %299, i32* %301, align 8
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 5
  store i32 %304, i32* %306, align 4
  %307 = load i64, i64* @qfalse, align 8
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 6
  store i64 %307, i64* %309, align 8
  br label %310

310:                                              ; preds = %282, %252, %127, %113, %44, %22
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @S_memoryLoad(%struct.TYPE_8__*) #1

declare dso_local i32 @Com_Milliseconds(...) #1

declare dso_local %struct.TYPE_9__* @S_ChannelMalloc(...) #1

declare dso_local i32 @VectorCopy(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
