; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_goal.c_BotUpdateEntityItems.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_goal.c_BotUpdateEntityItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i64, i64*, i32, i8*, i32, i64, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64*, i64* }

@levelitems = common dso_local global %struct.TYPE_13__* null, align 8
@itemconfig = common dso_local global %struct.TYPE_14__* null, align 8
@ET_ITEM = common dso_local global i64 0, align 8
@g_gametype = common dso_local global i64 0, align 8
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@IFL_NOTSINGLE = common dso_local global i32 0, align 4
@GT_TEAM = common dso_local global i64 0, align 8
@IFL_NOTTEAM = common dso_local global i32 0, align 4
@IFL_NOTFREE = common dso_local global i32 0, align 4
@numlevelitems = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotUpdateEntityItems() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** @levelitems, align 8
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %5, align 8
  br label %10

10:                                               ; preds = %34, %0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = icmp ne %struct.TYPE_13__* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %6, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %13
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 (...) @AAS_Time()
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = call i32 @RemoveLevelItemFromList(%struct.TYPE_13__* %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = call i32 @FreeLevelItem(%struct.TYPE_13__* %30)
  br label %32

32:                                               ; preds = %27, %21
  br label %33

33:                                               ; preds = %32, %13
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %5, align 8
  br label %10

36:                                               ; preds = %10
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** @itemconfig, align 8
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %8, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** @itemconfig, align 8
  %39 = icmp ne %struct.TYPE_14__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %450

41:                                               ; preds = %36
  %42 = call i32 @AAS_NextEntity(i32 0)
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %447, %41
  %44 = load i32, i32* %1, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %450

46:                                               ; preds = %43
  %47 = load i32, i32* %1, align 4
  %48 = call i64 @AAS_EntityType(i32 %47)
  %49 = load i64, i64* @ET_ITEM, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %447

52:                                               ; preds = %46
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @AAS_EntityModelindex(i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %447

58:                                               ; preds = %52
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @AAS_EntityInfo(i32 %59, %struct.TYPE_15__* %7)
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %64, %68
  br i1 %69, label %90, label %70

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %74, %78
  br i1 %79, label %90, label %80

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 2
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %84, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80, %70, %58
  br label %447

91:                                               ; preds = %80
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** @levelitems, align 8
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %5, align 8
  br label %93

93:                                               ; preds = %193, %91
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = icmp ne %struct.TYPE_13__* %94, null
  br i1 %95, label %96, label %197

96:                                               ; preds = %93
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %192

101:                                              ; preds = %96
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %1, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %192

107:                                              ; preds = %101
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %3, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %107
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %121 = call i32 @RemoveLevelItemFromList(%struct.TYPE_13__* %120)
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %123 = call i32 @FreeLevelItem(%struct.TYPE_13__* %122)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  br label %197

124:                                              ; preds = %107
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %128, %133
  br i1 %134, label %157, label %135

135:                                              ; preds = %124
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 3
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %139, %144
  br i1 %145, label %157, label %146

146:                                              ; preds = %135
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %150, %155
  br i1 %156, label %157, label %191

157:                                              ; preds = %146, %135, %124
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 3
  %162 = load i64*, i64** %161, align 8
  %163 = call i32 @VectorCopy(i64* %159, i64* %162)
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 3
  %166 = load i64*, i64** %165, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = call i8* @AAS_BestReachableArea(i64* %166, i32 %175, i32 %184, i32 %187)
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 5
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %157, %146
  br label %197

192:                                              ; preds = %101, %96
  br label %193

193:                                              ; preds = %192
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %195, align 8
  store %struct.TYPE_13__* %196, %struct.TYPE_13__** %5, align 8
  br label %93

197:                                              ; preds = %191, %119, %93
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %199 = icmp ne %struct.TYPE_13__* %198, null
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  br label %447

201:                                              ; preds = %197
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** @levelitems, align 8
  store %struct.TYPE_13__* %202, %struct.TYPE_13__** %5, align 8
  br label %203

203:                                              ; preds = %344, %201
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %205 = icmp ne %struct.TYPE_13__* %204, null
  br i1 %205, label %206, label %348

206:                                              ; preds = %203
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %344

212:                                              ; preds = %206
  %213 = load i64, i64* @g_gametype, align 8
  %214 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %225

216:                                              ; preds = %212
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @IFL_NOTSINGLE, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  br label %344

224:                                              ; preds = %216
  br label %248

225:                                              ; preds = %212
  %226 = load i64, i64* @g_gametype, align 8
  %227 = load i64, i64* @GT_TEAM, align 8
  %228 = icmp sge i64 %226, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %225
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @IFL_NOTTEAM, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %229
  br label %344

237:                                              ; preds = %229
  br label %247

238:                                              ; preds = %225
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @IFL_NOTFREE, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %238
  br label %344

246:                                              ; preds = %238
  br label %247

247:                                              ; preds = %246, %237
  br label %248

248:                                              ; preds = %247, %224
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %250, align 8
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %3, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %343

260:                                              ; preds = %248
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 3
  %263 = load i64*, i64** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %265 = load i64*, i64** %264, align 8
  %266 = load i32, i32* %4, align 4
  %267 = call i32 @VectorSubtract(i64* %263, i64* %265, i32 %266)
  %268 = load i32, i32* %4, align 4
  %269 = call i32 @VectorLength(i32 %268)
  %270 = icmp slt i32 %269, 30
  br i1 %270, label %271, label %342

271:                                              ; preds = %260
  %272 = load i32, i32* %1, align 4
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %276 = load i64*, i64** %275, align 8
  %277 = getelementptr inbounds i64, i64* %276, i64 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 3
  %281 = load i64*, i64** %280, align 8
  %282 = getelementptr inbounds i64, i64* %281, i64 0
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %278, %283
  br i1 %284, label %307, label %285

285:                                              ; preds = %271
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %287 = load i64*, i64** %286, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 1
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 3
  %292 = load i64*, i64** %291, align 8
  %293 = getelementptr inbounds i64, i64* %292, i64 1
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %289, %294
  br i1 %295, label %307, label %296

296:                                              ; preds = %285
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %298 = load i64*, i64** %297, align 8
  %299 = getelementptr inbounds i64, i64* %298, i64 2
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 3
  %303 = load i64*, i64** %302, align 8
  %304 = getelementptr inbounds i64, i64* %303, i64 2
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %300, %305
  br i1 %306, label %307, label %341

307:                                              ; preds = %296, %285, %271
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %309 = load i64*, i64** %308, align 8
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 3
  %312 = load i64*, i64** %311, align 8
  %313 = call i32 @VectorCopy(i64* %309, i64* %312)
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 3
  %316 = load i64*, i64** %315, align 8
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %318, align 8
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 2
  %322 = load i64, i64* %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %327, align 8
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 6
  %337 = load i32, i32* %336, align 8
  %338 = call i8* @AAS_BestReachableArea(i64* %316, i32 %325, i32 %334, i32 %337)
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 5
  store i8* %338, i8** %340, align 8
  br label %341

341:                                              ; preds = %307, %296
  br label %348

342:                                              ; preds = %260
  br label %343

343:                                              ; preds = %342, %248
  br label %344

344:                                              ; preds = %343, %245, %236, %223, %211
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 8
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %346, align 8
  store %struct.TYPE_13__* %347, %struct.TYPE_13__** %5, align 8
  br label %203

348:                                              ; preds = %341, %203
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %350 = icmp ne %struct.TYPE_13__* %349, null
  br i1 %350, label %351, label %352

351:                                              ; preds = %348
  br label %447

352:                                              ; preds = %348
  store i32 0, i32* %2, align 4
  br label %353

353:                                              ; preds = %372, %352
  %354 = load i32, i32* %2, align 4
  %355 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = icmp slt i32 %354, %357
  br i1 %358, label %359, label %375

359:                                              ; preds = %353
  %360 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 1
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %361, align 8
  %363 = load i32, i32* %2, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* %3, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %359
  br label %375

371:                                              ; preds = %359
  br label %372

372:                                              ; preds = %371
  %373 = load i32, i32* %2, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %2, align 4
  br label %353

375:                                              ; preds = %370, %353
  %376 = load i32, i32* %2, align 4
  %377 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = icmp sge i32 %376, %379
  br i1 %380, label %381, label %382

381:                                              ; preds = %375
  br label %447

382:                                              ; preds = %375
  %383 = call %struct.TYPE_13__* (...) @AllocLevelItem()
  store %struct.TYPE_13__* %383, %struct.TYPE_13__** %5, align 8
  %384 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %385 = icmp ne %struct.TYPE_13__* %384, null
  br i1 %385, label %387, label %386

386:                                              ; preds = %382
  br label %447

387:                                              ; preds = %382
  %388 = load i32, i32* %1, align 4
  %389 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %389, i32 0, i32 1
  store i32 %388, i32* %390, align 8
  %391 = load i64, i64* @numlevelitems, align 8
  %392 = load i32, i32* %1, align 4
  %393 = sext i32 %392 to i64
  %394 = add nsw i64 %391, %393
  %395 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %395, i32 0, i32 7
  store i64 %394, i64* %396, align 8
  %397 = load i32, i32* %2, align 4
  %398 = sext i32 %397 to i64
  %399 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %399, i32 0, i32 2
  store i64 %398, i64* %400, align 8
  %401 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %402 = load i64*, i64** %401, align 8
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 3
  %405 = load i64*, i64** %404, align 8
  %406 = call i32 @VectorCopy(i64* %402, i64* %405)
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 3
  %409 = load i64*, i64** %408, align 8
  %410 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %411 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %410, i32 0, i32 1
  %412 = load %struct.TYPE_12__*, %struct.TYPE_12__** %411, align 8
  %413 = load i32, i32* %2, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %412, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %419 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %418, i32 0, i32 1
  %420 = load %struct.TYPE_12__*, %struct.TYPE_12__** %419, align 8
  %421 = load i32, i32* %2, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %426, i32 0, i32 6
  %428 = load i32, i32* %427, align 8
  %429 = call i8* @AAS_BestReachableArea(i64* %409, i32 %417, i32 %425, i32 %428)
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 5
  store i8* %429, i8** %431, align 8
  %432 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %432, i32 0, i32 5
  %434 = load i8*, i8** %433, align 8
  %435 = call i64 @AAS_AreaJumpPad(i8* %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %440

437:                                              ; preds = %387
  %438 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %439 = call i32 @FreeLevelItem(%struct.TYPE_13__* %438)
  br label %447

440:                                              ; preds = %387
  %441 = call i64 (...) @AAS_Time()
  %442 = add nsw i64 %441, 30
  %443 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %443, i32 0, i32 0
  store i64 %442, i64* %444, align 8
  %445 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %446 = call i32 @AddLevelItemToList(%struct.TYPE_13__* %445)
  br label %447

447:                                              ; preds = %440, %437, %386, %381, %351, %200, %90, %57, %51
  %448 = load i32, i32* %1, align 4
  %449 = call i32 @AAS_NextEntity(i32 %448)
  store i32 %449, i32* %1, align 4
  br label %43

450:                                              ; preds = %40, %43
  ret void
}

declare dso_local i64 @AAS_Time(...) #1

declare dso_local i32 @RemoveLevelItemFromList(%struct.TYPE_13__*) #1

declare dso_local i32 @FreeLevelItem(%struct.TYPE_13__*) #1

declare dso_local i32 @AAS_NextEntity(i32) #1

declare dso_local i64 @AAS_EntityType(i32) #1

declare dso_local i32 @AAS_EntityModelindex(i32) #1

declare dso_local i32 @AAS_EntityInfo(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i8* @AAS_BestReachableArea(i64*, i32, i32, i32) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i32) #1

declare dso_local i32 @VectorLength(i32) #1

declare dso_local %struct.TYPE_13__* @AllocLevelItem(...) #1

declare dso_local i64 @AAS_AreaJumpPad(i8*) #1

declare dso_local i32 @AddLevelItemToList(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
