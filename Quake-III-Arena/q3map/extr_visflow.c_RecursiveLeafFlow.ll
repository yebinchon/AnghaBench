; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_visflow.c_RecursiveLeafFlow.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_visflow.c_RecursiveLeafFlow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { i64, float, i32, %struct.TYPE_18__, i8*, i32, i64, i64, i64 }
%struct.TYPE_18__ = type { float, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__*, %struct.TYPE_16__, i32 }
%struct.TYPE_17__ = type { i32*, float, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { float, i32 }
%struct.TYPE_21__ = type { i32*, i32*, i32*, %struct.TYPE_21__*, i8*, i8*, %struct.TYPE_22__**, %struct.TYPE_19__*, %struct.TYPE_18__, i64, %struct.TYPE_23__* }

@leafs = common dso_local global %struct.TYPE_23__* null, align 8
@portals = common dso_local global %struct.TYPE_19__* null, align 8
@stat_done = common dso_local global i64 0, align 8
@portallongs = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RecursiveLeafFlow(i32 %0, %struct.TYPE_20__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_22__, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** @leafs, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i64 %28
  store %struct.TYPE_23__* %29, %struct.TYPE_23__** %10, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 3
  store %struct.TYPE_21__* %7, %struct.TYPE_21__** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 3
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %32, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 10
  store %struct.TYPE_23__* %33, %struct.TYPE_23__** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 7
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %35, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 9
  store i64 %39, i64* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = bitcast i32* %42 to i64*
  store i64* %43, i64** %15, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = bitcast i32* %48 to i64*
  store i64* %49, i64** %17, align 8
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %375, %3
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %378

56:                                               ; preds = %50
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %59, i64 %61
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  store %struct.TYPE_19__* %63, %struct.TYPE_19__** %8, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %375

69:                                               ; preds = %56
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** @portals, align 8
  %72 = ptrtoint %struct.TYPE_19__* %70 to i64
  %73 = ptrtoint %struct.TYPE_19__* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 64
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %19, align 4
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %19, align 4
  %81 = ashr i32 %80, 3
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %19, align 4
  %86 = and i32 %85, 7
  %87 = shl i32 1, %86
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %69
  br label %375

91:                                               ; preds = %69
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @stat_done, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 7
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i64*
  store i64* %101, i64** %14, align 8
  br label %107

102:                                              ; preds = %91
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i64*
  store i64* %106, i64** %14, align 8
  br label %107

107:                                              ; preds = %102, %97
  store i64 0, i64* %18, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = bitcast i32* %110 to i64*
  store i64* %111, i64** %16, align 8
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %146, %107
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @portallongs, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %149

116:                                              ; preds = %112
  %117 = load i64*, i64** %16, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load i64*, i64** %14, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = and i64 %121, %126
  %128 = load i64*, i64** %15, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  store i64 %127, i64* %131, align 8
  %132 = load i64*, i64** %15, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** %17, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = xor i64 %141, -1
  %143 = and i64 %136, %142
  %144 = load i64, i64* %18, align 8
  %145 = or i64 %144, %143
  store i64 %145, i64* %18, align 8
  br label %146

146:                                              ; preds = %116
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %112

149:                                              ; preds = %112
  %150 = load i64, i64* %18, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %169, label %152

152:                                              ; preds = %149
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %19, align 4
  %159 = ashr i32 %158, 3
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %19, align 4
  %164 = and i32 %163, 7
  %165 = shl i32 1, %164
  %166 = and i32 %162, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %152
  br label %375

169:                                              ; preds = %152, %149
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 8
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 3
  %173 = bitcast %struct.TYPE_18__* %170 to i8*
  %174 = bitcast %struct.TYPE_18__* %172 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %173, i8* align 8 %174, i64 8, i1 false)
  %175 = load i32, i32* @vec3_origin, align 4
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @VectorSubtract(i32 %175, i32 %179, i32 %181)
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  %186 = load float, float* %185, align 8
  %187 = fneg float %186
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store float %187, float* %188, align 4
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 7
  store %struct.TYPE_19__* %189, %struct.TYPE_19__** %190, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 3
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %191, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  store i32 1, i32* %194, align 4
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  store i32 1, i32* %197, align 4
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  store i32 1, i32* %200, align 4
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call float @DotProduct(i32 %203, i32 %208)
  store float %209, float* %20, align 4
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  %214 = load float, float* %213, align 8
  %215 = load float, float* %20, align 4
  %216 = fsub float %215, %214
  store float %216, float* %20, align 4
  %217 = load float, float* %20, align 4
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 1
  %220 = load float, float* %219, align 8
  %221 = fneg float %220
  %222 = fcmp olt float %217, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %169
  br label %375

224:                                              ; preds = %169
  %225 = load float, float* %20, align 4
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 1
  %228 = load float, float* %227, align 8
  %229 = fcmp ogt float %225, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %224
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 4
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 4
  store i8* %233, i8** %234, align 8
  br label %249

235:                                              ; preds = %224
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 4
  %238 = load i8*, i8** %237, align 8
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = call i8* @VisChopWinding(i8* %238, %struct.TYPE_21__* %7, %struct.TYPE_22__* %241)
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 4
  store i8* %242, i8** %243, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 4
  %245 = load i8*, i8** %244, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %248, label %247

247:                                              ; preds = %235
  br label %375

248:                                              ; preds = %235
  br label %249

249:                                              ; preds = %248, %230
  br label %250

250:                                              ; preds = %249
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call float @DotProduct(i32 %255, i32 %259)
  store float %260, float* %21, align 4
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 0
  %264 = load float, float* %263, align 8
  %265 = load float, float* %21, align 4
  %266 = fsub float %265, %264
  store float %266, float* %21, align 4
  %267 = load float, float* %21, align 4
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 1
  %272 = load float, float* %271, align 8
  %273 = fcmp ogt float %267, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %250
  br label %375

275:                                              ; preds = %250
  %276 = load float, float* %21, align 4
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 1
  %281 = load float, float* %280, align 8
  %282 = fneg float %281
  %283 = fcmp olt float %276, %282
  br i1 %283, label %284, label %289

284:                                              ; preds = %275
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 5
  %287 = load i8*, i8** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  store i8* %287, i8** %288, align 8
  br label %300

289:                                              ; preds = %275
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 5
  %292 = load i8*, i8** %291, align 8
  %293 = call i8* @VisChopWinding(i8* %292, %struct.TYPE_21__* %7, %struct.TYPE_22__* %9)
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  store i8* %293, i8** %294, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %296 = load i8*, i8** %295, align 8
  %297 = icmp ne i8* %296, null
  br i1 %297, label %299, label %298

298:                                              ; preds = %289
  br label %375

299:                                              ; preds = %289
  br label %300

300:                                              ; preds = %299, %284
  br label %301

301:                                              ; preds = %300
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 4
  %304 = load i8*, i8** %303, align 8
  %305 = icmp ne i8* %304, null
  br i1 %305, label %325, label %306

306:                                              ; preds = %301
  %307 = load i32, i32* %19, align 4
  %308 = and i32 %307, 7
  %309 = shl i32 1, %308
  %310 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %19, align 4
  %316 = ashr i32 %315, 3
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %314, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = or i32 %319, %309
  store i32 %320, i32* %318, align 4
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  call void @RecursiveLeafFlow(i32 %323, %struct.TYPE_20__* %324, %struct.TYPE_21__* %7)
  br label %375

325:                                              ; preds = %301
  %326 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %327 = load i8*, i8** %326, align 8
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 4
  %330 = load i8*, i8** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 4
  %332 = load i8*, i8** %331, align 8
  %333 = load i32, i32* @qfalse, align 4
  %334 = call i8* @ClipToSeperators(i8* %327, i8* %330, i8* %332, i32 %333, %struct.TYPE_21__* %7)
  %335 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 4
  store i8* %334, i8** %335, align 8
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 4
  %337 = load i8*, i8** %336, align 8
  %338 = icmp ne i8* %337, null
  br i1 %338, label %340, label %339

339:                                              ; preds = %325
  br label %375

340:                                              ; preds = %325
  %341 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %341, i32 0, i32 4
  %343 = load i8*, i8** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %345 = load i8*, i8** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 4
  %347 = load i8*, i8** %346, align 8
  %348 = load i32, i32* @qtrue, align 4
  %349 = call i8* @ClipToSeperators(i8* %343, i8* %345, i8* %347, i32 %348, %struct.TYPE_21__* %7)
  %350 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 4
  store i8* %349, i8** %350, align 8
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 4
  %352 = load i8*, i8** %351, align 8
  %353 = icmp ne i8* %352, null
  br i1 %353, label %355, label %354

354:                                              ; preds = %340
  br label %375

355:                                              ; preds = %340
  %356 = load i32, i32* %19, align 4
  %357 = and i32 %356, 7
  %358 = shl i32 1, %357
  %359 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i32 0, i32 0
  %361 = load %struct.TYPE_17__*, %struct.TYPE_17__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 0
  %363 = load i32*, i32** %362, align 8
  %364 = load i32, i32* %19, align 4
  %365 = ashr i32 %364, 3
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %363, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = or i32 %368, %358
  store i32 %369, i32* %367, align 4
  %370 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  call void @RecursiveLeafFlow(i32 %372, %struct.TYPE_20__* %373, %struct.TYPE_21__* %7)
  %374 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 3
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %374, align 8
  br label %375

375:                                              ; preds = %355, %354, %339, %306, %298, %274, %247, %223, %168, %90, %68
  %376 = load i32, i32* %11, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %11, align 4
  br label %50

378:                                              ; preds = %50
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #2

declare dso_local float @DotProduct(i32, i32) #2

declare dso_local i8* @VisChopWinding(i8*, %struct.TYPE_21__*, %struct.TYPE_22__*) #2

declare dso_local i8* @ClipToSeperators(i8*, i8*, i8*, i32, %struct.TYPE_21__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
