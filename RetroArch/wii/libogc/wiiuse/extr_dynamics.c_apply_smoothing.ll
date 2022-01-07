; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_dynamics.c_apply_smoothing.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_dynamics.c_apply_smoothing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.accel_t = type { float, i32, float }
%struct.orient_t = type { float, i32, float, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apply_smoothing(%struct.accel_t* %0, %struct.orient_t* %1, i32 %2) #0 {
  %4 = alloca %struct.accel_t*, align 8
  %5 = alloca %struct.orient_t*, align 8
  %6 = alloca i32, align 4
  store %struct.accel_t* %0, %struct.accel_t** %4, align 8
  store %struct.orient_t* %1, %struct.orient_t** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %142 [
    i32 128, label %8
    i32 129, label %75
  ]

8:                                                ; preds = %3
  %9 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %10 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %9, i32 0, i32 0
  %11 = load float, float* %10, align 4
  %12 = call i32 @isnan(float %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %16 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %15, i32 0, i32 0
  %17 = load float, float* %16, align 4
  %18 = call i32 @isinf(float %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %8
  %21 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %22 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %21, i32 0, i32 0
  store float 0.000000e+00, float* %22, align 4
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %25 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %24, i32 0, i32 0
  %26 = load float, float* %25, align 4
  %27 = fcmp olt float %26, 0.000000e+00
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.orient_t*, %struct.orient_t** %5, align 8
  %30 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %29, i32 0, i32 0
  %31 = load float, float* %30, align 4
  %32 = fcmp ogt float %31, 0.000000e+00
  br i1 %32, label %43, label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %35 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %34, i32 0, i32 0
  %36 = load float, float* %35, align 4
  %37 = fcmp ogt float %36, 0.000000e+00
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.orient_t*, %struct.orient_t** %5, align 8
  %40 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %39, i32 0, i32 0
  %41 = load float, float* %40, align 4
  %42 = fcmp olt float %41, 0.000000e+00
  br i1 %42, label %43, label %49

43:                                               ; preds = %38, %28
  %44 = load %struct.orient_t*, %struct.orient_t** %5, align 8
  %45 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %44, i32 0, i32 0
  %46 = load float, float* %45, align 4
  %47 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %48 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %47, i32 0, i32 0
  store float %46, float* %48, align 4
  br label %74

49:                                               ; preds = %38, %33
  %50 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %51 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %50, i32 0, i32 0
  %52 = load float, float* %51, align 4
  %53 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %54 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sitofp i32 %55 to float
  %57 = load %struct.orient_t*, %struct.orient_t** %5, align 8
  %58 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sitofp i32 %59 to float
  %61 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %62 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %61, i32 0, i32 0
  %63 = load float, float* %62, align 4
  %64 = fsub float %60, %63
  %65 = fmul float %56, %64
  %66 = fadd float %52, %65
  %67 = load %struct.orient_t*, %struct.orient_t** %5, align 8
  %68 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %67, i32 0, i32 0
  store float %66, float* %68, align 4
  %69 = load %struct.orient_t*, %struct.orient_t** %5, align 8
  %70 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %69, i32 0, i32 0
  %71 = load float, float* %70, align 4
  %72 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %73 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %72, i32 0, i32 0
  store float %71, float* %73, align 4
  br label %74

74:                                               ; preds = %49, %43
  br label %142

75:                                               ; preds = %3
  %76 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %77 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %76, i32 0, i32 2
  %78 = load float, float* %77, align 4
  %79 = call i32 @isnan(float %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %83 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %82, i32 0, i32 2
  %84 = load float, float* %83, align 4
  %85 = call i32 @isinf(float %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81, %75
  %88 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %89 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %88, i32 0, i32 2
  store float 0.000000e+00, float* %89, align 4
  br label %90

90:                                               ; preds = %87, %81
  %91 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %92 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %91, i32 0, i32 2
  %93 = load float, float* %92, align 4
  %94 = fcmp olt float %93, 0.000000e+00
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.orient_t*, %struct.orient_t** %5, align 8
  %97 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %96, i32 0, i32 2
  %98 = load float, float* %97, align 4
  %99 = fcmp ogt float %98, 0.000000e+00
  br i1 %99, label %110, label %100

100:                                              ; preds = %95, %90
  %101 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %102 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %101, i32 0, i32 2
  %103 = load float, float* %102, align 4
  %104 = fcmp ogt float %103, 0.000000e+00
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load %struct.orient_t*, %struct.orient_t** %5, align 8
  %107 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %106, i32 0, i32 2
  %108 = load float, float* %107, align 4
  %109 = fcmp olt float %108, 0.000000e+00
  br i1 %109, label %110, label %116

110:                                              ; preds = %105, %95
  %111 = load %struct.orient_t*, %struct.orient_t** %5, align 8
  %112 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %111, i32 0, i32 2
  %113 = load float, float* %112, align 4
  %114 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %115 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %114, i32 0, i32 2
  store float %113, float* %115, align 4
  br label %141

116:                                              ; preds = %105, %100
  %117 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %118 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %117, i32 0, i32 2
  %119 = load float, float* %118, align 4
  %120 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %121 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sitofp i32 %122 to float
  %124 = load %struct.orient_t*, %struct.orient_t** %5, align 8
  %125 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = sitofp i32 %126 to float
  %128 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %129 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %128, i32 0, i32 2
  %130 = load float, float* %129, align 4
  %131 = fsub float %127, %130
  %132 = fmul float %123, %131
  %133 = fadd float %119, %132
  %134 = load %struct.orient_t*, %struct.orient_t** %5, align 8
  %135 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %134, i32 0, i32 2
  store float %133, float* %135, align 4
  %136 = load %struct.orient_t*, %struct.orient_t** %5, align 8
  %137 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %136, i32 0, i32 2
  %138 = load float, float* %137, align 4
  %139 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %140 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %139, i32 0, i32 2
  store float %138, float* %140, align 4
  br label %141

141:                                              ; preds = %116, %110
  br label %142

142:                                              ; preds = %74, %141, %3
  ret void
}

declare dso_local i32 @isnan(float) #1

declare dso_local i32 @isinf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
