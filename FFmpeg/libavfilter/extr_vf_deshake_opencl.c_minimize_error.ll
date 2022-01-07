; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_minimize_error.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_minimize_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i32 }
%struct.TYPE_7__ = type { i32, i32* }

@FLT_MAX = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, %struct.TYPE_7__*, i32, double*, i32)* @minimize_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minimize_error(%struct.TYPE_6__* %0, i32* %1, %struct.TYPE_7__* %2, i32 %3, double* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca [6 x double], align 16
  %17 = alloca [6 x double], align 16
  %18 = alloca [3 x i32], align 4
  %19 = alloca [3 x i32], align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %10, align 8
  store i32 %3, i32* %11, align 4
  store double* %4, double** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %28 = load float, float* @FLT_MAX, align 4
  store float %28, float* %15, align 4
  store i32 0, i32* %20, align 4
  br label %29

29:                                               ; preds = %113, %6
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %116

33:                                               ; preds = %29
  store float 0.000000e+00, float* %21, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %39 = call i32 @get_subset(i32* %35, i32* %36, i32 %37, i32* %38, i32 10000)
  store i32 %39, i32* %22, align 4
  %40 = load i32, i32* %22, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %20, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %161

46:                                               ; preds = %42
  br label %116

47:                                               ; preds = %33
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %49 = getelementptr inbounds [6 x double], [6 x double]* %17, i64 0, i64 0
  %50 = call i32 @run_estimate_kernel(i32* %48, double* %49)
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %11, align 4
  %53 = getelementptr inbounds [6 x double], [6 x double]* %17, i64 0, i64 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = call i32 @compute_error(i32* %51, i32 %52, double* %53, i64* %56)
  store i32 0, i32* %23, align 4
  br label %58

58:                                               ; preds = %73, %47
  %59 = load i32, i32* %23, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %23, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = sitofp i64 %69 to float
  %71 = load float, float* %21, align 4
  %72 = fadd float %71, %70
  store float %72, float* %21, align 4
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %23, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %23, align 4
  br label %58

76:                                               ; preds = %58
  %77 = load float, float* %21, align 4
  %78 = load float, float* %15, align 4
  %79 = fcmp olt float %77, %78
  br i1 %79, label %80, label %112

80:                                               ; preds = %76
  store i32 0, i32* %24, align 4
  br label %81

81:                                               ; preds = %92, %80
  %82 = load i32, i32* %24, align 4
  %83 = icmp slt i32 %82, 6
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i32, i32* %24, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [6 x double], [6 x double]* %17, i64 0, i64 %86
  %88 = load double, double* %87, align 8
  %89 = load i32, i32* %24, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [6 x double], [6 x double]* %16, i64 0, i64 %90
  store double %88, double* %91, align 8
  br label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %24, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %24, align 4
  br label %81

95:                                               ; preds = %81
  store i32 0, i32* %25, align 4
  br label %96

96:                                               ; preds = %107, %95
  %97 = load i32, i32* %25, align 4
  %98 = icmp slt i32 %97, 3
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load i32, i32* %25, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %25, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 %105
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %99
  %108 = load i32, i32* %25, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %25, align 4
  br label %96

110:                                              ; preds = %96
  %111 = load float, float* %21, align 4
  store float %111, float* %15, align 4
  br label %112

112:                                              ; preds = %110, %76
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %20, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %20, align 4
  br label %29

116:                                              ; preds = %46, %29
  store i32 0, i32* %26, align 4
  br label %117

117:                                              ; preds = %129, %116
  %118 = load i32, i32* %26, align 4
  %119 = icmp slt i32 %118, 6
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load i32, i32* %26, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [6 x double], [6 x double]* %16, i64 0, i64 %122
  %124 = load double, double* %123, align 8
  %125 = load double*, double** %12, align 8
  %126 = load i32, i32* %26, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds double, double* %125, i64 %127
  store double %124, double* %128, align 8
  br label %129

129:                                              ; preds = %120
  %130 = load i32, i32* %26, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %26, align 4
  br label %117

132:                                              ; preds = %117
  store i32 0, i32* %27, align 4
  br label %133

133:                                              ; preds = %147, %132
  %134 = load i32, i32* %27, align 4
  %135 = icmp slt i32 %134, 3
  br i1 %135, label %136, label %150

136:                                              ; preds = %133
  %137 = load i32, i32* %27, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %27, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %140, i32* %146, align 4
  br label %147

147:                                              ; preds = %136
  %148 = load i32, i32* %27, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %27, align 4
  br label %133

150:                                              ; preds = %133
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  store i32 3, i32* %152, align 8
  store i32 1, i32* %14, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %154 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %155 = load i32*, i32** %9, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load float, float* %15, align 4
  %158 = load double*, double** %12, align 8
  %159 = call i32 @optimize_model(%struct.TYPE_6__* %153, i32* %154, i32* %155, i32 %156, float %157, double* %158)
  %160 = load i32, i32* %14, align 4
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %150, %45
  %162 = load i32, i32* %7, align 4
  ret i32 %162
}

declare dso_local i32 @get_subset(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @run_estimate_kernel(i32*, double*) #1

declare dso_local i32 @compute_error(i32*, i32, double*, i64*) #1

declare dso_local i32 @optimize_model(%struct.TYPE_6__*, i32*, i32*, i32, float, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
