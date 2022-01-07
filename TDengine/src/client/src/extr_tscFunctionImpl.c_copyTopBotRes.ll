; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_copyTopBotRes.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_copyTopBotRes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_13__, i32*, i32, i64, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, double }

@SECONDARY_STAGE_MERGE = common dso_local global i64 0, align 8
@QUERY_ASC_FORWARD_STEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"top/bottom function not support data type:%d\00", align 1
@POINTER_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32)* @copyTopBotRes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copyTopBotRes(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8**, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = call %struct.TYPE_16__* @GET_RES_INFO(%struct.TYPE_17__* %29)
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %5, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %6, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %35, align 8
  store %struct.TYPE_14__** %36, %struct.TYPE_14__*** %7, align 8
  store i32 0, i32* %8, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SECONDARY_STAGE_MERGE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i32, i32* @QUERY_ASC_FORWARD_STEP, align 4
  store i32 %43, i32* %8, align 4
  br label %49

44:                                               ; preds = %2
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @GET_FORWARD_DIRECTION_FACTOR(i32 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %44, %42
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = call %struct.TYPE_16__* @GET_RES_INFO(%struct.TYPE_17__* %50)
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %4, align 4
  switch i32 %54, label %218 [
    i32 130, label %55
    i32 133, label %82
    i32 132, label %109
    i32 131, label %136
    i32 129, label %164
    i32 128, label %191
  ]

55:                                               ; preds = %49
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %74, %55
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %65, i64 %67
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %10, align 8
  br label %60

81:                                               ; preds = %60
  br label %223

82:                                               ; preds = %49
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  store i32* %86, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %101, %82
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %92, i64 %94
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %12, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %91
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32*, i32** %12, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %12, align 8
  br label %87

108:                                              ; preds = %87
  br label %223

109:                                              ; preds = %49
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to double*
  store double* %113, double** %14, align 8
  store i32 0, i32* %15, align 4
  br label %114

114:                                              ; preds = %128, %109
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %114
  %119 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %119, i64 %121
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load double, double* %125, align 8
  %127 = load double*, double** %14, align 8
  store double %126, double* %127, align 8
  br label %128

128:                                              ; preds = %118
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load double*, double** %14, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds double, double* %132, i64 %133
  store double* %134, double** %14, align 8
  br label %114

135:                                              ; preds = %114
  br label %223

136:                                              ; preds = %49
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to float*
  store float* %140, float** %16, align 8
  store i32 0, i32* %17, align 4
  br label %141

141:                                              ; preds = %156, %136
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %163

145:                                              ; preds = %141
  %146 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %146, i64 %148
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load double, double* %152, align 8
  %154 = fptrunc double %153 to float
  %155 = load float*, float** %16, align 8
  store float %154, float* %155, align 4
  br label %156

156:                                              ; preds = %145
  %157 = load i32, i32* %17, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load float*, float** %16, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds float, float* %160, i64 %161
  store float* %162, float** %16, align 8
  br label %141

163:                                              ; preds = %141
  br label %223

164:                                              ; preds = %49
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to i32*
  store i32* %168, i32** %18, align 8
  store i32 0, i32* %19, align 4
  br label %169

169:                                              ; preds = %183, %164
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %169
  %174 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %175 = load i32, i32* %19, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %174, i64 %176
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32*, i32** %18, align 8
  store i32 %181, i32* %182, align 4
  br label %183

183:                                              ; preds = %173
  %184 = load i32, i32* %19, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %19, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load i32*, i32** %18, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32* %189, i32** %18, align 8
  br label %169

190:                                              ; preds = %169
  br label %223

191:                                              ; preds = %49
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = inttoptr i64 %194 to i32*
  store i32* %195, i32** %20, align 8
  store i32 0, i32* %21, align 4
  br label %196

196:                                              ; preds = %210, %191
  %197 = load i32, i32* %21, align 4
  %198 = load i32, i32* %9, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %217

200:                                              ; preds = %196
  %201 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %202 = load i32, i32* %21, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %201, i64 %203
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32*, i32** %20, align 8
  store i32 %208, i32* %209, align 4
  br label %210

210:                                              ; preds = %200
  %211 = load i32, i32* %21, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %21, align 4
  %213 = load i32, i32* %8, align 4
  %214 = load i32*, i32** %20, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32* %216, i32** %20, align 8
  br label %196

217:                                              ; preds = %196
  br label %223

218:                                              ; preds = %49
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @pError(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %221)
  br label %362

223:                                              ; preds = %217, %190, %163, %135, %108, %81
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  store i32* %226, i32** %22, align 8
  store i32 0, i32* %23, align 4
  br label %227

227:                                              ; preds = %240, %223
  %228 = load i32, i32* %23, align 4
  %229 = load i32, i32* %9, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %247

231:                                              ; preds = %227
  %232 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %233 = load i32, i32* %23, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %232, i64 %234
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %22, align 8
  store i32 %238, i32* %239, align 4
  br label %240

240:                                              ; preds = %231
  %241 = load i32, i32* %23, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %23, align 4
  %243 = load i32, i32* %8, align 4
  %244 = load i32*, i32** %22, align 8
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  store i32* %246, i32** %22, align 8
  br label %227

247:                                              ; preds = %227
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @POINTER_BYTES, align 4
  %253 = call i8** @calloc(i32 %251, i32 %252)
  store i8** %253, i8*** %24, align 8
  store i32 0, i32* %25, align 4
  br label %254

254:                                              ; preds = %276, %247
  %255 = load i32, i32* %25, align 4
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp slt i32 %255, %259
  br i1 %260, label %261, label %279

261:                                              ; preds = %254
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %264, align 8
  %266 = load i32, i32* %25, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %265, i64 %267
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = load i8**, i8*** %24, align 8
  %273 = load i32, i32* %25, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %272, i64 %274
  store i8* %271, i8** %275, align 8
  br label %276

276:                                              ; preds = %261
  %277 = load i32, i32* %25, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %25, align 4
  br label %254

279:                                              ; preds = %254
  store i32 0, i32* %26, align 4
  br label %280

280:                                              ; preds = %352, %279
  %281 = load i32, i32* %26, align 4
  %282 = load i32, i32* %9, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %359

284:                                              ; preds = %280
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %285

285:                                              ; preds = %348, %284
  %286 = load i32, i32* %28, align 4
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = icmp slt i32 %286, %290
  br i1 %291, label %292, label %351

292:                                              ; preds = %285
  %293 = load i8**, i8*** %24, align 8
  %294 = load i32, i32* %28, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8*, i8** %293, i64 %295
  %297 = load i8*, i8** %296, align 8
  %298 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %299 = load i32, i32* %26, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %298, i64 %300
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* %27, align 4
  %306 = add nsw i32 %304, %305
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %309, align 8
  %311 = load i32, i32* %28, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %310, i64 %312
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = sext i32 %316 to i64
  %318 = call i32 @memcpy(i8* %297, i32 %306, i64 %317)
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %321, align 8
  %323 = load i32, i32* %28, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %322, i64 %324
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* %27, align 4
  %330 = add nsw i32 %329, %328
  store i32 %330, i32* %27, align 4
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %333, align 8
  %335 = load i32, i32* %28, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %334, i64 %336
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = load i8**, i8*** %24, align 8
  %342 = load i32, i32* %28, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8*, i8** %341, i64 %343
  %345 = load i8*, i8** %344, align 8
  %346 = sext i32 %340 to i64
  %347 = getelementptr inbounds i8, i8* %345, i64 %346
  store i8* %347, i8** %344, align 8
  br label %348

348:                                              ; preds = %292
  %349 = load i32, i32* %28, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %28, align 4
  br label %285

351:                                              ; preds = %285
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %26, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %26, align 4
  %355 = load i32, i32* %8, align 4
  %356 = load i32*, i32** %22, align 8
  %357 = sext i32 %355 to i64
  %358 = getelementptr inbounds i32, i32* %356, i64 %357
  store i32* %358, i32** %22, align 8
  br label %280

359:                                              ; preds = %280
  %360 = load i8**, i8*** %24, align 8
  %361 = call i32 @tfree(i8** %360)
  br label %362

362:                                              ; preds = %359, %218
  ret void
}

declare dso_local %struct.TYPE_16__* @GET_RES_INFO(%struct.TYPE_17__*) #1

declare dso_local i32 @GET_FORWARD_DIRECTION_FACTOR(i32) #1

declare dso_local i32 @pError(i8*, i32) #1

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @tfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
