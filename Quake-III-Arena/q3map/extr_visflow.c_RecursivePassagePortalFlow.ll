; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_visflow.c_RecursivePassagePortalFlow.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_visflow.c_RecursivePassagePortalFlow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_21__** }
%struct.TYPE_21__ = type { i64, i64, float, %struct.TYPE_19__, i8*, i32, i64, i64, i64, %struct.TYPE_25__* }
%struct.TYPE_19__ = type { float, i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { %struct.TYPE_20__*, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i32*, float, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { float, i32 }
%struct.TYPE_23__ = type { i32*, i32*, i32*, %struct.TYPE_23__*, i8*, i8*, %struct.TYPE_24__**, %struct.TYPE_21__*, %struct.TYPE_19__, i64, %struct.TYPE_26__* }

@leafs = common dso_local global %struct.TYPE_26__* null, align 8
@portals = common dso_local global %struct.TYPE_21__* null, align 8
@portalbytes = common dso_local global i32 0, align 4
@stat_done = common dso_local global i64 0, align 8
@portallongs = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RecursivePassagePortalFlow(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_24__, align 4
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %6, align 8
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** @leafs, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i64 %28
  store %struct.TYPE_26__* %29, %struct.TYPE_26__** %9, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 3
  store %struct.TYPE_23__* %7, %struct.TYPE_23__** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 3
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %32, align 8
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 10
  store %struct.TYPE_26__* %33, %struct.TYPE_26__** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 7
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %35, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 9
  store i64 %39, i64* %40, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = bitcast i32* %45 to i64*
  store i64* %46, i64** %17, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 9
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %48, align 8
  store %struct.TYPE_25__* %49, %struct.TYPE_25__** %11, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  store %struct.TYPE_25__* %50, %struct.TYPE_25__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %390, %3
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %394

57:                                               ; preds = %51
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %60, i64 %62
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  store %struct.TYPE_21__* %64, %struct.TYPE_21__** %8, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %390

70:                                               ; preds = %57
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %72, align 8
  store %struct.TYPE_25__* %73, %struct.TYPE_25__** %12, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** @portals, align 8
  %76 = ptrtoint %struct.TYPE_21__* %74 to i64
  %77 = ptrtoint %struct.TYPE_21__* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 80
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %22, align 4
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %22, align 4
  %85 = ashr i32 %84, 3
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %22, align 4
  %90 = and i32 %89, 7
  %91 = shl i32 1, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %70
  br label %390

95:                                               ; preds = %70
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = bitcast i32* %98 to i64*
  store i64* %99, i64** %18, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i64*
  store i64* %103, i64** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = bitcast i32* %105 to i64*
  store i64* %106, i64** %16, align 8
  %107 = load i64*, i64** %16, align 8
  %108 = load i64*, i64** %18, align 8
  %109 = load i32, i32* @portalbytes, align 4
  %110 = call i32 @memcpy(i64* %107, i64* %108, i32 %109)
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @stat_done, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %95
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i64*
  store i64* %120, i64** %20, align 8
  br label %126

121:                                              ; preds = %95
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i64*
  store i64* %125, i64** %20, align 8
  br label %126

126:                                              ; preds = %121, %116
  store i64 0, i64* %21, align 8
  store i32 0, i32* %14, align 4
  br label %127

127:                                              ; preds = %165, %126
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @portallongs, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %168

131:                                              ; preds = %127
  %132 = load i64*, i64** %16, align 8
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %157

135:                                              ; preds = %131
  %136 = load i64*, i64** %19, align 8
  %137 = getelementptr inbounds i64, i64* %136, i32 1
  store i64* %137, i64** %19, align 8
  %138 = load i64, i64* %136, align 8
  %139 = load i64*, i64** %20, align 8
  %140 = getelementptr inbounds i64, i64* %139, i32 1
  store i64* %140, i64** %20, align 8
  %141 = load i64, i64* %139, align 8
  %142 = and i64 %138, %141
  %143 = load i64*, i64** %16, align 8
  %144 = load i64, i64* %143, align 8
  %145 = and i64 %144, %142
  store i64 %145, i64* %143, align 8
  %146 = load i64*, i64** %16, align 8
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** %17, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = xor i64 %152, -1
  %154 = and i64 %147, %153
  %155 = load i64, i64* %21, align 8
  %156 = or i64 %155, %154
  store i64 %156, i64* %21, align 8
  br label %162

157:                                              ; preds = %131
  %158 = load i64*, i64** %19, align 8
  %159 = getelementptr inbounds i64, i64* %158, i32 1
  store i64* %159, i64** %19, align 8
  %160 = load i64*, i64** %20, align 8
  %161 = getelementptr inbounds i64, i64* %160, i32 1
  store i64* %161, i64** %20, align 8
  br label %162

162:                                              ; preds = %157, %135
  %163 = load i64*, i64** %16, align 8
  %164 = getelementptr inbounds i64, i64* %163, i32 1
  store i64* %164, i64** %16, align 8
  br label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %14, align 4
  br label %127

168:                                              ; preds = %127
  %169 = load i64, i64* %21, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %188, label %171

171:                                              ; preds = %168
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %22, align 4
  %178 = ashr i32 %177, 3
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %22, align 4
  %183 = and i32 %182, 7
  %184 = shl i32 1, %183
  %185 = and i32 %181, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %171
  br label %390

188:                                              ; preds = %171, %168
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 3
  %192 = bitcast %struct.TYPE_19__* %189 to i8*
  %193 = bitcast %struct.TYPE_19__* %191 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %192, i8* align 4 %193, i64 8, i1 false)
  %194 = load i32, i32* @vec3_origin, align 4
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @VectorSubtract(i32 %194, i32 %198, i32 %200)
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 0
  %205 = load float, float* %204, align 4
  %206 = fneg float %205
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  store float %206, float* %207, align 4
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 7
  store %struct.TYPE_21__* %208, %struct.TYPE_21__** %209, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 3
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %210, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  store i32 1, i32* %213, align 4
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  store i32 1, i32* %216, align 4
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 2
  store i32 1, i32* %219, align 4
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call float @DotProduct(i32 %222, i32 %227)
  store float %228, float* %23, align 4
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 0
  %233 = load float, float* %232, align 8
  %234 = load float, float* %23, align 4
  %235 = fsub float %234, %233
  store float %235, float* %23, align 4
  %236 = load float, float* %23, align 4
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 2
  %239 = load float, float* %238, align 8
  %240 = fneg float %239
  %241 = fcmp olt float %236, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %188
  br label %390

243:                                              ; preds = %188
  %244 = load float, float* %23, align 4
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 2
  %247 = load float, float* %246, align 8
  %248 = fcmp ogt float %244, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %243
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 4
  %252 = load i8*, i8** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 4
  store i8* %252, i8** %253, align 8
  br label %268

254:                                              ; preds = %243
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 4
  %257 = load i8*, i8** %256, align 8
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 0
  %261 = call i8* @VisChopWinding(i8* %257, %struct.TYPE_23__* %7, %struct.TYPE_24__* %260)
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 4
  store i8* %261, i8** %262, align 8
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 4
  %264 = load i8*, i8** %263, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %267, label %266

266:                                              ; preds = %254
  br label %390

267:                                              ; preds = %254
  br label %268

268:                                              ; preds = %267, %249
  br label %269

269:                                              ; preds = %268
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call float @DotProduct(i32 %274, i32 %278)
  store float %279, float* %24, align 4
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 0
  %283 = load float, float* %282, align 4
  %284 = load float, float* %24, align 4
  %285 = fsub float %284, %283
  store float %285, float* %24, align 4
  %286 = load float, float* %24, align 4
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 1
  %291 = load float, float* %290, align 8
  %292 = fcmp ogt float %286, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %269
  br label %390

294:                                              ; preds = %269
  %295 = load float, float* %24, align 4
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 1
  %300 = load float, float* %299, align 8
  %301 = fneg float %300
  %302 = fcmp olt float %295, %301
  br i1 %302, label %303, label %308

303:                                              ; preds = %294
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 5
  %306 = load i8*, i8** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 5
  store i8* %306, i8** %307, align 8
  br label %319

308:                                              ; preds = %294
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 5
  %311 = load i8*, i8** %310, align 8
  %312 = call i8* @VisChopWinding(i8* %311, %struct.TYPE_23__* %7, %struct.TYPE_24__* %10)
  %313 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 5
  store i8* %312, i8** %313, align 8
  %314 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 5
  %315 = load i8*, i8** %314, align 8
  %316 = icmp ne i8* %315, null
  br i1 %316, label %318, label %317

317:                                              ; preds = %308
  br label %390

318:                                              ; preds = %308
  br label %319

319:                                              ; preds = %318, %303
  br label %320

320:                                              ; preds = %319
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %321, i32 0, i32 4
  %323 = load i8*, i8** %322, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %342, label %325

325:                                              ; preds = %320
  %326 = load i32, i32* %22, align 4
  %327 = and i32 %326, 7
  %328 = shl i32 1, %327
  %329 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %329, i32 0, i32 0
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 0
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %22, align 4
  %335 = ashr i32 %334, 3
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %333, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = or i32 %338, %328
  store i32 %339, i32* %337, align 4
  %340 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %341 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  call void @RecursivePassagePortalFlow(%struct.TYPE_21__* %340, %struct.TYPE_22__* %341, %struct.TYPE_23__* %7)
  br label %390

342:                                              ; preds = %320
  %343 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 5
  %344 = load i8*, i8** %343, align 8
  %345 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %345, i32 0, i32 4
  %347 = load i8*, i8** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 4
  %349 = load i8*, i8** %348, align 8
  %350 = load i32, i32* @qfalse, align 4
  %351 = call i8* @ClipToSeperators(i8* %344, i8* %347, i8* %349, i32 %350, %struct.TYPE_23__* %7)
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 4
  store i8* %351, i8** %352, align 8
  %353 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 4
  %354 = load i8*, i8** %353, align 8
  %355 = icmp ne i8* %354, null
  br i1 %355, label %357, label %356

356:                                              ; preds = %342
  br label %390

357:                                              ; preds = %342
  %358 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %358, i32 0, i32 4
  %360 = load i8*, i8** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 5
  %362 = load i8*, i8** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 4
  %364 = load i8*, i8** %363, align 8
  %365 = load i32, i32* @qtrue, align 4
  %366 = call i8* @ClipToSeperators(i8* %360, i8* %362, i8* %364, i32 %365, %struct.TYPE_23__* %7)
  %367 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 4
  store i8* %366, i8** %367, align 8
  %368 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 4
  %369 = load i8*, i8** %368, align 8
  %370 = icmp ne i8* %369, null
  br i1 %370, label %372, label %371

371:                                              ; preds = %357
  br label %390

372:                                              ; preds = %357
  %373 = load i32, i32* %22, align 4
  %374 = and i32 %373, 7
  %375 = shl i32 1, %374
  %376 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %376, i32 0, i32 0
  %378 = load %struct.TYPE_20__*, %struct.TYPE_20__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %378, i32 0, i32 0
  %380 = load i32*, i32** %379, align 8
  %381 = load i32, i32* %22, align 4
  %382 = ashr i32 %381, 3
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %380, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = or i32 %385, %375
  store i32 %386, i32* %384, align 4
  %387 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %388 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  call void @RecursivePassagePortalFlow(%struct.TYPE_21__* %387, %struct.TYPE_22__* %388, %struct.TYPE_23__* %7)
  %389 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 3
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %389, align 8
  br label %390

390:                                              ; preds = %372, %371, %356, %325, %317, %293, %266, %242, %187, %94, %69
  %391 = load i32, i32* %13, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %13, align 4
  %393 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  store %struct.TYPE_25__* %393, %struct.TYPE_25__** %11, align 8
  br label %51

394:                                              ; preds = %51
  ret void
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i8* @VisChopWinding(i8*, %struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i8* @ClipToSeperators(i8*, i8*, i8*, i32, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
