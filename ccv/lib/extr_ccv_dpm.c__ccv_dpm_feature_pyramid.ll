; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_dpm.c__ccv_dpm_feature_pyramid.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_dpm.c__ccv_dpm_feature_pyramid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { double, double }

@CCV_INTER_AREA = common dso_local global i32 0, align 4
@CCV_DPM_WINDOW_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_12__**, i32, i32)* @_ccv_dpm_feature_pyramid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_dpm_feature_pyramid(%struct.TYPE_12__* %0, %struct.TYPE_12__** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sitofp i32 %15 to double
  %17 = fadd double %16, 1.000000e+00
  %18 = fdiv double 1.000000e+00, %17
  %19 = fptosi double %18 to i32
  %20 = call double @pow(double 2.000000e+00, i32 %19)
  store double %20, double* %10, align 8
  %21 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 %23, 2
  %25 = add nsw i32 %22, %24
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memset(%struct.TYPE_12__** %21, i32 0, i32 %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %31, i64 %33
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %34, align 8
  store i32 1, i32* %11, align 4
  br label %35

35:                                               ; preds = %77, %4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %80

39:                                               ; preds = %35
  %40 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %40, i64 %42
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %45, i64 %49
  %51 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %51, i64 %53
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load double, double* %56, align 8
  %58 = load double, double* %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call double @pow(double %58, i32 %59)
  %61 = fdiv double %57, %60
  %62 = fptosi double %61 to i32
  %63 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %63, i64 %65
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load double, double* %68, align 8
  %70 = load double, double* %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call double @pow(double %70, i32 %71)
  %73 = fdiv double %69, %72
  %74 = fptosi double %73 to i32
  %75 = load i32, i32* @CCV_INTER_AREA, align 4
  %76 = call i32 @ccv_resample(%struct.TYPE_12__* %44, %struct.TYPE_12__** %50, i32 0, i32 %62, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %39
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %35

80:                                               ; preds = %35
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %101, %80
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %84, %85
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %82
  %89 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %89, i64 %91
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %94, i64 %98
  %100 = call i32 @ccv_sample_down(%struct.TYPE_12__* %93, %struct.TYPE_12__** %99, i32 0, i32 0, i32 0)
  br label %101

101:                                              ; preds = %88
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %82

104:                                              ; preds = %82
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %125, %104
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %105
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %12, align 8
  %110 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %110, i64 %114
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = load i32, i32* @CCV_DPM_WINDOW_SIZE, align 4
  %118 = sdiv i32 %117, 2
  %119 = call i32 @ccv_hog(%struct.TYPE_12__* %116, %struct.TYPE_12__** %12, i32 0, i32 9, i32 %118)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %121 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %121, i64 %123
  store %struct.TYPE_12__* %120, %struct.TYPE_12__** %124, align 8
  br label %125

125:                                              ; preds = %109
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %105

128:                                              ; preds = %105
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %12, align 8
  %129 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %129, i64 %131
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = load i32, i32* @CCV_DPM_WINDOW_SIZE, align 4
  %135 = call i32 @ccv_hog(%struct.TYPE_12__* %133, %struct.TYPE_12__** %12, i32 0, i32 9, i32 %134)
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %137 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %137, i64 %139
  store %struct.TYPE_12__* %136, %struct.TYPE_12__** %140, align 8
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %169, %128
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %9, align 4
  %147 = mul nsw i32 %146, 2
  %148 = add nsw i32 %145, %147
  %149 = icmp slt i32 %144, %148
  br i1 %149, label %150, label %172

150:                                              ; preds = %143
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %12, align 8
  %151 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %151, i64 %153
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = load i32, i32* @CCV_DPM_WINDOW_SIZE, align 4
  %157 = call i32 @ccv_hog(%struct.TYPE_12__* %155, %struct.TYPE_12__** %12, i32 0, i32 9, i32 %156)
  %158 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %158, i64 %160
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = call i32 @ccv_matrix_free(%struct.TYPE_12__* %162)
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %165 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %165, i64 %167
  store %struct.TYPE_12__* %164, %struct.TYPE_12__** %168, align 8
  br label %169

169:                                              ; preds = %150
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  br label %143

172:                                              ; preds = %143
  ret void
}

declare dso_local double @pow(double, i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__**, i32, i32) #1

declare dso_local i32 @ccv_resample(%struct.TYPE_12__*, %struct.TYPE_12__**, i32, i32, i32, i32) #1

declare dso_local i32 @ccv_sample_down(%struct.TYPE_12__*, %struct.TYPE_12__**, i32, i32, i32) #1

declare dso_local i32 @ccv_hog(%struct.TYPE_12__*, %struct.TYPE_12__**, i32, i32, i32) #1

declare dso_local i32 @ccv_matrix_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
