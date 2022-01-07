; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_ChopWinding.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_ChopWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, float** }
%struct.TYPE_8__ = type { i32*, float }

@SIDE_FRONT = common dso_local global i64 0, align 8
@SIDE_BACK = common dso_local global i64 0, align 8
@SIDE_ON = common dso_local global i32 0, align 4
@MAX_POINTS_ON_FIXED_WINDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"WARNING: VL_ChopWinding -> MAX_POINTS_ON_FIXED_WINDING overflowed\0A\00", align 1
@SIDE_CROSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VL_ChopWinding(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca float, align 4
  %8 = alloca [128 x float], align 16
  %9 = alloca [128 x i32], align 16
  %10 = alloca [3 x i32], align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca %struct.TYPE_7__, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store float %2, float* %7, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %21, align 4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %84, %3
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %87

28:                                               ; preds = %22
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load float**, float*** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float*, float** %31, i64 %33
  %35 = load float*, float** %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call float @DotProduct(float* %35, i32* %38)
  store float %39, float* %11, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load float, float* %41, align 8
  %43 = load float, float* %11, align 4
  %44 = fsub float %43, %42
  store float %44, float* %11, align 4
  %45 = load float, float* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [128 x float], [128 x float]* %8, i64 0, i64 %47
  store float %45, float* %48, align 4
  %49 = load float, float* %11, align 4
  %50 = load float, float* %7, align 4
  %51 = fcmp ogt float %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %28
  %53 = load i64, i64* @SIDE_FRONT, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %56
  store i32 %54, i32* %57, align 4
  br label %75

58:                                               ; preds = %28
  %59 = load float, float* %11, align 4
  %60 = load float, float* %7, align 4
  %61 = fneg float %60
  %62 = fcmp olt float %59, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i64, i64* @SIDE_BACK, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %67
  store i32 %65, i32* %68, align 4
  br label %74

69:                                               ; preds = %58
  %70 = load i32, i32* @SIDE_ON, align 4
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %72
  store i32 %70, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %63
  br label %75

75:                                               ; preds = %74, %52
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %22

87:                                               ; preds = %22
  %88 = load i64, i64* @SIDE_BACK, align 8
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %87
  %93 = load i64, i64* @SIDE_FRONT, align 8
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @SIDE_ON, align 4
  store i32 %98, i32* %4, align 4
  br label %341

99:                                               ; preds = %92
  %100 = load i64, i64* @SIDE_FRONT, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %4, align 4
  br label %341

102:                                              ; preds = %87
  %103 = load i64, i64* @SIDE_FRONT, align 8
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i64, i64* @SIDE_BACK, align 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %4, align 4
  br label %341

110:                                              ; preds = %102
  %111 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %112 = load i32, i32* %111, align 16
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %114
  store i32 %112, i32* %115, align 4
  %116 = getelementptr inbounds [128 x float], [128 x float]* %8, i64 0, i64 0
  %117 = load float, float* %116, align 16
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [128 x float], [128 x float]* %8, i64 0, i64 %119
  store float %117, float* %120, align 4
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %18, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 8
  store i32 0, i32* %12, align 4
  br label %123

123:                                              ; preds = %334, %110
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %337

129:                                              ; preds = %123
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load float**, float*** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float*, float** %132, i64 %134
  %136 = load float*, float** %135, align 8
  store float* %136, float** %14, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @MAX_POINTS_ON_FIXED_WINDING, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %129
  %143 = call i32 @_printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %144 = load i64, i64* @SIDE_FRONT, align 8
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %4, align 4
  br label %341

146:                                              ; preds = %129
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @SIDE_ON, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %169

153:                                              ; preds = %146
  %154 = load float*, float** %14, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load float**, float*** %156, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float*, float** %157, i64 %161
  %163 = load float*, float** %162, align 8
  %164 = call i32 @VectorCopy(float* %154, float* %163)
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  br label %334

169:                                              ; preds = %146
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* @SIDE_FRONT, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %193

177:                                              ; preds = %169
  %178 = load float*, float** %14, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load float**, float*** %180, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float*, float** %181, i64 %185
  %187 = load float*, float** %186, align 8
  %188 = call i32 @VectorCopy(float* %178, float* %187)
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %177, %169
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @SIDE_ON, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %212, label %201

201:                                              ; preds = %193
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %206, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %201, %193
  br label %334

213:                                              ; preds = %201
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @MAX_POINTS_ON_FIXED_WINDING, align 4
  %218 = icmp sge i32 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %213
  %220 = call i32 @_printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %221 = load i64, i64* @SIDE_FRONT, align 8
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %4, align 4
  br label %341

223:                                              ; preds = %213
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 1
  %226 = load float**, float*** %225, align 8
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, 1
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = srem i32 %228, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float*, float** %226, i64 %233
  %235 = load float*, float** %234, align 8
  store float* %235, float** %15, align 8
  %236 = load i32, i32* %12, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [128 x float], [128 x float]* %8, i64 0, i64 %237
  %239 = load float, float* %238, align 4
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [128 x float], [128 x float]* %8, i64 0, i64 %241
  %243 = load float, float* %242, align 4
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [128 x float], [128 x float]* %8, i64 0, i64 %246
  %248 = load float, float* %247, align 4
  %249 = fsub float %243, %248
  %250 = fdiv float %239, %249
  store float %250, float* %11, align 4
  store i32 0, i32* %13, align 4
  br label %251

251:                                              ; preds = %315, %223
  %252 = load i32, i32* %13, align 4
  %253 = icmp slt i32 %252, 3
  br i1 %253, label %254, label %318

254:                                              ; preds = %251
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = icmp eq i32 %261, 1
  br i1 %262, label %263, label %271

263:                                              ; preds = %254
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 1
  %266 = load float, float* %265, align 8
  %267 = load float*, float** %16, align 8
  %268 = load i32, i32* %13, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds float, float* %267, i64 %269
  store float %266, float* %270, align 4
  br label %314

271:                                              ; preds = %254
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %13, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = icmp eq i32 %278, -1
  br i1 %279, label %280, label %289

280:                                              ; preds = %271
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 1
  %283 = load float, float* %282, align 8
  %284 = fneg float %283
  %285 = load float*, float** %16, align 8
  %286 = load i32, i32* %13, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %285, i64 %287
  store float %284, float* %288, align 4
  br label %313

289:                                              ; preds = %271
  %290 = load float*, float** %14, align 8
  %291 = load i32, i32* %13, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds float, float* %290, i64 %292
  %294 = load float, float* %293, align 4
  %295 = load float, float* %11, align 4
  %296 = load float*, float** %15, align 8
  %297 = load i32, i32* %13, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float, float* %296, i64 %298
  %300 = load float, float* %299, align 4
  %301 = load float*, float** %14, align 8
  %302 = load i32, i32* %13, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %301, i64 %303
  %305 = load float, float* %304, align 4
  %306 = fsub float %300, %305
  %307 = fmul float %295, %306
  %308 = fadd float %294, %307
  %309 = load float*, float** %16, align 8
  %310 = load i32, i32* %13, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds float, float* %309, i64 %311
  store float %308, float* %312, align 4
  br label %313

313:                                              ; preds = %289, %280
  br label %314

314:                                              ; preds = %313, %263
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %13, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %13, align 4
  br label %251

318:                                              ; preds = %251
  %319 = load float*, float** %16, align 8
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 1
  %322 = load float**, float*** %321, align 8
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds float*, float** %322, i64 %326
  %328 = load float*, float** %327, align 8
  %329 = call i32 @VectorCopy(float* %319, float* %328)
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %331, align 8
  br label %334

334:                                              ; preds = %318, %212, %153
  %335 = load i32, i32* %12, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %12, align 4
  br label %123

337:                                              ; preds = %123
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %339 = call i32 @memcpy(%struct.TYPE_7__* %338, %struct.TYPE_7__* %17, i32 16)
  %340 = load i32, i32* @SIDE_CROSS, align 4
  store i32 %340, i32* %4, align 4
  br label %341

341:                                              ; preds = %337, %219, %142, %107, %99, %97
  %342 = load i32, i32* %4, align 4
  ret i32 %342
}

declare dso_local float @DotProduct(float*, i32*) #1

declare dso_local i32 @_printf(i8*) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
