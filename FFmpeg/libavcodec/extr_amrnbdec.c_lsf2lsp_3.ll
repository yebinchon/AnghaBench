; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_lsf2lsp_3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_lsf2lsp_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, double*, double**, double*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@LP_FILTER_ORDER = common dso_local global i32 0, align 4
@MODE_7k95 = common dso_local global i64 0, align 8
@lsf_3_1_MODE_7k95 = common dso_local global double** null, align 8
@lsf_3_1 = common dso_local global double** null, align 8
@lsf_3_2 = common dso_local global double** null, align 8
@MODE_5k15 = common dso_local global i64 0, align 8
@lsf_3_3_MODE_5k15 = common dso_local global double** null, align 8
@lsf_3_3 = common dso_local global double** null, align 8
@pred_fac = common dso_local global double* null, align 8
@LSF_R_FAC = common dso_local global double 0.000000e+00, align 8
@lsf_3_mean = common dso_local global double* null, align 8
@MIN_LSF_SPACING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @lsf2lsp_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lsf2lsp_3(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  store i64* %13, i64** %3, align 8
  %14 = load i32, i32* @LP_FILTER_ORDER, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca double, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load i32, i32* @LP_FILTER_ORDER, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca float, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MODE_7k95, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load double**, double*** @lsf_3_1_MODE_7k95, align 8
  br label %30

28:                                               ; preds = %1
  %29 = load double**, double*** @lsf_3_1, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi double** [ %27, %26 ], [ %29, %28 ]
  %32 = load i64*, i64** %3, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds double*, double** %31, i64 %34
  %36 = load double*, double** %35, align 8
  store double* %36, double** %7, align 8
  %37 = load double*, double** %7, align 8
  %38 = call i32 @memcpy(double* %17, double* %37, i32 24)
  %39 = load double**, double*** @lsf_3_2, align 8
  %40 = load i64*, i64** %3, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MODE_5k15, align 8
  %47 = icmp sle i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = zext i32 %48 to i64
  %50 = shl i64 %42, %49
  %51 = getelementptr inbounds double*, double** %39, i64 %50
  %52 = load double*, double** %51, align 8
  store double* %52, double** %7, align 8
  %53 = getelementptr inbounds double, double* %17, i64 3
  %54 = load double*, double** %7, align 8
  %55 = call i32 @memcpy(double* %53, double* %54, i32 24)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MODE_5k15, align 8
  %60 = icmp sle i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %30
  %62 = load double**, double*** @lsf_3_3_MODE_5k15, align 8
  br label %65

63:                                               ; preds = %30
  %64 = load double**, double*** @lsf_3_3, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi double** [ %62, %61 ], [ %64, %63 ]
  %67 = load i64*, i64** %3, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 2
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds double*, double** %66, i64 %69
  %71 = load double*, double** %70, align 8
  store double* %71, double** %7, align 8
  %72 = getelementptr inbounds double, double* %17, i64 6
  %73 = load double*, double** %7, align 8
  %74 = call i32 @memcpy(double* %72, double* %73, i32 32)
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %112, %65
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @LP_FILTER_ORDER, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %115

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %17, i64 %81
  %83 = load double, double* %82, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load double*, double** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %86, i64 %88
  %90 = load double, double* %89, align 8
  %91 = load double*, double** @pred_fac, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, double* %91, i64 %93
  %95 = load double, double* %94, align 8
  %96 = fmul double %90, %95
  %97 = fadd double %83, %96
  %98 = load double, double* @LSF_R_FAC, align 8
  %99 = fdiv double %98, 8.000000e+03
  %100 = fmul double %97, %99
  %101 = load double*, double** @lsf_3_mean, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %101, i64 %103
  %105 = load double, double* %104, align 8
  %106 = fmul double %105, 1.250000e-04
  %107 = fadd double %100, %106
  %108 = fptrunc double %107 to float
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %20, i64 %110
  store float %108, float* %111, align 4
  br label %112

112:                                              ; preds = %79
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %75

115:                                              ; preds = %75
  %116 = load i32, i32* @MIN_LSF_SPACING, align 4
  %117 = load i32, i32* @LP_FILTER_ORDER, align 4
  %118 = call i32 @ff_set_min_dist_lsf(float* %20, i32 %116, i32 %117)
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 5
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @interpolate_lsf(i32* %120, i32 %123, float* %20)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load double*, double** %126, align 8
  %128 = load i32, i32* @LP_FILTER_ORDER, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @memcpy(double* %127, double* %17, i32 %131)
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load double**, double*** %134, align 8
  %136 = getelementptr inbounds double*, double** %135, i64 3
  %137 = load double*, double** %136, align 8
  %138 = load i32, i32* @LP_FILTER_ORDER, align 4
  %139 = call i32 @ff_acelp_lsf2lspd(double* %137, float* %20, i32 %138)
  store i32 1, i32* %8, align 4
  br label %140

140:                                              ; preds = %193, %115
  %141 = load i32, i32* %8, align 4
  %142 = icmp sle i32 %141, 3
  br i1 %142, label %143, label %196

143:                                              ; preds = %140
  store i32 0, i32* %9, align 4
  br label %144

144:                                              ; preds = %189, %143
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @LP_FILTER_ORDER, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %192

148:                                              ; preds = %144
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 3
  %151 = load double*, double** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds double, double* %151, i64 %153
  %155 = load double, double* %154, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load double**, double*** %157, align 8
  %159 = getelementptr inbounds double*, double** %158, i64 3
  %160 = load double*, double** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds double, double* %160, i64 %162
  %164 = load double, double* %163, align 8
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 3
  %167 = load double*, double** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds double, double* %167, i64 %169
  %171 = load double, double* %170, align 8
  %172 = fsub double %164, %171
  %173 = fmul double %172, 2.500000e-01
  %174 = load i32, i32* %8, align 4
  %175 = sitofp i32 %174 to double
  %176 = fmul double %173, %175
  %177 = fadd double %155, %176
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 2
  %180 = load double**, double*** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds double*, double** %180, i64 %183
  %185 = load double*, double** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds double, double* %185, i64 %187
  store double %177, double* %188, align 8
  br label %189

189:                                              ; preds = %148
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %9, align 4
  br label %144

192:                                              ; preds = %144
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %8, align 4
  br label %140

196:                                              ; preds = %140
  %197 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %197)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(double*, double*, i32) #2

declare dso_local i32 @ff_set_min_dist_lsf(float*, i32, i32) #2

declare dso_local i32 @interpolate_lsf(i32*, i32, float*) #2

declare dso_local i32 @ff_acelp_lsf2lspd(double*, float*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
