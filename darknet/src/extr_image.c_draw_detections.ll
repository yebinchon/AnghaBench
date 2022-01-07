; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_draw_detections.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_draw_detections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { float*, i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { double, i32 }

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s: %.0f%%\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_detections(double %0, i32 %1, %struct.TYPE_21__* %2, i32 %3, float %4, i8** %5, %struct.TYPE_20__** %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_20__, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_20__**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [4096 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca [3 x float], align 4
  %26 = alloca %struct.TYPE_22__, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_20__, align 8
  %32 = alloca %struct.TYPE_20__, align 8
  %33 = alloca %struct.TYPE_20__, align 8
  %34 = alloca %struct.TYPE_20__, align 8
  %35 = bitcast %struct.TYPE_20__* %9 to { double, i32 }*
  %36 = getelementptr inbounds { double, i32 }, { double, i32 }* %35, i32 0, i32 0
  store double %0, double* %36, align 8
  %37 = getelementptr inbounds { double, i32 }, { double, i32 }* %35, i32 0, i32 1
  store i32 %1, i32* %37, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %10, align 8
  store i32 %3, i32* %11, align 4
  store float %4, float* %12, align 4
  store i8** %5, i8*** %13, align 8
  store %struct.TYPE_20__** %6, %struct.TYPE_20__*** %14, align 8
  store i32 %7, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %38

38:                                               ; preds = %358, %8
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %361

42:                                               ; preds = %38
  %43 = bitcast [4096 x i8]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %43, i8 0, i64 4096, i1 false)
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %44

44:                                               ; preds = %103, %42
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %106

48:                                               ; preds = %44
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load float*, float** %53, align 8
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %54, i64 %56
  %58 = load float, float* %57, align 4
  %59 = load float, float* %12, align 4
  %60 = fcmp ogt float %58, %59
  br i1 %60, label %61, label %102

61:                                               ; preds = %48
  %62 = load i32, i32* %19, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = getelementptr inbounds [4096 x i8], [4096 x i8]* %18, i64 0, i64 0
  %66 = load i8**, i8*** %13, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strcat(i8* %65, i8* %70)
  %72 = load i32, i32* %17, align 4
  store i32 %72, i32* %19, align 4
  br label %83

73:                                               ; preds = %61
  %74 = getelementptr inbounds [4096 x i8], [4096 x i8]* %18, i64 0, i64 0
  %75 = call i32 @strcat(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %76 = getelementptr inbounds [4096 x i8], [4096 x i8]* %18, i64 0, i64 0
  %77 = load i8**, i8*** %13, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strcat(i8* %76, i8* %81)
  br label %83

83:                                               ; preds = %73, %64
  %84 = load i8**, i8*** %13, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load float*, float** %93, align 8
  %95 = load i32, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  %98 = load float, float* %97, align 4
  %99 = fmul float %98, 1.000000e+02
  %100 = fptosi float %99 to i32
  %101 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %88, i32 %100)
  br label %102

102:                                              ; preds = %83, %48
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %17, align 4
  br label %44

106:                                              ; preds = %44
  %107 = load i32, i32* %19, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %357

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %111 = load double, double* %110, align 8
  %112 = fmul double %111, 6.000000e-03
  %113 = fptosi double %112 to i32
  store i32 %113, i32* %20, align 4
  %114 = load i32, i32* %19, align 4
  %115 = mul nsw i32 %114, 123457
  %116 = load i32, i32* %15, align 4
  %117 = srem i32 %115, %116
  store i32 %117, i32* %21, align 4
  %118 = load i32, i32* %21, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call float @get_color(i32 2, i32 %118, i32 %119)
  store float %120, float* %22, align 4
  %121 = load i32, i32* %21, align 4
  %122 = load i32, i32* %15, align 4
  %123 = call float @get_color(i32 1, i32 %121, i32 %122)
  store float %123, float* %23, align 4
  %124 = load i32, i32* %21, align 4
  %125 = load i32, i32* %15, align 4
  %126 = call float @get_color(i32 0, i32 %124, i32 %125)
  store float %126, float* %24, align 4
  %127 = load float, float* %22, align 4
  %128 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 0
  store float %127, float* %128, align 4
  %129 = load float, float* %23, align 4
  %130 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 1
  store float %129, float* %130, align 4
  %131 = load float, float* %24, align 4
  %132 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 2
  store float %131, float* %132, align 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 2
  %138 = bitcast %struct.TYPE_22__* %26 to i8*
  %139 = bitcast %struct.TYPE_22__* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %138, i8* align 8 %139, i64 16, i1 false)
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sitofp i32 %141 to double
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sitofp i32 %144 to double
  %146 = fdiv double %145, 2.000000e+00
  %147 = fsub double %142, %146
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = sitofp i32 %149 to double
  %151 = fmul double %147, %150
  %152 = fptosi double %151 to i32
  store i32 %152, i32* %27, align 4
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sitofp i32 %154 to double
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sitofp i32 %157 to double
  %159 = fdiv double %158, 2.000000e+00
  %160 = fadd double %155, %159
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = sitofp i32 %162 to double
  %164 = fmul double %160, %163
  %165 = fptosi double %164 to i32
  store i32 %165, i32* %28, align 4
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = sitofp i32 %167 to double
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = sitofp i32 %170 to double
  %172 = fdiv double %171, 2.000000e+00
  %173 = fsub double %168, %172
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %175 = load double, double* %174, align 8
  %176 = fmul double %173, %175
  %177 = fptosi double %176 to i32
  store i32 %177, i32* %29, align 4
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = sitofp i32 %179 to double
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = sitofp i32 %182 to double
  %184 = fdiv double %183, 2.000000e+00
  %185 = fadd double %180, %184
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %187 = load double, double* %186, align 8
  %188 = fmul double %185, %187
  %189 = fptosi double %188 to i32
  store i32 %189, i32* %30, align 4
  %190 = load i32, i32* %27, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %109
  store i32 0, i32* %27, align 4
  br label %193

193:                                              ; preds = %192, %109
  %194 = load i32, i32* %28, align 4
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %196, 1
  %198 = icmp sgt i32 %194, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = sub nsw i32 %201, 1
  store i32 %202, i32* %28, align 4
  br label %203

203:                                              ; preds = %199, %193
  %204 = load i32, i32* %29, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  store i32 0, i32* %29, align 4
  br label %207

207:                                              ; preds = %206, %203
  %208 = load i32, i32* %30, align 4
  %209 = sitofp i32 %208 to double
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %211 = load double, double* %210, align 8
  %212 = fsub double %211, 1.000000e+00
  %213 = fcmp ogt double %209, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %207
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %216 = load double, double* %215, align 8
  %217 = fsub double %216, 1.000000e+00
  %218 = fptosi double %217 to i32
  store i32 %218, i32* %30, align 4
  br label %219

219:                                              ; preds = %214, %207
  %220 = load i32, i32* %27, align 4
  %221 = load i32, i32* %29, align 4
  %222 = load i32, i32* %28, align 4
  %223 = load i32, i32* %30, align 4
  %224 = load i32, i32* %20, align 4
  %225 = load float, float* %22, align 4
  %226 = load float, float* %23, align 4
  %227 = load float, float* %24, align 4
  %228 = bitcast %struct.TYPE_20__* %9 to { double, i32 }*
  %229 = getelementptr inbounds { double, i32 }, { double, i32 }* %228, i32 0, i32 0
  %230 = load double, double* %229, align 8
  %231 = getelementptr inbounds { double, i32 }, { double, i32 }* %228, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @draw_box_width(double %230, i32 %232, i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, float %225, float %226, float %227)
  %234 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %14, align 8
  %235 = icmp ne %struct.TYPE_20__** %234, null
  br i1 %235, label %236, label %270

236:                                              ; preds = %219
  %237 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %14, align 8
  %238 = getelementptr inbounds [4096 x i8], [4096 x i8]* %18, i64 0, i64 0
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %240 = load double, double* %239, align 8
  %241 = fmul double %240, 3.000000e-02
  %242 = call { double, i32 } @get_label(%struct.TYPE_20__** %237, i8* %238, double %241)
  %243 = bitcast %struct.TYPE_20__* %31 to { double, i32 }*
  %244 = getelementptr inbounds { double, i32 }, { double, i32 }* %243, i32 0, i32 0
  %245 = extractvalue { double, i32 } %242, 0
  store double %245, double* %244, align 8
  %246 = getelementptr inbounds { double, i32 }, { double, i32 }* %243, i32 0, i32 1
  %247 = extractvalue { double, i32 } %242, 1
  store i32 %247, i32* %246, align 8
  %248 = load i32, i32* %29, align 4
  %249 = load i32, i32* %20, align 4
  %250 = add nsw i32 %248, %249
  %251 = load i32, i32* %27, align 4
  %252 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 0
  %253 = bitcast %struct.TYPE_20__* %9 to { double, i32 }*
  %254 = getelementptr inbounds { double, i32 }, { double, i32 }* %253, i32 0, i32 0
  %255 = load double, double* %254, align 8
  %256 = getelementptr inbounds { double, i32 }, { double, i32 }* %253, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = bitcast %struct.TYPE_20__* %31 to { double, i32 }*
  %259 = getelementptr inbounds { double, i32 }, { double, i32 }* %258, i32 0, i32 0
  %260 = load double, double* %259, align 8
  %261 = getelementptr inbounds { double, i32 }, { double, i32 }* %258, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @draw_label(double %255, i32 %257, i32 %250, i32 %251, double %260, i32 %262, float* %252)
  %264 = bitcast %struct.TYPE_20__* %31 to { double, i32 }*
  %265 = getelementptr inbounds { double, i32 }, { double, i32 }* %264, i32 0, i32 0
  %266 = load double, double* %265, align 8
  %267 = getelementptr inbounds { double, i32 }, { double, i32 }* %264, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @free_image(double %266, i32 %268)
  br label %270

270:                                              ; preds = %236, %219
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %272 = load i32, i32* %16, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %356

278:                                              ; preds = %270
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %280 = load i32, i32* %16, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = call { double, i32 } @float_to_image(i32 14, i32 14, i32 1, i64 %284)
  %286 = bitcast %struct.TYPE_20__* %32 to { double, i32 }*
  %287 = getelementptr inbounds { double, i32 }, { double, i32 }* %286, i32 0, i32 0
  %288 = extractvalue { double, i32 } %285, 0
  store double %288, double* %287, align 8
  %289 = getelementptr inbounds { double, i32 }, { double, i32 }* %286, i32 0, i32 1
  %290 = extractvalue { double, i32 } %285, 1
  store i32 %290, i32* %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = mul nsw i32 %292, %294
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = sitofp i32 %297 to double
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %300 = load double, double* %299, align 8
  %301 = fmul double %298, %300
  %302 = fptosi double %301 to i32
  %303 = bitcast %struct.TYPE_20__* %32 to { double, i32 }*
  %304 = getelementptr inbounds { double, i32 }, { double, i32 }* %303, i32 0, i32 0
  %305 = load double, double* %304, align 8
  %306 = getelementptr inbounds { double, i32 }, { double, i32 }* %303, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = call { double, i32 } @resize_image(double %305, i32 %307, i32 %295, i32 %302)
  %309 = bitcast %struct.TYPE_20__* %33 to { double, i32 }*
  %310 = getelementptr inbounds { double, i32 }, { double, i32 }* %309, i32 0, i32 0
  %311 = extractvalue { double, i32 } %308, 0
  store double %311, double* %310, align 8
  %312 = getelementptr inbounds { double, i32 }, { double, i32 }* %309, i32 0, i32 1
  %313 = extractvalue { double, i32 } %308, 1
  store i32 %313, i32* %312, align 8
  %314 = bitcast %struct.TYPE_20__* %33 to { double, i32 }*
  %315 = getelementptr inbounds { double, i32 }, { double, i32 }* %314, i32 0, i32 0
  %316 = load double, double* %315, align 8
  %317 = getelementptr inbounds { double, i32 }, { double, i32 }* %314, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = call { double, i32 } @threshold_image(double %316, i32 %318, double 5.000000e-01)
  %320 = bitcast %struct.TYPE_20__* %34 to { double, i32 }*
  %321 = getelementptr inbounds { double, i32 }, { double, i32 }* %320, i32 0, i32 0
  %322 = extractvalue { double, i32 } %319, 0
  store double %322, double* %321, align 8
  %323 = getelementptr inbounds { double, i32 }, { double, i32 }* %320, i32 0, i32 1
  %324 = extractvalue { double, i32 } %319, 1
  store i32 %324, i32* %323, align 8
  %325 = load i32, i32* %27, align 4
  %326 = load i32, i32* %29, align 4
  %327 = bitcast %struct.TYPE_20__* %34 to { double, i32 }*
  %328 = getelementptr inbounds { double, i32 }, { double, i32 }* %327, i32 0, i32 0
  %329 = load double, double* %328, align 8
  %330 = getelementptr inbounds { double, i32 }, { double, i32 }* %327, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = bitcast %struct.TYPE_20__* %9 to { double, i32 }*
  %333 = getelementptr inbounds { double, i32 }, { double, i32 }* %332, i32 0, i32 0
  %334 = load double, double* %333, align 8
  %335 = getelementptr inbounds { double, i32 }, { double, i32 }* %332, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @embed_image(double %329, i32 %331, double %334, i32 %336, i32 %325, i32 %326)
  %338 = bitcast %struct.TYPE_20__* %32 to { double, i32 }*
  %339 = getelementptr inbounds { double, i32 }, { double, i32 }* %338, i32 0, i32 0
  %340 = load double, double* %339, align 8
  %341 = getelementptr inbounds { double, i32 }, { double, i32 }* %338, i32 0, i32 1
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @free_image(double %340, i32 %342)
  %344 = bitcast %struct.TYPE_20__* %33 to { double, i32 }*
  %345 = getelementptr inbounds { double, i32 }, { double, i32 }* %344, i32 0, i32 0
  %346 = load double, double* %345, align 8
  %347 = getelementptr inbounds { double, i32 }, { double, i32 }* %344, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @free_image(double %346, i32 %348)
  %350 = bitcast %struct.TYPE_20__* %34 to { double, i32 }*
  %351 = getelementptr inbounds { double, i32 }, { double, i32 }* %350, i32 0, i32 0
  %352 = load double, double* %351, align 8
  %353 = getelementptr inbounds { double, i32 }, { double, i32 }* %350, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @free_image(double %352, i32 %354)
  br label %356

356:                                              ; preds = %278, %270
  br label %357

357:                                              ; preds = %356, %106
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %16, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %16, align 4
  br label %38

361:                                              ; preds = %38
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @printf(i8*, i8*, i32) #2

declare dso_local float @get_color(i32, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @draw_box_width(double, i32, i32, i32, i32, i32, i32, float, float, float) #2

declare dso_local { double, i32 } @get_label(%struct.TYPE_20__**, i8*, double) #2

declare dso_local i32 @draw_label(double, i32, i32, i32, double, i32, float*) #2

declare dso_local i32 @free_image(double, i32) #2

declare dso_local { double, i32 } @float_to_image(i32, i32, i32, i64) #2

declare dso_local { double, i32 } @resize_image(double, i32, i32, i32) #2

declare dso_local { double, i32 } @threshold_image(double, i32, double) #2

declare dso_local i32 @embed_image(double, i32, double, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
