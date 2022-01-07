; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_swt.c__ccv_swt_merge_textline.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_swt.c__ccv_swt_merge_textline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { double, double, i32, i32, i32, i64, i32 }
%struct.TYPE_25__ = type { double, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { double, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i64, %struct.TYPE_23__*, %struct.TYPE_22__, %struct.TYPE_25__*, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i32, i32 }

@_ccv_in_textline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (%struct.TYPE_26__*, %struct.TYPE_24__*)* @_ccv_swt_merge_textline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @_ccv_swt_merge_textline(%struct.TYPE_26__* %0, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_23__, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_26__* @ccv_array_new(i32 48, i32 %22, i32 0)
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = fdiv double 1.000000e+00, %25
  store double %26, double* %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1, i32 0, i32 1
  %28 = load double, double* %27, align 8
  %29 = fdiv double 1.000000e+00, %28
  store double %29, double* %8, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %232, %2
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %235

37:                                               ; preds = %30
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @ccv_array_get(%struct.TYPE_26__* %38, i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %41, %struct.TYPE_25__** %9, align 8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %228, %37
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %231

50:                                               ; preds = %44
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @ccv_array_get(%struct.TYPE_26__* %51, i32 %52)
  %54 = inttoptr i64 %53 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %54, %struct.TYPE_25__** %10, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = load double, double* %56, align 8
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = load double, double* %59, align 8
  %61 = fdiv double %57, %60
  store double %61, double* %11, align 8
  %62 = load double, double* %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1, i32 0, i32 0
  %64 = load double, double* %63, align 8
  %65 = fcmp ogt double %62, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %50
  %67 = load double, double* %11, align 8
  %68 = load double, double* %7, align 8
  %69 = fcmp olt double %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %50
  br label %228

71:                                               ; preds = %66
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load double, double* %74, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load double, double* %78, align 8
  %80 = fdiv double %75, %79
  store double %80, double* %11, align 8
  %81 = load double, double* %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1, i32 0, i32 1
  %83 = load double, double* %82, align 8
  %84 = fcmp ogt double %81, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %71
  %86 = load double, double* %11, align 8
  %87 = load double, double* %8, align 8
  %88 = fcmp olt double %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %71
  br label %228

90:                                               ; preds = %85
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %93, %96
  %98 = call i32 @abs(i32 %97) #4
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %228

103:                                              ; preds = %90
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %107, %111
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %116, %120
  %122 = sdiv i32 %121, 2
  %123 = add nsw i32 %112, %122
  store i32 %123, i32* %12, align 4
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %127, %131
  %133 = sitofp i32 %132 to double
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = load double, double* %136, align 8
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load double, double* %140, align 8
  %142 = fsub double %137, %141
  %143 = fdiv double %142, 2.000000e+00
  %144 = fadd double %133, %143
  %145 = fptosi double %144 to i32
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @abs(i32 %146) #4
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ccv_max(i32 %153, i32 %157)
  %159 = mul nsw i32 %149, %158
  %160 = icmp sgt i32 %147, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %103
  br label %228

162:                                              ; preds = %103
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = sitofp i32 %166 to double
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = load double, double* %170, align 8
  %172 = fadd double %167, %171
  %173 = fptosi double %172 to i32
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = sitofp i32 %177 to double
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 0
  %182 = load double, double* %181, align 8
  %183 = fadd double %178, %182
  %184 = fptosi double %183 to i32
  %185 = call i32 @ccv_min(i32 %173, i32 %184)
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @ccv_max(i32 %189, i32 %193)
  %195 = sub nsw i32 %185, %194
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %14, align 4
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = mul nsw i32 %196, %198
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 0
  %203 = load double, double* %202, align 8
  %204 = fptosi double %203 to i32
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 0
  %208 = load double, double* %207, align 8
  %209 = fptosi double %208 to i32
  %210 = call i32 @ccv_min(i32 %204, i32 %209)
  %211 = icmp slt i32 %199, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %162
  br label %228

213:                                              ; preds = %162
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %215 = load i32, i32* %12, align 4
  store i32 %215, i32* %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  %217 = load i32, i32* %13, align 4
  store i32 %217, i32* %216, align 4
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 2
  store i64 0, i64* %218, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 3
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %219, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 4
  %221 = bitcast %struct.TYPE_22__* %220 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %221, i8 0, i64 8, i1 false)
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 5
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  store %struct.TYPE_25__* %223, %struct.TYPE_25__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 6
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  store %struct.TYPE_25__* %225, %struct.TYPE_25__** %224, align 8
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %227 = call i32 @ccv_array_push(%struct.TYPE_26__* %226, %struct.TYPE_23__* %15)
  br label %228

228:                                              ; preds = %213, %212, %161, %102, %89, %70
  %229 = load i32, i32* %5, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %5, align 4
  br label %44

231:                                              ; preds = %44
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %4, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %4, align 4
  br label %30

235:                                              ; preds = %30
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %16, align 8
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %237 = load i32, i32* @_ccv_in_textline, align 4
  %238 = call i32 @ccv_array_group(%struct.TYPE_26__* %236, %struct.TYPE_26__** %16, i32 %237, i32 0)
  store i32 %238, i32* %17, align 4
  %239 = load i32, i32* %17, align 4
  %240 = sext i32 %239 to i64
  %241 = mul i64 %240, 48
  %242 = trunc i64 %241 to i32
  %243 = call i64 @ccmalloc(i32 %242)
  %244 = inttoptr i64 %243 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %244, %struct.TYPE_23__** %18, align 8
  store i32 0, i32* %4, align 4
  br label %245

245:                                              ; preds = %255, %235
  %246 = load i32, i32* %4, align 4
  %247 = load i32, i32* %17, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %258

249:                                              ; preds = %245
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %251 = load i32, i32* %4, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 2
  store i64 0, i64* %254, align 8
  br label %255

255:                                              ; preds = %249
  %256 = load i32, i32* %4, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %4, align 4
  br label %245

258:                                              ; preds = %245
  store i32 0, i32* %4, align 4
  br label %259

259:                                              ; preds = %293, %258
  %260 = load i32, i32* %4, align 4
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = icmp slt i32 %260, %263
  br i1 %264, label %265, label %296

265:                                              ; preds = %259
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %267 = load i32, i32* %4, align 4
  %268 = call i64 @ccv_array_get(%struct.TYPE_26__* %266, i32 %267)
  %269 = inttoptr i64 %268 to i32*
  %270 = load i32, i32* %269, align 4
  store i32 %270, i32* %5, align 4
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %272 = load i32, i32* %5, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i64 %273
  %275 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %276 = load i32, i32* %4, align 4
  %277 = call i64 @ccv_array_get(%struct.TYPE_26__* %275, i32 %276)
  %278 = inttoptr i64 %277 to %struct.TYPE_23__*
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 6
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %279, align 8
  %281 = call i32 @_ccv_swt_add_letter(%struct.TYPE_23__* %274, %struct.TYPE_25__* %280)
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %283 = load i32, i32* %5, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %282, i64 %284
  %286 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %287 = load i32, i32* %4, align 4
  %288 = call i64 @ccv_array_get(%struct.TYPE_26__* %286, i32 %287)
  %289 = inttoptr i64 %288 to %struct.TYPE_23__*
  %290 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %289, i32 0, i32 5
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %290, align 8
  %292 = call i32 @_ccv_swt_add_letter(%struct.TYPE_23__* %285, %struct.TYPE_25__* %291)
  br label %293

293:                                              ; preds = %265
  %294 = load i32, i32* %4, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %4, align 4
  br label %259

296:                                              ; preds = %259
  %297 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %298 = call i32 @ccv_array_free(%struct.TYPE_26__* %297)
  %299 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %300 = call i32 @ccv_array_free(%struct.TYPE_26__* %299)
  %301 = call %struct.TYPE_26__* @ccv_array_new(i32 48, i32 5, i32 0)
  store %struct.TYPE_26__* %301, %struct.TYPE_26__** %19, align 8
  store i32 0, i32* %4, align 4
  br label %302

302:                                              ; preds = %360, %296
  %303 = load i32, i32* %4, align 4
  %304 = load i32, i32* %17, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %363

306:                                              ; preds = %302
  %307 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %308 = load i32, i32* %4, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1, i32 0, i32 5
  %314 = load i64, i64* %313, align 8
  %315 = icmp sge i64 %312, %314
  br i1 %315, label %316, label %342

316:                                              ; preds = %306
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %318 = load i32, i32* %4, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %320, i32 0, i32 4
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %325 = load i32, i32* %4, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %327, i32 0, i32 4
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1, i32 0, i32 6
  %332 = load i32, i32* %331, align 8
  %333 = mul nsw i32 %330, %332
  %334 = icmp sgt i32 %323, %333
  br i1 %334, label %335, label %342

335:                                              ; preds = %316
  %336 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %338 = load i32, i32* %4, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i64 %339
  %341 = call i32 @ccv_array_push(%struct.TYPE_26__* %336, %struct.TYPE_23__* %340)
  br label %359

342:                                              ; preds = %316, %306
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %344 = load i32, i32* %4, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = icmp sgt i64 %348, 0
  br i1 %349, label %350, label %358

350:                                              ; preds = %342
  %351 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %352 = load i32, i32* %4, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %354, i32 0, i32 3
  %356 = load %struct.TYPE_23__*, %struct.TYPE_23__** %355, align 8
  %357 = call i32 @ccfree(%struct.TYPE_23__* %356)
  br label %358

358:                                              ; preds = %350, %342
  br label %359

359:                                              ; preds = %358, %335
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* %4, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %4, align 4
  br label %302

363:                                              ; preds = %302
  %364 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %365 = call i32 @ccfree(%struct.TYPE_23__* %364)
  %366 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  ret %struct.TYPE_26__* %366
}

declare dso_local %struct.TYPE_26__* @ccv_array_new(i32, i32, i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_26__*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @ccv_max(i32, i32) #1

declare dso_local i32 @ccv_min(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @ccv_array_push(%struct.TYPE_26__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ccv_array_group(%struct.TYPE_26__*, %struct.TYPE_26__**, i32, i32) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32 @_ccv_swt_add_letter(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_26__*) #1

declare dso_local i32 @ccfree(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
