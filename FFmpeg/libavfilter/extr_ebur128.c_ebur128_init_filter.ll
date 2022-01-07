; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_ebur128.c_ebur128_init_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_ebur128.c_ebur128_init_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { double*, double*, double** }

@M_PI = common dso_local global double 0.000000e+00, align 8
@__const.ebur128_init_filter.pa = private unnamed_addr constant [3 x double] [double 1.000000e+00, double 0.000000e+00, double 0.000000e+00], align 16
@__const.ebur128_init_filter.rb = private unnamed_addr constant [3 x double] [double 1.000000e+00, double -2.000000e+00, double 1.000000e+00], align 16
@__const.ebur128_init_filter.ra = private unnamed_addr constant [3 x double] [double 1.000000e+00, double 0.000000e+00, double 0.000000e+00], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @ebur128_init_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ebur128_init_filter(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca [3 x double], align 16
  %12 = alloca [3 x double], align 16
  %13 = alloca [3 x double], align 16
  %14 = alloca [3 x double], align 16
  %15 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store double 0x409A47E5D678A648, double* %5, align 8
  store double 0x400FFFAE226F6083, double* %6, align 8
  store double 0x3FE6A12DF668776C, double* %7, align 8
  %16 = load double, double* @M_PI, align 8
  %17 = load double, double* %5, align 8
  %18 = fmul double %16, %17
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sitofp i64 %21 to double
  %23 = fdiv double %18, %22
  %24 = call double @tan(double %23) #3
  store double %24, double* %8, align 8
  %25 = load double, double* %6, align 8
  %26 = fdiv double %25, 2.000000e+01
  %27 = call double @pow(double 1.000000e+01, double %26) #3
  store double %27, double* %9, align 8
  %28 = load double, double* %9, align 8
  %29 = call double @pow(double %28, double 0x3FDFFA8A59790F8D) #3
  store double %29, double* %10, align 8
  %30 = bitcast [3 x double]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 24, i1 false)
  %31 = bitcast [3 x double]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 bitcast ([3 x double]* @__const.ebur128_init_filter.pa to i8*), i64 24, i1 false)
  %32 = bitcast [3 x double]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %32, i8* align 16 bitcast ([3 x double]* @__const.ebur128_init_filter.rb to i8*), i64 24, i1 false)
  %33 = bitcast [3 x double]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 bitcast ([3 x double]* @__const.ebur128_init_filter.ra to i8*), i64 24, i1 false)
  %34 = load double, double* %8, align 8
  %35 = load double, double* %7, align 8
  %36 = fdiv double %34, %35
  %37 = fadd double 1.000000e+00, %36
  %38 = load double, double* %8, align 8
  %39 = load double, double* %8, align 8
  %40 = fmul double %38, %39
  %41 = fadd double %37, %40
  store double %41, double* %15, align 8
  %42 = load double, double* %9, align 8
  %43 = load double, double* %10, align 8
  %44 = load double, double* %8, align 8
  %45 = fmul double %43, %44
  %46 = load double, double* %7, align 8
  %47 = fdiv double %45, %46
  %48 = fadd double %42, %47
  %49 = load double, double* %8, align 8
  %50 = load double, double* %8, align 8
  %51 = fmul double %49, %50
  %52 = fadd double %48, %51
  %53 = load double, double* %15, align 8
  %54 = fdiv double %52, %53
  %55 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 0
  store double %54, double* %55, align 16
  %56 = load double, double* %8, align 8
  %57 = load double, double* %8, align 8
  %58 = fmul double %56, %57
  %59 = load double, double* %9, align 8
  %60 = fsub double %58, %59
  %61 = fmul double 2.000000e+00, %60
  %62 = load double, double* %15, align 8
  %63 = fdiv double %61, %62
  %64 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 1
  store double %63, double* %64, align 8
  %65 = load double, double* %9, align 8
  %66 = load double, double* %10, align 8
  %67 = load double, double* %8, align 8
  %68 = fmul double %66, %67
  %69 = load double, double* %7, align 8
  %70 = fdiv double %68, %69
  %71 = fsub double %65, %70
  %72 = load double, double* %8, align 8
  %73 = load double, double* %8, align 8
  %74 = fmul double %72, %73
  %75 = fadd double %71, %74
  %76 = load double, double* %15, align 8
  %77 = fdiv double %75, %76
  %78 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 2
  store double %77, double* %78, align 16
  %79 = load double, double* %8, align 8
  %80 = load double, double* %8, align 8
  %81 = fmul double %79, %80
  %82 = fsub double %81, 1.000000e+00
  %83 = fmul double 2.000000e+00, %82
  %84 = load double, double* %15, align 8
  %85 = fdiv double %83, %84
  %86 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 1
  store double %85, double* %86, align 8
  %87 = load double, double* %8, align 8
  %88 = load double, double* %7, align 8
  %89 = fdiv double %87, %88
  %90 = fsub double 1.000000e+00, %89
  %91 = load double, double* %8, align 8
  %92 = load double, double* %8, align 8
  %93 = fmul double %91, %92
  %94 = fadd double %90, %93
  %95 = load double, double* %15, align 8
  %96 = fdiv double %94, %95
  %97 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 2
  store double %96, double* %97, align 16
  store double 0x404311571C130AF0, double* %5, align 8
  store double 0x3FE002ADD8D38A3C, double* %7, align 8
  %98 = load double, double* @M_PI, align 8
  %99 = load double, double* %5, align 8
  %100 = fmul double %98, %99
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sitofp i64 %103 to double
  %105 = fdiv double %100, %104
  %106 = call double @tan(double %105) #3
  store double %106, double* %8, align 8
  %107 = load double, double* %8, align 8
  %108 = load double, double* %8, align 8
  %109 = fmul double %107, %108
  %110 = fsub double %109, 1.000000e+00
  %111 = fmul double 2.000000e+00, %110
  %112 = load double, double* %8, align 8
  %113 = load double, double* %7, align 8
  %114 = fdiv double %112, %113
  %115 = fadd double 1.000000e+00, %114
  %116 = load double, double* %8, align 8
  %117 = load double, double* %8, align 8
  %118 = fmul double %116, %117
  %119 = fadd double %115, %118
  %120 = fdiv double %111, %119
  %121 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 1
  store double %120, double* %121, align 8
  %122 = load double, double* %8, align 8
  %123 = load double, double* %7, align 8
  %124 = fdiv double %122, %123
  %125 = fsub double 1.000000e+00, %124
  %126 = load double, double* %8, align 8
  %127 = load double, double* %8, align 8
  %128 = fmul double %126, %127
  %129 = fadd double %125, %128
  %130 = load double, double* %8, align 8
  %131 = load double, double* %7, align 8
  %132 = fdiv double %130, %131
  %133 = fadd double 1.000000e+00, %132
  %134 = load double, double* %8, align 8
  %135 = load double, double* %8, align 8
  %136 = fmul double %134, %135
  %137 = fadd double %133, %136
  %138 = fdiv double %129, %137
  %139 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 2
  store double %138, double* %139, align 16
  %140 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 0
  %141 = load double, double* %140, align 16
  %142 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 0
  %143 = load double, double* %142, align 16
  %144 = fmul double %141, %143
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load double*, double** %148, align 8
  %150 = getelementptr inbounds double, double* %149, i64 0
  store double %144, double* %150, align 8
  %151 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 0
  %152 = load double, double* %151, align 16
  %153 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 1
  %154 = load double, double* %153, align 8
  %155 = fmul double %152, %154
  %156 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 1
  %157 = load double, double* %156, align 8
  %158 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 0
  %159 = load double, double* %158, align 16
  %160 = fmul double %157, %159
  %161 = fadd double %155, %160
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load double*, double** %165, align 8
  %167 = getelementptr inbounds double, double* %166, i64 1
  store double %161, double* %167, align 8
  %168 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 0
  %169 = load double, double* %168, align 16
  %170 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 2
  %171 = load double, double* %170, align 16
  %172 = fmul double %169, %171
  %173 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 1
  %174 = load double, double* %173, align 8
  %175 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 1
  %176 = load double, double* %175, align 8
  %177 = fmul double %174, %176
  %178 = fadd double %172, %177
  %179 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 2
  %180 = load double, double* %179, align 16
  %181 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 0
  %182 = load double, double* %181, align 16
  %183 = fmul double %180, %182
  %184 = fadd double %178, %183
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load double*, double** %188, align 8
  %190 = getelementptr inbounds double, double* %189, i64 2
  store double %184, double* %190, align 8
  %191 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 1
  %192 = load double, double* %191, align 8
  %193 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 2
  %194 = load double, double* %193, align 16
  %195 = fmul double %192, %194
  %196 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 2
  %197 = load double, double* %196, align 16
  %198 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 1
  %199 = load double, double* %198, align 8
  %200 = fmul double %197, %199
  %201 = fadd double %195, %200
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load double*, double** %205, align 8
  %207 = getelementptr inbounds double, double* %206, i64 3
  store double %201, double* %207, align 8
  %208 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 2
  %209 = load double, double* %208, align 16
  %210 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 2
  %211 = load double, double* %210, align 16
  %212 = fmul double %209, %211
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load double*, double** %216, align 8
  %218 = getelementptr inbounds double, double* %217, i64 4
  store double %212, double* %218, align 8
  %219 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 0
  %220 = load double, double* %219, align 16
  %221 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %222 = load double, double* %221, align 16
  %223 = fmul double %220, %222
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 1
  %228 = load double*, double** %227, align 8
  %229 = getelementptr inbounds double, double* %228, i64 0
  store double %223, double* %229, align 8
  %230 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 0
  %231 = load double, double* %230, align 16
  %232 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 1
  %233 = load double, double* %232, align 8
  %234 = fmul double %231, %233
  %235 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 1
  %236 = load double, double* %235, align 8
  %237 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %238 = load double, double* %237, align 16
  %239 = fmul double %236, %238
  %240 = fadd double %234, %239
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  %245 = load double*, double** %244, align 8
  %246 = getelementptr inbounds double, double* %245, i64 1
  store double %240, double* %246, align 8
  %247 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 0
  %248 = load double, double* %247, align 16
  %249 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 2
  %250 = load double, double* %249, align 16
  %251 = fmul double %248, %250
  %252 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 1
  %253 = load double, double* %252, align 8
  %254 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 1
  %255 = load double, double* %254, align 8
  %256 = fmul double %253, %255
  %257 = fadd double %251, %256
  %258 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 2
  %259 = load double, double* %258, align 16
  %260 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %261 = load double, double* %260, align 16
  %262 = fmul double %259, %261
  %263 = fadd double %257, %262
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 1
  %268 = load double*, double** %267, align 8
  %269 = getelementptr inbounds double, double* %268, i64 2
  store double %263, double* %269, align 8
  %270 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 1
  %271 = load double, double* %270, align 8
  %272 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 2
  %273 = load double, double* %272, align 16
  %274 = fmul double %271, %273
  %275 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 2
  %276 = load double, double* %275, align 16
  %277 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 1
  %278 = load double, double* %277, align 8
  %279 = fmul double %276, %278
  %280 = fadd double %274, %279
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 1
  %285 = load double*, double** %284, align 8
  %286 = getelementptr inbounds double, double* %285, i64 3
  store double %280, double* %286, align 8
  %287 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 2
  %288 = load double, double* %287, align 16
  %289 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 2
  %290 = load double, double* %289, align 16
  %291 = fmul double %288, %290
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 1
  %296 = load double*, double** %295, align 8
  %297 = getelementptr inbounds double, double* %296, i64 4
  store double %291, double* %297, align 8
  store i32 0, i32* %3, align 4
  br label %298

298:                                              ; preds = %322, %1
  %299 = load i32, i32* %3, align 4
  %300 = icmp slt i32 %299, 5
  br i1 %300, label %301, label %325

301:                                              ; preds = %298
  store i32 0, i32* %4, align 4
  br label %302

302:                                              ; preds = %318, %301
  %303 = load i32, i32* %4, align 4
  %304 = icmp slt i32 %303, 5
  br i1 %304, label %305, label %321

305:                                              ; preds = %302
  %306 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_4__*, %struct.TYPE_4__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 2
  %310 = load double**, double*** %309, align 8
  %311 = load i32, i32* %3, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds double*, double** %310, i64 %312
  %314 = load double*, double** %313, align 8
  %315 = load i32, i32* %4, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds double, double* %314, i64 %316
  store double 0.000000e+00, double* %317, align 8
  br label %318

318:                                              ; preds = %305
  %319 = load i32, i32* %4, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %4, align 4
  br label %302

321:                                              ; preds = %302
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %3, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %3, align 4
  br label %298

325:                                              ; preds = %298
  ret void
}

; Function Attrs: nounwind
declare dso_local double @tan(double) #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
