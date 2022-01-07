; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_soundv.c_VS_SplitWinding.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_soundv.c_VS_SplitWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, float** }
%struct.TYPE_9__ = type { i32*, float }

@SIDE_FRONT = common dso_local global i64 0, align 8
@SIDE_BACK = common dso_local global i64 0, align 8
@SIDE_ON = common dso_local global i32 0, align 4
@MAX_POINTS_ON_FIXED_WINDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"WARNING: VS_SplitWinding -> MAX_POINTS_ON_FIXED_WINDING overflowed\0A\00", align 1
@SIDE_CROSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VS_SplitWinding(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, %struct.TYPE_9__* %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca float, align 4
  %10 = alloca [128 x float], align 16
  %11 = alloca [128 x i32], align 16
  %12 = alloca [3 x i32], align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca %struct.TYPE_8__, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store float %3, float* %9, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  store i32 0, i32* %23, align 4
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %86, %4
  %25 = load i32, i32* %14, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %89

30:                                               ; preds = %24
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load float**, float*** %32, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float*, float** %33, i64 %35
  %37 = load float*, float** %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call float @DotProduct(float* %37, i32* %40)
  store float %41, float* %13, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load float, float* %43, align 8
  %45 = load float, float* %13, align 4
  %46 = fsub float %45, %44
  store float %46, float* %13, align 4
  %47 = load float, float* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [128 x float], [128 x float]* %10, i64 0, i64 %49
  store float %47, float* %50, align 4
  %51 = load float, float* %13, align 4
  %52 = load float, float* %9, align 4
  %53 = fcmp ogt float %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %30
  %55 = load i64, i64* @SIDE_FRONT, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 %58
  store i32 %56, i32* %59, align 4
  br label %77

60:                                               ; preds = %30
  %61 = load float, float* %13, align 4
  %62 = load float, float* %9, align 4
  %63 = fneg float %62
  %64 = fcmp olt float %61, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i64, i64* @SIDE_BACK, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 %69
  store i32 %67, i32* %70, align 4
  br label %76

71:                                               ; preds = %60
  %72 = load i32, i32* @SIDE_ON, align 4
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 %74
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %65
  br label %77

77:                                               ; preds = %76, %54
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %24

89:                                               ; preds = %24
  %90 = load i64, i64* @SIDE_BACK, align 8
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %89
  %95 = load i64, i64* @SIDE_FRONT, align 8
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @SIDE_ON, align 4
  store i32 %100, i32* %5, align 4
  br label %419

101:                                              ; preds = %94
  %102 = load i64, i64* @SIDE_FRONT, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %5, align 4
  br label %419

104:                                              ; preds = %89
  %105 = load i64, i64* @SIDE_FRONT, align 8
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = load i64, i64* @SIDE_BACK, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %5, align 4
  br label %419

112:                                              ; preds = %104
  %113 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 0
  %114 = load i32, i32* %113, align 16
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 %116
  store i32 %114, i32* %117, align 4
  %118 = getelementptr inbounds [128 x float], [128 x float]* %10, i64 0, i64 0
  %119 = load float, float* %118, align 16
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [128 x float], [128 x float]* %10, i64 0, i64 %121
  store float %119, float* %122, align 4
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %20, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i32 0, i32* %124, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store i32 0, i32* %126, align 8
  store i32 0, i32* %14, align 4
  br label %127

127:                                              ; preds = %412, %112
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %415

133:                                              ; preds = %127
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load float**, float*** %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float*, float** %136, i64 %138
  %140 = load float*, float** %139, align 8
  store float* %140, float** %16, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @MAX_POINTS_ON_FIXED_WINDING, align 4
  %145 = icmp sge i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %133
  %147 = call i32 @_printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %148 = load i64, i64* @SIDE_FRONT, align 8
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %5, align 4
  br label %419

150:                                              ; preds = %133
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @MAX_POINTS_ON_FIXED_WINDING, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = call i32 @_printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %158 = load i64, i64* @SIDE_FRONT, align 8
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %5, align 4
  br label %419

160:                                              ; preds = %150
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @SIDE_ON, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %198

167:                                              ; preds = %160
  %168 = load float*, float** %16, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  %171 = load float**, float*** %170, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float*, float** %171, i64 %175
  %177 = load float*, float** %176, align 8
  %178 = call i32 @VectorCopy(float* %168, float* %177)
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 8
  %183 = load float*, float** %16, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  %186 = load float**, float*** %185, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float*, float** %186, i64 %190
  %192 = load float*, float** %191, align 8
  %193 = call i32 @VectorCopy(float* %183, float* %192)
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 8
  br label %412

198:                                              ; preds = %160
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = load i64, i64* @SIDE_FRONT, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %222

206:                                              ; preds = %198
  %207 = load float*, float** %16, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = load float**, float*** %209, align 8
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float*, float** %210, i64 %214
  %216 = load float*, float** %215, align 8
  %217 = call i32 @VectorCopy(float* %207, float* %216)
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 8
  br label %222

222:                                              ; preds = %206, %198
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = load i64, i64* @SIDE_BACK, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %246

230:                                              ; preds = %222
  %231 = load float*, float** %16, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 1
  %234 = load float**, float*** %233, align 8
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float*, float** %234, i64 %238
  %240 = load float*, float** %239, align 8
  %241 = call i32 @VectorCopy(float* %231, float* %240)
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %230, %222
  %247 = load i32, i32* %14, align 4
  %248 = add nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @SIDE_ON, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %265, label %254

254:                                              ; preds = %246
  %255 = load i32, i32* %14, align 4
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %14, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %259, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %254, %246
  br label %412

266:                                              ; preds = %254
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @MAX_POINTS_ON_FIXED_WINDING, align 4
  %271 = icmp sge i32 %269, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %266
  %273 = call i32 @_printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %274 = load i64, i64* @SIDE_FRONT, align 8
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %5, align 4
  br label %419

276:                                              ; preds = %266
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @MAX_POINTS_ON_FIXED_WINDING, align 4
  %281 = icmp sge i32 %279, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %276
  %283 = call i32 @_printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %284 = load i64, i64* @SIDE_FRONT, align 8
  %285 = trunc i64 %284 to i32
  store i32 %285, i32* %5, align 4
  br label %419

286:                                              ; preds = %276
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 1
  %289 = load float**, float*** %288, align 8
  %290 = load i32, i32* %14, align 4
  %291 = add nsw i32 %290, 1
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = srem i32 %291, %294
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds float*, float** %289, i64 %296
  %298 = load float*, float** %297, align 8
  store float* %298, float** %17, align 8
  %299 = load i32, i32* %14, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [128 x float], [128 x float]* %10, i64 0, i64 %300
  %302 = load float, float* %301, align 4
  %303 = load i32, i32* %14, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [128 x float], [128 x float]* %10, i64 0, i64 %304
  %306 = load float, float* %305, align 4
  %307 = load i32, i32* %14, align 4
  %308 = add nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [128 x float], [128 x float]* %10, i64 0, i64 %309
  %311 = load float, float* %310, align 4
  %312 = fsub float %306, %311
  %313 = fdiv float %302, %312
  store float %313, float* %13, align 4
  store i32 0, i32* %15, align 4
  br label %314

314:                                              ; preds = %378, %286
  %315 = load i32, i32* %15, align 4
  %316 = icmp slt i32 %315, 3
  br i1 %316, label %317, label %381

317:                                              ; preds = %314
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 0
  %320 = load i32*, i32** %319, align 8
  %321 = load i32, i32* %15, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = icmp eq i32 %324, 1
  br i1 %325, label %326, label %334

326:                                              ; preds = %317
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 1
  %329 = load float, float* %328, align 8
  %330 = load float*, float** %18, align 8
  %331 = load i32, i32* %15, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds float, float* %330, i64 %332
  store float %329, float* %333, align 4
  br label %377

334:                                              ; preds = %317
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 0
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %15, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = icmp eq i32 %341, -1
  br i1 %342, label %343, label %352

343:                                              ; preds = %334
  %344 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i32 0, i32 1
  %346 = load float, float* %345, align 8
  %347 = fneg float %346
  %348 = load float*, float** %18, align 8
  %349 = load i32, i32* %15, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds float, float* %348, i64 %350
  store float %347, float* %351, align 4
  br label %376

352:                                              ; preds = %334
  %353 = load float*, float** %16, align 8
  %354 = load i32, i32* %15, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds float, float* %353, i64 %355
  %357 = load float, float* %356, align 4
  %358 = load float, float* %13, align 4
  %359 = load float*, float** %17, align 8
  %360 = load i32, i32* %15, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds float, float* %359, i64 %361
  %363 = load float, float* %362, align 4
  %364 = load float*, float** %16, align 8
  %365 = load i32, i32* %15, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds float, float* %364, i64 %366
  %368 = load float, float* %367, align 4
  %369 = fsub float %363, %368
  %370 = fmul float %358, %369
  %371 = fadd float %357, %370
  %372 = load float*, float** %18, align 8
  %373 = load i32, i32* %15, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds float, float* %372, i64 %374
  store float %371, float* %375, align 4
  br label %376

376:                                              ; preds = %352, %343
  br label %377

377:                                              ; preds = %376, %326
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %15, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %15, align 4
  br label %314

381:                                              ; preds = %314
  %382 = load float*, float** %18, align 8
  %383 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 1
  %385 = load float**, float*** %384, align 8
  %386 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds float*, float** %385, i64 %389
  %391 = load float*, float** %390, align 8
  %392 = call i32 @VectorCopy(float* %382, float* %391)
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %394, align 8
  %397 = load float*, float** %18, align 8
  %398 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 1
  %400 = load float**, float*** %399, align 8
  %401 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds float*, float** %400, i64 %404
  %406 = load float*, float** %405, align 8
  %407 = call i32 @VectorCopy(float* %397, float* %406)
  %408 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %409, align 8
  br label %412

412:                                              ; preds = %381, %265, %167
  %413 = load i32, i32* %14, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %14, align 4
  br label %127

415:                                              ; preds = %127
  %416 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %417 = call i32 @memcpy(%struct.TYPE_8__* %416, %struct.TYPE_8__* %19, i32 16)
  %418 = load i32, i32* @SIDE_CROSS, align 4
  store i32 %418, i32* %5, align 4
  br label %419

419:                                              ; preds = %415, %282, %272, %156, %146, %109, %101, %99
  %420 = load i32, i32* %5, align 4
  ret i32 %420
}

declare dso_local float @DotProduct(float*, i32*) #1

declare dso_local i32 @_printf(i8*) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
