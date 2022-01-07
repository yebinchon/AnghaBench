; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_mover.c_G_MoverPush.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_mover.c_G_MoverPush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_30__*, %struct.TYPE_32__, %struct.TYPE_31__, i32, i32*, %struct.TYPE_34__*, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64*, i32* }
%struct.TYPE_32__ = type { i64, i64, i64, %struct.TYPE_28__, %struct.TYPE_27__, i64 }
%struct.TYPE_28__ = type { i64, i64* }
%struct.TYPE_27__ = type { i64, i64* }
%struct.TYPE_31__ = type { i64*, i64*, i64*, i64*, i32, i32 }
%struct.TYPE_33__ = type { i64*, i64*, %struct.TYPE_34__*, i32 }

@MAX_GENTITIES = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_34__* null, align 8
@ET_ITEM = common dso_local global i64 0, align 8
@ET_PLAYER = common dso_local global i64 0, align 8
@TR_SINE = common dso_local global i64 0, align 8
@MOD_CRUSH = common dso_local global i32 0, align 4
@pushed_p = common dso_local global %struct.TYPE_33__* null, align 8
@pushed = common dso_local global %struct.TYPE_33__* null, align 8
@YAW = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@ET_MISSILE = common dso_local global i64 0, align 8
@EV_PROXIMITY_MINE_TRIGGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @G_MoverPush(%struct.TYPE_34__* %0, i64* %1, i64* %2, %struct.TYPE_34__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_34__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.TYPE_33__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.TYPE_34__** %3, %struct.TYPE_34__*** %9, align 8
  %23 = load i32, i32* @MAX_GENTITIES, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %16, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %27 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %9, align 8
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %27, align 8
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %66, label %35

35:                                               ; preds = %4
  %36 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %66, label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %43
  %52 = load i64*, i64** %8, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load i64*, i64** %8, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i64*, i64** %8, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %158

66:                                               ; preds = %61, %56, %51, %43, %35, %4
  %67 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call float @RadiusFromBounds(i32 %70, i32 %74)
  store float %75, float* %21, align 4
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %154, %66
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 3
  br i1 %78, label %79, label %157

79:                                               ; preds = %76
  %80 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %7, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %87, %92
  %94 = sitofp i64 %93 to float
  %95 = load float, float* %21, align 4
  %96 = fsub float %94, %95
  %97 = fptosi float %96 to i64
  %98 = load i64*, i64** %13, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  store i64 %97, i64* %101, align 8
  %102 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %7, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %109, %114
  %116 = sitofp i64 %115 to float
  %117 = load float, float* %21, align 4
  %118 = fadd float %116, %117
  %119 = fptosi float %118 to i64
  %120 = load i64*, i64** %14, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  store i64 %119, i64* %123, align 8
  %124 = load i64*, i64** %13, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i64*, i64** %7, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %128, %133
  %135 = load i64*, i64** %19, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  store i64 %134, i64* %138, align 8
  %139 = load i64*, i64** %14, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = load i64*, i64** %7, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %143, %148
  %150 = load i64*, i64** %20, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  store i64 %149, i64* %153, align 8
  br label %154

154:                                              ; preds = %79
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %76

157:                                              ; preds = %76
  br label %254

158:                                              ; preds = %61
  store i32 0, i32* %10, align 4
  br label %159

159:                                              ; preds = %199, %158
  %160 = load i32, i32* %10, align 4
  %161 = icmp slt i32 %160, 3
  br i1 %161, label %162, label %202

162:                                              ; preds = %159
  %163 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %164, i32 0, i32 2
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load i64*, i64** %7, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %170, %175
  %177 = load i64*, i64** %13, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  store i64 %176, i64* %180, align 8
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %182, i32 0, i32 3
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = load i64*, i64** %7, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %188, %193
  %195 = load i64*, i64** %14, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  store i64 %194, i64* %198, align 8
  br label %199

199:                                              ; preds = %162
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %10, align 4
  br label %159

202:                                              ; preds = %159
  %203 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %204, i32 0, i32 2
  %206 = load i64*, i64** %205, align 8
  %207 = load i64*, i64** %19, align 8
  %208 = call i32 @VectorCopy(i64* %206, i64* %207)
  %209 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %210, i32 0, i32 3
  %212 = load i64*, i64** %211, align 8
  %213 = load i64*, i64** %20, align 8
  %214 = call i32 @VectorCopy(i64* %212, i64* %213)
  store i32 0, i32* %10, align 4
  br label %215

215:                                              ; preds = %250, %202
  %216 = load i32, i32* %10, align 4
  %217 = icmp slt i32 %216, 3
  br i1 %217, label %218, label %253

218:                                              ; preds = %215
  %219 = load i64*, i64** %7, align 8
  %220 = load i32, i32* %10, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = icmp sgt i64 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %218
  %226 = load i64*, i64** %7, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i64, i64* %226, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = load i64*, i64** %20, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %235, %230
  store i64 %236, i64* %234, align 8
  br label %249

237:                                              ; preds = %218
  %238 = load i64*, i64** %7, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = load i64*, i64** %19, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %243, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %247, %242
  store i64 %248, i64* %246, align 8
  br label %249

249:                                              ; preds = %237, %225
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %10, align 4
  br label %215

253:                                              ; preds = %215
  br label %254

254:                                              ; preds = %253, %157
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %256 = call i32 @trap_UnlinkEntity(%struct.TYPE_34__* %255)
  %257 = load i64*, i64** %19, align 8
  %258 = load i64*, i64** %20, align 8
  %259 = load i32, i32* @MAX_GENTITIES, align 4
  %260 = call i32 @trap_EntitiesInBox(i64* %257, i64* %258, i32* %26, i32 %259)
  store i32 %260, i32* %18, align 4
  %261 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %262, i32 0, i32 1
  %264 = load i64*, i64** %263, align 8
  %265 = load i64*, i64** %7, align 8
  %266 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %267, i32 0, i32 1
  %269 = load i64*, i64** %268, align 8
  %270 = call i32 @VectorAdd(i64* %264, i64* %265, i64* %269)
  %271 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %272, i32 0, i32 0
  %274 = load i64*, i64** %273, align 8
  %275 = load i64*, i64** %8, align 8
  %276 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %277, i32 0, i32 0
  %279 = load i64*, i64** %278, align 8
  %280 = call i32 @VectorAdd(i64* %274, i64* %275, i64* %279)
  %281 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %282 = call i32 @trap_LinkEntity(%struct.TYPE_34__* %281)
  store i32 0, i32* %11, align 4
  br label %283

283:                                              ; preds = %501, %254
  %284 = load i32, i32* %11, align 4
  %285 = load i32, i32* %18, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %504

287:                                              ; preds = %283
  %288 = load %struct.TYPE_34__*, %struct.TYPE_34__** @g_entities, align 8
  %289 = load i32, i32* %11, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %26, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i64 %293
  store %struct.TYPE_34__* %294, %struct.TYPE_34__** %12, align 8
  %295 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %296 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @ET_ITEM, align 8
  %300 = icmp ne i64 %298, %299
  br i1 %300, label %301, label %314

301:                                              ; preds = %287
  %302 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %303 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @ET_PLAYER, align 8
  %307 = icmp ne i64 %305, %306
  br i1 %307, label %308, label %314

308:                                              ; preds = %301
  %309 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %310 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %314, label %313

313:                                              ; preds = %308
  br label %501

314:                                              ; preds = %308, %301, %287
  %315 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %316 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %320, i32 0, i32 2
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %318, %322
  br i1 %323, label %324, label %397

324:                                              ; preds = %314
  %325 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %326, i32 0, i32 2
  %328 = load i64*, i64** %327, align 8
  %329 = getelementptr inbounds i64, i64* %328, i64 0
  %330 = load i64, i64* %329, align 8
  %331 = load i64*, i64** %14, align 8
  %332 = getelementptr inbounds i64, i64* %331, i64 0
  %333 = load i64, i64* %332, align 8
  %334 = icmp sge i64 %330, %333
  br i1 %334, label %390, label %335

335:                                              ; preds = %324
  %336 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %337 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %337, i32 0, i32 2
  %339 = load i64*, i64** %338, align 8
  %340 = getelementptr inbounds i64, i64* %339, i64 1
  %341 = load i64, i64* %340, align 8
  %342 = load i64*, i64** %14, align 8
  %343 = getelementptr inbounds i64, i64* %342, i64 1
  %344 = load i64, i64* %343, align 8
  %345 = icmp sge i64 %341, %344
  br i1 %345, label %390, label %346

346:                                              ; preds = %335
  %347 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %348 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %348, i32 0, i32 2
  %350 = load i64*, i64** %349, align 8
  %351 = getelementptr inbounds i64, i64* %350, i64 2
  %352 = load i64, i64* %351, align 8
  %353 = load i64*, i64** %14, align 8
  %354 = getelementptr inbounds i64, i64* %353, i64 2
  %355 = load i64, i64* %354, align 8
  %356 = icmp sge i64 %352, %355
  br i1 %356, label %390, label %357

357:                                              ; preds = %346
  %358 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %359 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %358, i32 0, i32 2
  %360 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %359, i32 0, i32 3
  %361 = load i64*, i64** %360, align 8
  %362 = getelementptr inbounds i64, i64* %361, i64 0
  %363 = load i64, i64* %362, align 8
  %364 = load i64*, i64** %13, align 8
  %365 = getelementptr inbounds i64, i64* %364, i64 0
  %366 = load i64, i64* %365, align 8
  %367 = icmp sle i64 %363, %366
  br i1 %367, label %390, label %368

368:                                              ; preds = %357
  %369 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %370 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %370, i32 0, i32 3
  %372 = load i64*, i64** %371, align 8
  %373 = getelementptr inbounds i64, i64* %372, i64 1
  %374 = load i64, i64* %373, align 8
  %375 = load i64*, i64** %13, align 8
  %376 = getelementptr inbounds i64, i64* %375, i64 1
  %377 = load i64, i64* %376, align 8
  %378 = icmp sle i64 %374, %377
  br i1 %378, label %390, label %379

379:                                              ; preds = %368
  %380 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %381 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %381, i32 0, i32 3
  %383 = load i64*, i64** %382, align 8
  %384 = getelementptr inbounds i64, i64* %383, i64 2
  %385 = load i64, i64* %384, align 8
  %386 = load i64*, i64** %13, align 8
  %387 = getelementptr inbounds i64, i64* %386, i64 2
  %388 = load i64, i64* %387, align 8
  %389 = icmp sle i64 %385, %388
  br i1 %389, label %390, label %391

390:                                              ; preds = %379, %368, %357, %346, %335, %324
  br label %501

391:                                              ; preds = %379
  %392 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %393 = call i32 @G_TestEntityPosition(%struct.TYPE_34__* %392)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %396, label %395

395:                                              ; preds = %391
  br label %501

396:                                              ; preds = %391
  br label %397

397:                                              ; preds = %396, %314
  %398 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %399 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %400 = load i64*, i64** %7, align 8
  %401 = load i64*, i64** %8, align 8
  %402 = call i64 @G_TryPushingEntity(%struct.TYPE_34__* %398, %struct.TYPE_34__* %399, i64* %400, i64* %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %397
  br label %501

405:                                              ; preds = %397
  %406 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %407 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %407, i32 0, i32 4
  %409 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @TR_SINE, align 8
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %421, label %413

413:                                              ; preds = %405
  %414 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %415, i32 0, i32 3
  %417 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = load i64, i64* @TR_SINE, align 8
  %420 = icmp eq i64 %418, %419
  br i1 %420, label %421, label %427

421:                                              ; preds = %413, %405
  %422 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %423 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %424 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %425 = load i32, i32* @MOD_CRUSH, align 4
  %426 = call i32 @G_Damage(%struct.TYPE_34__* %422, %struct.TYPE_34__* %423, %struct.TYPE_34__* %424, i32* null, i32* null, i32 99999, i32 0, i32 %425)
  br label %501

427:                                              ; preds = %413
  %428 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %429 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %9, align 8
  store %struct.TYPE_34__* %428, %struct.TYPE_34__** %429, align 8
  %430 = load %struct.TYPE_33__*, %struct.TYPE_33__** @pushed_p, align 8
  %431 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %430, i64 -1
  store %struct.TYPE_33__* %431, %struct.TYPE_33__** %15, align 8
  br label %432

432:                                              ; preds = %496, %427
  %433 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %434 = load %struct.TYPE_33__*, %struct.TYPE_33__** @pushed, align 8
  %435 = icmp uge %struct.TYPE_33__* %433, %434
  br i1 %435, label %436, label %499

436:                                              ; preds = %432
  %437 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %438 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %437, i32 0, i32 0
  %439 = load i64*, i64** %438, align 8
  %440 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %441 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %440, i32 0, i32 2
  %442 = load %struct.TYPE_34__*, %struct.TYPE_34__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %443, i32 0, i32 4
  %445 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %444, i32 0, i32 1
  %446 = load i64*, i64** %445, align 8
  %447 = call i32 @VectorCopy(i64* %439, i64* %446)
  %448 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %449 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %448, i32 0, i32 1
  %450 = load i64*, i64** %449, align 8
  %451 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %452 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %451, i32 0, i32 2
  %453 = load %struct.TYPE_34__*, %struct.TYPE_34__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %454, i32 0, i32 3
  %456 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %455, i32 0, i32 1
  %457 = load i64*, i64** %456, align 8
  %458 = call i32 @VectorCopy(i64* %450, i64* %457)
  %459 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %460 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %459, i32 0, i32 2
  %461 = load %struct.TYPE_34__*, %struct.TYPE_34__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %461, i32 0, i32 0
  %463 = load %struct.TYPE_30__*, %struct.TYPE_30__** %462, align 8
  %464 = icmp ne %struct.TYPE_30__* %463, null
  br i1 %464, label %465, label %491

465:                                              ; preds = %436
  %466 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %467 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %466, i32 0, i32 3
  %468 = load i32, i32* %467, align 8
  %469 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %470 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %469, i32 0, i32 2
  %471 = load %struct.TYPE_34__*, %struct.TYPE_34__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %471, i32 0, i32 0
  %473 = load %struct.TYPE_30__*, %struct.TYPE_30__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %474, i32 0, i32 1
  %476 = load i32*, i32** %475, align 8
  %477 = load i64, i64* @YAW, align 8
  %478 = getelementptr inbounds i32, i32* %476, i64 %477
  store i32 %468, i32* %478, align 4
  %479 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %480 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %479, i32 0, i32 0
  %481 = load i64*, i64** %480, align 8
  %482 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %483 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %482, i32 0, i32 2
  %484 = load %struct.TYPE_34__*, %struct.TYPE_34__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %484, i32 0, i32 0
  %486 = load %struct.TYPE_30__*, %struct.TYPE_30__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %487, i32 0, i32 0
  %489 = load i64*, i64** %488, align 8
  %490 = call i32 @VectorCopy(i64* %481, i64* %489)
  br label %491

491:                                              ; preds = %465, %436
  %492 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %493 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %492, i32 0, i32 2
  %494 = load %struct.TYPE_34__*, %struct.TYPE_34__** %493, align 8
  %495 = call i32 @trap_LinkEntity(%struct.TYPE_34__* %494)
  br label %496

496:                                              ; preds = %491
  %497 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %498 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %497, i32 -1
  store %struct.TYPE_33__* %498, %struct.TYPE_33__** %15, align 8
  br label %432

499:                                              ; preds = %432
  %500 = load i32, i32* @qfalse, align 4
  store i32 %500, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %506

501:                                              ; preds = %421, %404, %395, %390, %313
  %502 = load i32, i32* %11, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %11, align 4
  br label %283

504:                                              ; preds = %283
  %505 = load i32, i32* @qtrue, align 4
  store i32 %505, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %506

506:                                              ; preds = %504, %499
  %507 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %507)
  %508 = load i32, i32* %5, align 4
  ret i32 %508
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local float @RadiusFromBounds(i32, i32) #2

declare dso_local i32 @VectorCopy(i64*, i64*) #2

declare dso_local i32 @trap_UnlinkEntity(%struct.TYPE_34__*) #2

declare dso_local i32 @trap_EntitiesInBox(i64*, i64*, i32*, i32) #2

declare dso_local i32 @VectorAdd(i64*, i64*, i64*) #2

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_34__*) #2

declare dso_local i32 @G_TestEntityPosition(%struct.TYPE_34__*) #2

declare dso_local i64 @G_TryPushingEntity(%struct.TYPE_34__*, %struct.TYPE_34__*, i64*, i64*) #2

declare dso_local i32 @G_Damage(%struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_34__*, i32*, i32*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
