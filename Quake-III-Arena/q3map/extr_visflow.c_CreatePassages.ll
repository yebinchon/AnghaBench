; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_visflow.c_CreatePassages.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_visflow.c_CreatePassages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32*, float, %struct.TYPE_19__*, i32, i64, %struct.TYPE_22__*, i32 }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_22__ = type { i32*, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_20__** }
%struct.TYPE_21__ = type { float, i32 }

@MAX_SEPERATORS = common dso_local global i32 0, align 4
@sorted_portals = common dso_local global %struct.TYPE_20__** null, align 8
@stat_done = common dso_local global i32 0, align 4
@leafs = common dso_local global %struct.TYPE_23__* null, align 8
@portalbytes = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@numportals = common dso_local global i32 0, align 4
@portals = common dso_local global %struct.TYPE_20__* null, align 8
@ON_EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreatePassages(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca %struct.TYPE_19__, align 8
  %20 = alloca %struct.TYPE_19__, align 8
  %21 = alloca %struct.TYPE_19__*, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %23 = load i32, i32* @MAX_SEPERATORS, align 4
  %24 = mul nsw i32 %23, 2
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %16, align 8
  %27 = alloca %struct.TYPE_21__, i64 %25, align 16
  store i64 %25, i64* %17, align 8
  %28 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @sorted_portals, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %28, i64 %30
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  store %struct.TYPE_20__* %32, %struct.TYPE_20__** %10, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i32, i32* @stat_done, align 4
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  store i32 1, i32* %22, align 4
  br label %299

41:                                               ; preds = %1
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %15, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** @leafs, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i64 %45
  store %struct.TYPE_23__* %46, %struct.TYPE_23__** %13, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %295, %41
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %298

53:                                               ; preds = %47
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %56, i64 %58
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %59, align 8
  store %struct.TYPE_20__* %60, %struct.TYPE_20__** %12, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %295

66:                                               ; preds = %53
  %67 = load i64, i64* @portalbytes, align 8
  %68 = add i64 16, %67
  %69 = call i64 @malloc(i64 %68)
  %70 = inttoptr i64 %69 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %70, %struct.TYPE_22__** %14, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %72 = load i64, i64* @portalbytes, align 8
  %73 = add i64 16, %72
  %74 = call i32 @memset(%struct.TYPE_22__* %71, i32 0, i64 %73)
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %76, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  %81 = load i32, i32* @qfalse, align 4
  %82 = load i32, i32* @MAX_SEPERATORS, align 4
  %83 = mul nsw i32 %82, 2
  %84 = call i32 @AddSeperators(%struct.TYPE_19__* %77, %struct.TYPE_19__* %80, i32 %81, %struct.TYPE_21__* %27, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %86, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %89, align 8
  %91 = load i32, i32* @qtrue, align 4
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i64 %93
  %95 = load i32, i32* @MAX_SEPERATORS, align 4
  %96 = mul nsw i32 %95, 2
  %97 = load i32, i32* %7, align 4
  %98 = sub nsw i32 %96, %97
  %99 = call i32 @AddSeperators(%struct.TYPE_19__* %87, %struct.TYPE_19__* %90, i32 %91, %struct.TYPE_21__* %94, i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %103, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %105 = icmp ne %struct.TYPE_22__* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %66
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  store %struct.TYPE_22__* %107, %struct.TYPE_22__** %109, align 8
  br label %114

110:                                              ; preds = %66
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 6
  store %struct.TYPE_22__* %111, %struct.TYPE_22__** %113, align 8
  br label %114

114:                                              ; preds = %110, %106
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  store %struct.TYPE_22__* %115, %struct.TYPE_22__** %15, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %291, %114
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @numportals, align 4
  %119 = mul nsw i32 %118, 2
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %294

121:                                              ; preds = %116
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** @portals, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i64 %124
  store %struct.TYPE_20__* %125, %struct.TYPE_20__** %11, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %291

131:                                              ; preds = %121
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = ashr i32 %135, 3
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %4, align 4
  %141 = and i32 %140, 7
  %142 = shl i32 1, %141
  %143 = and i32 %139, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %131
  br label %291

146:                                              ; preds = %131
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = ashr i32 %150, 3
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %4, align 4
  %156 = and i32 %155, 7
  %157 = shl i32 1, %156
  %158 = and i32 %154, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %146
  br label %291

161:                                              ; preds = %146
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %237, %161
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %240

166:                                              ; preds = %162
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call float @DotProduct(i32 %169, i32 %174)
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  %180 = load float, float* %179, align 8
  %181 = fsub float %175, %180
  store float %181, float* %9, align 4
  %182 = load float, float* %9, align 4
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 2
  %185 = load float, float* %184, align 8
  %186 = fneg float %185
  %187 = load float, float* @ON_EPSILON, align 4
  %188 = fadd float %186, %187
  %189 = fcmp olt float %182, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %166
  br label %240

191:                                              ; preds = %166
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 3
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %193, align 8
  store %struct.TYPE_19__* %194, %struct.TYPE_19__** %18, align 8
  store i32 0, i32* %6, align 4
  br label %195

195:                                              ; preds = %226, %191
  %196 = load i32, i32* %6, align 4
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %229

201:                                              ; preds = %195
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call float @DotProduct(i32 %208, i32 %213)
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = load float, float* %218, align 8
  %220 = fsub float %214, %219
  store float %220, float* %9, align 4
  %221 = load float, float* %9, align 4
  %222 = load float, float* @ON_EPSILON, align 4
  %223 = fcmp ogt float %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %201
  br label %229

225:                                              ; preds = %201
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %6, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %6, align 4
  br label %195

229:                                              ; preds = %224, %195
  %230 = load i32, i32* %6, align 4
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp sge i32 %230, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %229
  br label %240

236:                                              ; preds = %229
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %5, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %5, align 4
  br label %162

240:                                              ; preds = %235, %190, %162
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* %7, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  br label %291

245:                                              ; preds = %240
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 3
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %247, align 8
  %249 = call i32 @memcpy(%struct.TYPE_19__* %19, %struct.TYPE_19__* %248, i32 16)
  store i32 0, i32* %5, align 4
  br label %250

250:                                              ; preds = %268, %245
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* %7, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %271

254:                                              ; preds = %250
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i64 %256
  %258 = call %struct.TYPE_19__* @PassageChopWinding(%struct.TYPE_19__* %19, %struct.TYPE_19__* %20, %struct.TYPE_21__* %257)
  store %struct.TYPE_19__* %258, %struct.TYPE_19__** %21, align 8
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %260 = icmp eq %struct.TYPE_19__* %259, %20
  br i1 %260, label %261, label %263

261:                                              ; preds = %254
  %262 = call i32 @memcpy(%struct.TYPE_19__* %19, %struct.TYPE_19__* %20, i32 16)
  br label %263

263:                                              ; preds = %261, %254
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %265 = icmp eq %struct.TYPE_19__* %264, null
  br i1 %265, label %266, label %267

266:                                              ; preds = %263
  br label %271

267:                                              ; preds = %263
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %5, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %5, align 4
  br label %250

271:                                              ; preds = %266, %250
  %272 = load i32, i32* %5, align 4
  %273 = load i32, i32* %7, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %271
  br label %291

276:                                              ; preds = %271
  %277 = load i32, i32* %4, align 4
  %278 = and i32 %277, 7
  %279 = shl i32 1, %278
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %4, align 4
  %284 = ashr i32 %283, 3
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %287, %279
  store i32 %288, i32* %286, align 4
  %289 = load i32, i32* %8, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %8, align 4
  br label %291

291:                                              ; preds = %276, %275, %244, %160, %145, %130
  %292 = load i32, i32* %4, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %4, align 4
  br label %116

294:                                              ; preds = %116
  br label %295

295:                                              ; preds = %294, %65
  %296 = load i32, i32* %3, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %3, align 4
  br label %47

298:                                              ; preds = %47
  store i32 0, i32* %22, align 4
  br label %299

299:                                              ; preds = %298, %37
  %300 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %300)
  %301 = load i32, i32* %22, align 4
  switch i32 %301, label %303 [
    i32 0, label %302
    i32 1, label %302
  ]

302:                                              ; preds = %299, %299
  ret void

303:                                              ; preds = %299
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @malloc(i64) #2

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i64) #2

declare dso_local i32 @AddSeperators(%struct.TYPE_19__*, %struct.TYPE_19__*, i32, %struct.TYPE_21__*, i32) #2

declare dso_local float @DotProduct(i32, i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #2

declare dso_local %struct.TYPE_19__* @PassageChopWinding(%struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_21__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
