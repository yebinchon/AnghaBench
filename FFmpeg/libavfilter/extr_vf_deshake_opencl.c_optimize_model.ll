; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_optimize_model.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_optimize_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, float, double*)* @optimize_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optimize_model(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, i32 %3, float %4, double* %5) #0 {
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca double*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca [6 x double], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  store double* %5, double** %12, align 8
  store float 0x3F847AE140000000, float* %13, align 4
  store float 0x3F847AE140000000, float* %14, align 4
  store i32 1, i32* %15, align 4
  store float 0.000000e+00, float* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %23

23:                                               ; preds = %151, %6
  %24 = load i32, i32* %19, align 4
  %25 = icmp slt i32 %24, 200
  br i1 %25, label %26, label %154

26:                                               ; preds = %23
  store float 0.000000e+00, float* %20, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load float, float* %13, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load float*, float** %35, align 8
  %37 = getelementptr inbounds float, float* %36, i64 0
  %38 = load float, float* %37, align 4
  %39 = fadd float %38, %30
  store float %39, float* %37, align 4
  br label %51

40:                                               ; preds = %26
  %41 = load float, float* %14, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load float*, float** %46, align 8
  %48 = getelementptr inbounds float, float* %47, i64 0
  %49 = load float, float* %48, align 4
  %50 = fadd float %49, %41
  store float %50, float* %48, align 4
  br label %51

51:                                               ; preds = %40, %29
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = getelementptr inbounds [6 x double], [6 x double]* %17, i64 0, i64 0
  %54 = call i32 @run_estimate_kernel(%struct.TYPE_12__* %52, double* %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = getelementptr inbounds [6 x double], [6 x double]* %17, i64 0, i64 0
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = call i32 @compute_error(%struct.TYPE_12__* %55, i32 %56, double* %57, i64* %60)
  store i32 0, i32* %21, align 4
  br label %62

62:                                               ; preds = %77, %51
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %21, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = sitofp i64 %73 to float
  %75 = load float, float* %20, align 4
  %76 = fadd float %75, %74
  store float %76, float* %20, align 4
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %21, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %21, align 4
  br label %62

80:                                               ; preds = %62
  %81 = load float, float* %20, align 4
  %82 = load float, float* %11, align 4
  %83 = fcmp olt float %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  store i32 0, i32* %22, align 4
  br label %85

85:                                               ; preds = %97, %84
  %86 = load i32, i32* %22, align 4
  %87 = icmp slt i32 %86, 6
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load i32, i32* %22, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [6 x double], [6 x double]* %17, i64 0, i64 %90
  %92 = load double, double* %91, align 8
  %93 = load double*, double** %12, align 8
  %94 = load i32, i32* %22, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %93, i64 %95
  store double %92, double* %96, align 8
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %22, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %22, align 4
  br label %85

100:                                              ; preds = %85
  %101 = load float, float* %20, align 4
  store float %101, float* %11, align 4
  %102 = load i32, i32* %19, align 4
  store i32 %102, i32* %18, align 4
  br label %150

103:                                              ; preds = %80
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load float, float* %13, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load float*, float** %112, align 8
  %114 = getelementptr inbounds float, float* %113, i64 0
  %115 = load float, float* %114, align 4
  %116 = fsub float %115, %107
  store float %116, float* %114, align 4
  br label %128

117:                                              ; preds = %103
  %118 = load float, float* %14, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load float*, float** %123, align 8
  %125 = getelementptr inbounds float, float* %124, i64 0
  %126 = load float, float* %125, align 4
  %127 = fsub float %126, %118
  store float %127, float* %125, align 4
  br label %128

128:                                              ; preds = %117, %106
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %18, align 4
  %131 = sub nsw i32 %129, %130
  %132 = icmp sgt i32 %131, 4
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %154

134:                                              ; preds = %128
  %135 = load float, float* %13, align 4
  store float %135, float* %16, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load float, float* %13, align 4
  %140 = fmul float %139, -1.000000e+00
  store float %140, float* %13, align 4
  br label %144

141:                                              ; preds = %134
  %142 = load float, float* %14, align 4
  %143 = fmul float %142, -1.000000e+00
  store float %143, float* %14, align 4
  br label %144

144:                                              ; preds = %141, %138
  %145 = load float, float* %16, align 4
  %146 = fcmp olt float %145, 0.000000e+00
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 0, i32* %15, align 4
  br label %149

148:                                              ; preds = %144
  store i32 1, i32* %15, align 4
  br label %149

149:                                              ; preds = %148, %147
  br label %150

150:                                              ; preds = %149, %100
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %19, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %19, align 4
  br label %23

154:                                              ; preds = %133, %23
  ret void
}

declare dso_local i32 @run_estimate_kernel(%struct.TYPE_12__*, double*) #1

declare dso_local i32 @compute_error(%struct.TYPE_12__*, i32, double*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
