; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_sinusoidal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_sinusoidal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float* }

@M_PI = common dso_local global float 0.000000e+00, align 4
@M_PI_2 = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, i32, i32, [4 x i32]*, [4 x i32]*, float*, float*)* @xyz_to_sinusoidal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xyz_to_sinusoidal(%struct.TYPE_3__* %0, float* %1, i32 %2, i32 %3, [4 x i32]* %4, [4 x i32]* %5, float* %6, float* %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32]*, align 8
  %14 = alloca [4 x i32]*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store float* %1, float** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store [4 x i32]* %4, [4 x i32]** %13, align 8
  store [4 x i32]* %5, [4 x i32]** %14, align 8
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  %25 = load float*, float** %10, align 8
  %26 = getelementptr inbounds float, float* %25, i64 1
  %27 = load float, float* %26, align 4
  %28 = fneg float %27
  %29 = call float @asinf(float %28) #3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load float*, float** %31, align 8
  %33 = getelementptr inbounds float, float* %32, i64 1
  %34 = load float, float* %33, align 4
  %35 = fmul float %29, %34
  store float %35, float* %17, align 4
  %36 = load float*, float** %10, align 8
  %37 = getelementptr inbounds float, float* %36, i64 0
  %38 = load float, float* %37, align 4
  %39 = load float*, float** %10, align 8
  %40 = getelementptr inbounds float, float* %39, i64 2
  %41 = load float, float* %40, align 4
  %42 = fneg float %41
  %43 = call float @atan2f(float %38, float %42) #3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load float*, float** %45, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  %48 = load float, float* %47, align 4
  %49 = fmul float %43, %48
  %50 = load float, float* %17, align 4
  %51 = call float @cosf(float %50) #3
  %52 = fmul float %49, %51
  store float %52, float* %18, align 4
  %53 = load float, float* %18, align 4
  %54 = load float, float* @M_PI, align 4
  %55 = fdiv float %53, %54
  %56 = fadd float %55, 1.000000e+00
  %57 = load i32, i32* %11, align 4
  %58 = sitofp i32 %57 to float
  %59 = fmul float %56, %58
  %60 = fdiv float %59, 2.000000e+00
  store float %60, float* %19, align 4
  %61 = load float, float* %17, align 4
  %62 = load float, float* @M_PI_2, align 4
  %63 = fdiv float %61, %62
  %64 = fadd float %63, 1.000000e+00
  %65 = load i32, i32* %12, align 4
  %66 = sitofp i32 %65 to float
  %67 = fmul float %64, %66
  %68 = fdiv float %67, 2.000000e+00
  store float %68, float* %20, align 4
  %69 = load float, float* %19, align 4
  %70 = call i32 @floorf(float %69)
  store i32 %70, i32* %21, align 4
  %71 = load float, float* %20, align 4
  %72 = call i32 @floorf(float %71)
  store i32 %72, i32* %22, align 4
  %73 = load float, float* %19, align 4
  %74 = load i32, i32* %21, align 4
  %75 = sitofp i32 %74 to float
  %76 = fsub float %73, %75
  %77 = load float*, float** %15, align 8
  store float %76, float* %77, align 4
  %78 = load float, float* %20, align 4
  %79 = load i32, i32* %22, align 4
  %80 = sitofp i32 %79 to float
  %81 = fsub float %78, %80
  %82 = load float*, float** %16, align 8
  store float %81, float* %82, align 4
  store i32 -1, i32* %23, align 4
  br label %83

83:                                               ; preds = %125, %8
  %84 = load i32, i32* %23, align 4
  %85 = icmp slt i32 %84, 3
  br i1 %85, label %86, label %128

86:                                               ; preds = %83
  store i32 -1, i32* %24, align 4
  br label %87

87:                                               ; preds = %121, %86
  %88 = load i32, i32* %24, align 4
  %89 = icmp slt i32 %88, 3
  br i1 %89, label %90, label %124

90:                                               ; preds = %87
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* %24, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %11, align 4
  %95 = sub nsw i32 %94, 1
  %96 = call i32 @av_clip(i32 %93, i32 0, i32 %95)
  %97 = load [4 x i32]*, [4 x i32]** %13, align 8
  %98 = load i32, i32* %23, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %97, i64 %100
  %102 = load i32, i32* %24, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %101, i64 0, i64 %104
  store i32 %96, i32* %105, align 4
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* %23, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %12, align 4
  %110 = sub nsw i32 %109, 1
  %111 = call i32 @av_clip(i32 %108, i32 0, i32 %110)
  %112 = load [4 x i32]*, [4 x i32]** %14, align 8
  %113 = load i32, i32* %23, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %112, i64 %115
  %117 = load i32, i32* %24, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %116, i64 0, i64 %119
  store i32 %111, i32* %120, align 4
  br label %121

121:                                              ; preds = %90
  %122 = load i32, i32* %24, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %24, align 4
  br label %87

124:                                              ; preds = %87
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %23, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %23, align 4
  br label %83

128:                                              ; preds = %83
  ret void
}

; Function Attrs: nounwind
declare dso_local float @asinf(float) #1

; Function Attrs: nounwind
declare dso_local float @atan2f(float, float) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

declare dso_local i32 @floorf(float) #2

declare dso_local i32 @av_clip(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
