; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map.c_AddBrushBevels.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map.c_AddBrushBevels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, float*, float*, %struct.TYPE_9__* }

@mapplanes = common dso_local global %struct.TYPE_11__* null, align 8
@nummapbrushsides = common dso_local global i64 0, align 8
@MAX_MAP_BRUSHSIDES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"MAX_MAP_BRUSHSIDES\00", align 1
@SFL_BEVEL = common dso_local global i32 0, align 4
@c_boxbevels = common dso_local global i32 0, align 4
@brushsides = common dso_local global %struct.TYPE_9__* null, align 8
@side_brushtextures = common dso_local global i32* null, align 8
@c_edgebevels = common dso_local global i32 0, align 4
@side_newrefs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddBrushBevels(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca float, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %212, %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %215

24:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %25

25:                                               ; preds = %206, %24
  %26 = load i32, i32* %4, align 4
  %27 = icmp sle i32 %26, 1
  br i1 %27, label %28, label %211

28:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %12, align 8
  br label %32

32:                                               ; preds = %54, %28
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %32
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapplanes, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %59

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 1
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %12, align 8
  br label %32

59:                                               ; preds = %52, %32
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %134

65:                                               ; preds = %59
  %66 = load i64, i64* @nummapbrushsides, align 8
  %67 = load i64, i64* @MAX_MAP_BRUSHSIDES, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i64, i64* @nummapbrushsides, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* @nummapbrushsides, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @VectorClear(i32* %78)
  %80 = load i32, i32* %4, align 4
  %81 = load i32*, i32** %14, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %95

87:                                               ; preds = %71
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load float*, float** %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  %94 = load float, float* %93, align 4
  store float %94, float* %15, align 4
  br label %104

95:                                               ; preds = %71
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load float*, float** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %98, i64 %100
  %102 = load float, float* %101, align 4
  %103 = fneg float %102
  store float %103, float* %15, align 4
  br label %104

104:                                              ; preds = %95, %87
  %105 = load i32*, i32** %14, align 8
  %106 = load float, float* %15, align 4
  %107 = call i8* @FindFloatPlane(i32* %105, float %106)
  %108 = ptrtoint i8* %107 to i64
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @SFL_BEVEL, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load i32, i32* @c_boxbevels, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* @c_boxbevels, align 4
  br label %134

134:                                              ; preds = %104, %59
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %205

138:                                              ; preds = %134
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i64 %143
  %145 = bitcast %struct.TYPE_9__* %10 to i8*
  %146 = bitcast %struct.TYPE_9__* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 8 %146, i64 32, i1 false)
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 %151
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i64 %157
  %159 = bitcast %struct.TYPE_9__* %152 to i8*
  %160 = bitcast %struct.TYPE_9__* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 32, i1 false)
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i64 %165
  %167 = bitcast %struct.TYPE_9__* %166 to i8*
  %168 = bitcast %struct.TYPE_9__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %167, i8* align 8 %168, i64 32, i1 false)
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** @brushsides, align 8
  %173 = ptrtoint %struct.TYPE_9__* %171 to i64
  %174 = ptrtoint %struct.TYPE_9__* %172 to i64
  %175 = sub i64 %173, %174
  %176 = sdiv exact i64 %175, 32
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %6, align 4
  %178 = load i32*, i32** @side_brushtextures, align 8
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %11, align 4
  %185 = load i32*, i32** @side_brushtextures, align 8
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %185, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** @side_brushtextures, align 8
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %192, i64 %196
  store i32 %191, i32* %197, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load i32*, i32** @side_brushtextures, align 8
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* %5, align 4
  %202 = add nsw i32 %200, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %199, i64 %203
  store i32 %198, i32* %204, align 4
  br label %205

205:                                              ; preds = %138, %134
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %4, align 4
  %208 = add nsw i32 %207, 2
  store i32 %208, i32* %4, align 4
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %25

211:                                              ; preds = %25
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %3, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %3, align 4
  br label %21

215:                                              ; preds = %21
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp eq i32 %218, 6
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  br label %482

221:                                              ; preds = %215
  store i32 6, i32* %5, align 4
  br label %222

222:                                              ; preds = %479, %221
  %223 = load i32, i32* %5, align 4
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp slt i32 %223, %226
  br i1 %227, label %228, label %482

228:                                              ; preds = %222
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 3
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i64 %233
  store %struct.TYPE_9__* %234, %struct.TYPE_9__** %12, align 8
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 5
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %236, align 8
  store %struct.TYPE_8__* %237, %struct.TYPE_8__** %16, align 8
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %239 = icmp ne %struct.TYPE_8__* %238, null
  br i1 %239, label %241, label %240

240:                                              ; preds = %228
  br label %479

241:                                              ; preds = %228
  store i32 0, i32* %6, align 4
  br label %242

242:                                              ; preds = %475, %241
  %243 = load i32, i32* %6, align 4
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp slt i32 %243, %246
  br i1 %247, label %248, label %478

248:                                              ; preds = %242
  %249 = load i32, i32* %6, align 4
  %250 = add nsw i32 %249, 1
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = srem i32 %250, %253
  store i32 %254, i32* %7, align 4
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32*, i32** %18, align 8
  %270 = call i32 @VectorSubtract(i32 %261, i32 %268, i32* %269)
  %271 = load i32*, i32** %18, align 8
  %272 = call double @VectorNormalize(i32* %271)
  %273 = fcmp olt double %272, 5.000000e-01
  br i1 %273, label %274, label %275

274:                                              ; preds = %248
  br label %475

275:                                              ; preds = %248
  %276 = load i32*, i32** %18, align 8
  %277 = call i32 @SnapVector(i32* %276)
  store i32 0, i32* %7, align 4
  br label %278

278:                                              ; preds = %297, %275
  %279 = load i32, i32* %7, align 4
  %280 = icmp slt i32 %279, 3
  br i1 %280, label %281, label %300

281:                                              ; preds = %278
  %282 = load i32*, i32** %18, align 8
  %283 = load i32, i32* %7, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %286, -1
  br i1 %287, label %295, label %288

288:                                              ; preds = %281
  %289 = load i32*, i32** %18, align 8
  %290 = load i32, i32* %7, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %295, label %296

295:                                              ; preds = %288, %281
  br label %300

296:                                              ; preds = %288
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %7, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %7, align 4
  br label %278

300:                                              ; preds = %295, %278
  %301 = load i32, i32* %7, align 4
  %302 = icmp ne i32 %301, 3
  br i1 %302, label %303, label %304

303:                                              ; preds = %300
  br label %475

304:                                              ; preds = %300
  store i32 0, i32* %3, align 4
  br label %305

305:                                              ; preds = %471, %304
  %306 = load i32, i32* %3, align 4
  %307 = icmp slt i32 %306, 3
  br i1 %307, label %308, label %474

308:                                              ; preds = %305
  store i32 -1, i32* %4, align 4
  br label %309

309:                                              ; preds = %467, %308
  %310 = load i32, i32* %4, align 4
  %311 = icmp sle i32 %310, 1
  br i1 %311, label %312, label %470

312:                                              ; preds = %309
  %313 = load i32*, i32** %19, align 8
  %314 = call i32 @VectorClear(i32* %313)
  %315 = load i32, i32* %4, align 4
  %316 = load i32*, i32** %19, align 8
  %317 = load i32, i32* %3, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  store i32 %315, i32* %319, align 4
  %320 = load i32*, i32** %18, align 8
  %321 = load i32*, i32** %19, align 8
  %322 = load i32*, i32** %14, align 8
  %323 = call i32 @CrossProduct(i32* %320, i32* %321, i32* %322)
  %324 = load i32*, i32** %14, align 8
  %325 = call double @VectorNormalize(i32* %324)
  %326 = fcmp olt double %325, 5.000000e-01
  br i1 %326, label %327, label %328

327:                                              ; preds = %312
  br label %467

328:                                              ; preds = %312
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 1
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %6, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load i32*, i32** %14, align 8
  %337 = call float @DotProduct(i32 %335, i32* %336)
  store float %337, float* %15, align 4
  store i32 0, i32* %7, align 4
  br label %338

338:                                              ; preds = %407, %328
  %339 = load i32, i32* %7, align 4
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = icmp slt i32 %339, %342
  br i1 %343, label %344, label %410

344:                                              ; preds = %338
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapplanes, align 8
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 3
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %347, align 8
  %349 = load i32, i32* %7, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i64 %353
  %355 = load i32*, i32** %14, align 8
  %356 = load float, float* %15, align 4
  %357 = call i64 @PlaneEqual(%struct.TYPE_11__* %354, i32* %355, float %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %344
  br label %410

360:                                              ; preds = %344
  %361 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 3
  %363 = load %struct.TYPE_9__*, %struct.TYPE_9__** %362, align 8
  %364 = load i32, i32* %7, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 5
  %368 = load %struct.TYPE_8__*, %struct.TYPE_8__** %367, align 8
  store %struct.TYPE_8__* %368, %struct.TYPE_8__** %17, align 8
  %369 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %370 = icmp ne %struct.TYPE_8__* %369, null
  br i1 %370, label %372, label %371

371:                                              ; preds = %360
  br label %407

372:                                              ; preds = %360
  store i32 0, i32* %8, align 4
  br label %373

373:                                              ; preds = %396, %372
  %374 = load i32, i32* %8, align 4
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = icmp slt i32 %374, %377
  br i1 %378, label %379, label %399

379:                                              ; preds = %373
  %380 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 1
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* %8, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = load i32*, i32** %14, align 8
  %388 = call float @DotProduct(i32 %386, i32* %387)
  %389 = load float, float* %15, align 4
  %390 = fsub float %388, %389
  store float %390, float* %20, align 4
  %391 = load float, float* %20, align 4
  %392 = fpext float %391 to double
  %393 = fcmp ogt double %392, 1.000000e-01
  br i1 %393, label %394, label %395

394:                                              ; preds = %379
  br label %399

395:                                              ; preds = %379
  br label %396

396:                                              ; preds = %395
  %397 = load i32, i32* %8, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %8, align 4
  br label %373

399:                                              ; preds = %394, %373
  %400 = load i32, i32* %8, align 4
  %401 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = icmp ne i32 %400, %403
  br i1 %404, label %405, label %406

405:                                              ; preds = %399
  br label %410

406:                                              ; preds = %399
  br label %407

407:                                              ; preds = %406, %371
  %408 = load i32, i32* %7, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %7, align 4
  br label %338

410:                                              ; preds = %405, %359, %338
  %411 = load i32, i32* %7, align 4
  %412 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = icmp ne i32 %411, %414
  br i1 %415, label %416, label %417

416:                                              ; preds = %410
  br label %467

417:                                              ; preds = %410
  %418 = load i64, i64* @nummapbrushsides, align 8
  %419 = load i64, i64* @MAX_MAP_BRUSHSIDES, align 8
  %420 = icmp eq i64 %418, %419
  br i1 %420, label %421, label %423

421:                                              ; preds = %417
  %422 = call i32 @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %423

423:                                              ; preds = %421, %417
  %424 = load i64, i64* @nummapbrushsides, align 8
  %425 = add nsw i64 %424, 1
  store i64 %425, i64* @nummapbrushsides, align 8
  %426 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %427 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %426, i32 0, i32 3
  %428 = load %struct.TYPE_9__*, %struct.TYPE_9__** %427, align 8
  %429 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %430 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i64 %432
  store %struct.TYPE_9__* %433, %struct.TYPE_9__** %13, align 8
  %434 = load i32*, i32** %14, align 8
  %435 = load float, float* %15, align 4
  %436 = call i8* @FindFloatPlane(i32* %434, float %435)
  %437 = ptrtoint i8* %436 to i64
  %438 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %439 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %438, i32 0, i32 0
  store i64 %437, i64* %439, align 8
  %440 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %441 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %440, i32 0, i32 3
  %442 = load %struct.TYPE_9__*, %struct.TYPE_9__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %442, i64 0
  %444 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %443, i32 0, i32 4
  %445 = load i32, i32* %444, align 4
  %446 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %447 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %446, i32 0, i32 4
  store i32 %445, i32* %447, align 4
  %448 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %448, i32 0, i32 3
  %450 = load %struct.TYPE_9__*, %struct.TYPE_9__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %450, i64 0
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %455 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %454, i32 0, i32 2
  store i32 %453, i32* %455, align 4
  %456 = load i32, i32* @SFL_BEVEL, align 4
  %457 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %458 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 8
  %460 = or i32 %459, %456
  store i32 %460, i32* %458, align 8
  %461 = load i32, i32* @c_edgebevels, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* @c_edgebevels, align 4
  %463 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %464 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %464, align 8
  br label %467

467:                                              ; preds = %423, %416, %327
  %468 = load i32, i32* %4, align 4
  %469 = add nsw i32 %468, 2
  store i32 %469, i32* %4, align 4
  br label %309

470:                                              ; preds = %309
  br label %471

471:                                              ; preds = %470
  %472 = load i32, i32* %3, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %3, align 4
  br label %305

474:                                              ; preds = %305
  br label %475

475:                                              ; preds = %474, %303, %274
  %476 = load i32, i32* %6, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %6, align 4
  br label %242

478:                                              ; preds = %242
  br label %479

479:                                              ; preds = %478, %240
  %480 = load i32, i32* %5, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %5, align 4
  br label %222

482:                                              ; preds = %220, %222
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i8* @FindFloatPlane(i32*, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorSubtract(i32, i32, i32*) #1

declare dso_local double @VectorNormalize(i32*) #1

declare dso_local i32 @SnapVector(i32*) #1

declare dso_local i32 @CrossProduct(i32*, i32*, i32*) #1

declare dso_local float @DotProduct(i32, i32*) #1

declare dso_local i64 @PlaneEqual(%struct.TYPE_11__*, i32*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
