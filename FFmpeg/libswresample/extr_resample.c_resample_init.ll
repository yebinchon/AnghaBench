; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_resample.c_resample_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_resample.c_resample_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, double, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@INT_MAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unsupported sample format\0A\00", align 1
@INT32_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Filter length too large\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_9__*, i32, i32, i32, i32, i32, double, i32, i32, double, double, i32, i32)* @resample_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @resample_init(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, double %6, i32 %7, i32 %8, double %9, double %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store double %6, double* %21, align 8
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store double %9, double* %24, align 8
  store double %10, double* %25, align 8
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  %35 = load double, double* %21, align 8
  %36 = fcmp une double %35, 0.000000e+00
  br i1 %36, label %37, label %39

37:                                               ; preds = %13
  %38 = load double, double* %21, align 8
  br label %40

39:                                               ; preds = %13
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi double [ %38, %37 ], [ 0x3FEF0A3D70A3D70A, %39 ]
  store double %41, double* %28, align 8
  %42 = load i32, i32* %16, align 4
  %43 = sitofp i32 %42 to double
  %44 = load double, double* %28, align 8
  %45 = fmul double %43, %44
  %46 = load i32, i32* %17, align 4
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %45, %47
  %49 = fptosi double %48 to i32
  %50 = call double @FFMIN(i32 %49, double 1.000000e+00)
  store double %50, double* %29, align 8
  %51 = load i32, i32* %19, align 4
  %52 = shl i32 1, %51
  store i32 %52, i32* %30, align 4
  %53 = load i32, i32* %30, align 4
  store i32 %53, i32* %31, align 4
  %54 = load i32, i32* %18, align 4
  %55 = sitofp i32 %54 to double
  %56 = load double, double* %29, align 8
  %57 = fdiv double %55, %56
  %58 = fptosi double %57 to i32
  %59 = call i64 @ceil(i32 %58)
  %60 = trunc i64 %59 to i32
  %61 = call i32 @FFMAX(i32 %60, i32 1)
  store i32 %61, i32* %32, align 4
  %62 = load i32, i32* %32, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %68

64:                                               ; preds = %40
  %65 = load i32, i32* %32, align 4
  %66 = call i8* @FFALIGN(i32 %65, i32 2)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %32, align 4
  br label %68

68:                                               ; preds = %64, %40
  %69 = load i32, i32* %27, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* @INT_MAX, align 4
  %75 = call i32 @av_reduce(i32* %33, i32* %34, i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* %33, align 4
  %77 = load i32, i32* %30, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load i32, i32* %33, align 4
  %81 = load i32, i32* %30, align 4
  %82 = load i32, i32* %33, align 4
  %83 = sdiv i32 %81, %82
  %84 = mul nsw i32 %80, %83
  store i32 %84, i32* %31, align 4
  %85 = load i32, i32* %33, align 4
  store i32 %85, i32* %30, align 4
  br label %86

86:                                               ; preds = %79, %71
  br label %87

87:                                               ; preds = %86, %68
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %89 = icmp ne %struct.TYPE_9__* %88, null
  br i1 %89, label %90, label %132

90:                                               ; preds = %87
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %30, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %132, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %20, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %132, label %102

102:                                              ; preds = %96
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load double, double* %104, align 8
  %106 = load double, double* %29, align 8
  %107 = fcmp une double %105, %106
  br i1 %107, label %132, label %108

108:                                              ; preds = %102
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %32, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %132, label %114

114:                                              ; preds = %108
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %22, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %132, label %120

120:                                              ; preds = %114
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %23, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 6
  %129 = load double, double* %128, align 8
  %130 = load double, double* %24, align 8
  %131 = fcmp une double %129, %130
  br i1 %131, label %132, label %304

132:                                              ; preds = %126, %120, %114, %108, %102, %96, %90, %87
  %133 = call i32 @resample_free(%struct.TYPE_9__** %15)
  %134 = call %struct.TYPE_9__* @av_mallocz(i32 104)
  store %struct.TYPE_9__* %134, %struct.TYPE_9__** %15, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %136 = icmp ne %struct.TYPE_9__* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %132
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %14, align 8
  br label %387

138:                                              ; preds = %132
  %139 = load i32, i32* %22, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @av_get_bytes_per_sample(i32 %144)
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 7
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  switch i32 %150, label %160 [
    i32 129, label %151
    i32 128, label %154
    i32 130, label %157
    i32 131, label %157
  ]

151:                                              ; preds = %138
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 8
  store i32 15, i32* %153, align 4
  br label %164

154:                                              ; preds = %138
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 8
  store i32 30, i32* %156, align 4
  br label %164

157:                                              ; preds = %138, %138
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 8
  store i32 0, i32* %159, align 4
  br label %164

160:                                              ; preds = %138
  %161 = load i32, i32* @AV_LOG_ERROR, align 4
  %162 = call i32 @av_log(i32* null, i32 %161, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %163 = call i32 @av_assert0(i32 0)
  br label %164

164:                                              ; preds = %160, %157, %154, %151
  %165 = load i32, i32* %18, align 4
  %166 = sitofp i32 %165 to double
  %167 = load double, double* %29, align 8
  %168 = fdiv double %166, %167
  %169 = load i32, i32* @INT32_MAX, align 4
  %170 = sdiv i32 %169, 256
  %171 = sitofp i32 %170 to double
  %172 = fcmp ogt double %168, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %164
  %174 = load i32, i32* @AV_LOG_ERROR, align 4
  %175 = call i32 @av_log(i32* null, i32 %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %381

176:                                              ; preds = %164
  %177 = load i32, i32* %30, align 4
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* %20, align 4
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load double, double* %29, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  store double %183, double* %185, align 8
  %186 = load i32, i32* %32, align 4
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 8
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = call i8* @FFALIGN(i32 %191, i32 8)
  %193 = ptrtoint i8* %192 to i32
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 9
  store i32 %193, i32* %195, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 9
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %30, align 4
  %200 = add nsw i32 %199, 1
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 8
  %204 = mul nsw i32 %200, %203
  %205 = call i64 @av_calloc(i32 %198, i32 %204)
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 17
  store i64 %205, i64* %207, align 8
  %208 = load i32, i32* %23, align 4
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 5
  store i32 %208, i32* %210, align 8
  %211 = load double, double* %24, align 8
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 6
  store double %211, double* %213, align 8
  %214 = load i32, i32* %31, align 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 10
  store i32 %214, i32* %216, align 4
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 17
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %176
  br label %381

222:                                              ; preds = %176
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 17
  %226 = load i64, i64* %225, align 8
  %227 = inttoptr i64 %226 to i8*
  %228 = load double, double* %29, align 8
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 9
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %30, align 4
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 8
  %238 = load i32, i32* %237, align 4
  %239 = shl i32 1, %238
  %240 = load i32, i32* %23, align 4
  %241 = load double, double* %24, align 8
  %242 = call i64 @build_filter(%struct.TYPE_9__* %223, i8* %227, double %228, i32 %231, i32 %234, i32 %235, i32 %239, i32 %240, double %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %222
  br label %381

245:                                              ; preds = %222
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 17
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 9
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %30, align 4
  %253 = mul nsw i32 %251, %252
  %254 = add nsw i32 %253, 1
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 7
  %257 = load i32, i32* %256, align 8
  %258 = mul nsw i32 %254, %257
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %248, %259
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 17
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 9
  %266 = load i32, i32* %265, align 8
  %267 = sub nsw i32 %266, 1
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 7
  %270 = load i32, i32* %269, align 8
  %271 = mul nsw i32 %267, %270
  %272 = call i32 @memcpy(i64 %260, i64 %263, i32 %271)
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 17
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 9
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* %30, align 4
  %280 = mul nsw i32 %278, %279
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 7
  %283 = load i32, i32* %282, align 8
  %284 = mul nsw i32 %280, %283
  %285 = sext i32 %284 to i64
  %286 = add nsw i64 %275, %285
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 17
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 9
  %292 = load i32, i32* %291, align 8
  %293 = sub nsw i32 %292, 1
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 7
  %296 = load i32, i32* %295, align 8
  %297 = mul nsw i32 %293, %296
  %298 = sext i32 %297 to i64
  %299 = add nsw i64 %289, %298
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @memcpy(i64 %286, i64 %299, i32 %302)
  br label %304

304:                                              ; preds = %245, %126
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 19
  store i64 0, i64* %306, align 8
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 11
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 12
  %311 = load i32, i32* %16, align 4
  %312 = load i32, i32* %17, align 4
  %313 = load i32, i32* %30, align 4
  %314 = mul nsw i32 %312, %313
  %315 = load i32, i32* @INT32_MAX, align 4
  %316 = sdiv i32 %315, 2
  %317 = call i32 @av_reduce(i32* %308, i32* %310, i32 %311, i32 %314, i32 %316)
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %320, label %319

319:                                              ; preds = %304
  br label %381

320:                                              ; preds = %304
  br label %321

321:                                              ; preds = %333, %320
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 12
  %324 = load i32, i32* %323, align 4
  %325 = icmp slt i32 %324, 1048576
  br i1 %325, label %326, label %331

326:                                              ; preds = %321
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 11
  %329 = load i32, i32* %328, align 8
  %330 = icmp slt i32 %329, 1048576
  br label %331

331:                                              ; preds = %326, %321
  %332 = phi i1 [ false, %321 ], [ %330, %326 ]
  br i1 %332, label %333, label %342

333:                                              ; preds = %331
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 12
  %336 = load i32, i32* %335, align 4
  %337 = mul nsw i32 %336, 2
  store i32 %337, i32* %335, align 4
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 11
  %340 = load i32, i32* %339, align 8
  %341 = mul nsw i32 %340, 2
  store i32 %341, i32* %339, align 8
  br label %321

342:                                              ; preds = %331
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 12
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 13
  store i32 %345, i32* %347, align 8
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 12
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 11
  %353 = load i32, i32* %352, align 8
  %354 = sdiv i32 %350, %353
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 14
  store i32 %354, i32* %356, align 4
  %357 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 12
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 11
  %362 = load i32, i32* %361, align 8
  %363 = srem i32 %359, %362
  %364 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 15
  store i32 %363, i32* %365, align 8
  %366 = load i32, i32* %30, align 4
  %367 = sub nsw i32 0, %366
  %368 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 8
  %371 = sub nsw i32 %370, 1
  %372 = sdiv i32 %371, 2
  %373 = mul nsw i32 %367, %372
  %374 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 16
  store i32 %373, i32* %375, align 4
  %376 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 18
  store i64 0, i64* %377, align 8
  %378 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %379 = call i32 @swri_resample_dsp_init(%struct.TYPE_9__* %378)
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %380, %struct.TYPE_9__** %14, align 8
  br label %387

381:                                              ; preds = %319, %244, %221, %173
  %382 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 17
  %384 = call i32 @av_freep(i64* %383)
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %386 = call i32 @av_free(%struct.TYPE_9__* %385)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %14, align 8
  br label %387

387:                                              ; preds = %381, %342, %137
  %388 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  ret %struct.TYPE_9__* %388
}

declare dso_local double @FFMIN(i32, double) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i64 @ceil(i32) #1

declare dso_local i8* @FFALIGN(i32, i32) #1

declare dso_local i32 @av_reduce(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @resample_free(%struct.TYPE_9__**) #1

declare dso_local %struct.TYPE_9__* @av_mallocz(i32) #1

declare dso_local i32 @av_get_bytes_per_sample(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i64 @av_calloc(i32, i32) #1

declare dso_local i64 @build_filter(%struct.TYPE_9__*, i8*, double, i32, i32, i32, i32, i32, double) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @swri_resample_dsp_init(%struct.TYPE_9__*) #1

declare dso_local i32 @av_freep(i64*) #1

declare dso_local i32 @av_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
