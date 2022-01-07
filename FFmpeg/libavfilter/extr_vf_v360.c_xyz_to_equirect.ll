; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_equirect.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_equirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float* }

@M_PI = common dso_local global float 0.000000e+00, align 4
@M_PI_2 = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, i32, i32, [4 x i32]*, [4 x i32]*, float*, float*)* @xyz_to_equirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xyz_to_equirect(%struct.TYPE_3__* %0, float* %1, i32 %2, i32 %3, [4 x i32]* %4, [4 x i32]* %5, float* %6, float* %7) #0 {
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
  %26 = getelementptr inbounds float, float* %25, i64 0
  %27 = load float, float* %26, align 4
  %28 = load float*, float** %10, align 8
  %29 = getelementptr inbounds float, float* %28, i64 2
  %30 = load float, float* %29, align 4
  %31 = fneg float %30
  %32 = call float @atan2f(float %27, float %31) #3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load float*, float** %34, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  %37 = load float, float* %36, align 4
  %38 = fmul float %32, %37
  store float %38, float* %17, align 4
  %39 = load float*, float** %10, align 8
  %40 = getelementptr inbounds float, float* %39, i64 1
  %41 = load float, float* %40, align 4
  %42 = fneg float %41
  %43 = call float @asinf(float %42) #3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load float*, float** %45, align 8
  %47 = getelementptr inbounds float, float* %46, i64 1
  %48 = load float, float* %47, align 4
  %49 = fmul float %43, %48
  store float %49, float* %18, align 4
  %50 = load float, float* %17, align 4
  %51 = load float, float* @M_PI, align 4
  %52 = fdiv float %50, %51
  %53 = fadd float %52, 1.000000e+00
  %54 = load i32, i32* %11, align 4
  %55 = sitofp i32 %54 to float
  %56 = fmul float %53, %55
  %57 = fdiv float %56, 2.000000e+00
  store float %57, float* %19, align 4
  %58 = load float, float* %18, align 4
  %59 = load float, float* @M_PI_2, align 4
  %60 = fdiv float %58, %59
  %61 = fadd float %60, 1.000000e+00
  %62 = load i32, i32* %12, align 4
  %63 = sitofp i32 %62 to float
  %64 = fmul float %61, %63
  %65 = fdiv float %64, 2.000000e+00
  store float %65, float* %20, align 4
  %66 = load float, float* %19, align 4
  %67 = call i32 @floorf(float %66)
  store i32 %67, i32* %21, align 4
  %68 = load float, float* %20, align 4
  %69 = call i32 @floorf(float %68)
  store i32 %69, i32* %22, align 4
  %70 = load float, float* %19, align 4
  %71 = load i32, i32* %21, align 4
  %72 = sitofp i32 %71 to float
  %73 = fsub float %70, %72
  %74 = load float*, float** %15, align 8
  store float %73, float* %74, align 4
  %75 = load float, float* %20, align 4
  %76 = load i32, i32* %22, align 4
  %77 = sitofp i32 %76 to float
  %78 = fsub float %75, %77
  %79 = load float*, float** %16, align 8
  store float %78, float* %79, align 4
  store i32 -1, i32* %23, align 4
  br label %80

80:                                               ; preds = %121, %8
  %81 = load i32, i32* %23, align 4
  %82 = icmp slt i32 %81, 3
  br i1 %82, label %83, label %124

83:                                               ; preds = %80
  store i32 -1, i32* %24, align 4
  br label %84

84:                                               ; preds = %117, %83
  %85 = load i32, i32* %24, align 4
  %86 = icmp slt i32 %85, 3
  br i1 %86, label %87, label %120

87:                                               ; preds = %84
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* %24, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @mod(i32 %90, i32 %91)
  %93 = load [4 x i32]*, [4 x i32]** %13, align 8
  %94 = load i32, i32* %23, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %93, i64 %96
  %98 = load i32, i32* %24, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %97, i64 0, i64 %100
  store i32 %92, i32* %101, align 4
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* %23, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %12, align 4
  %106 = sub nsw i32 %105, 1
  %107 = call i32 @av_clip(i32 %104, i32 0, i32 %106)
  %108 = load [4 x i32]*, [4 x i32]** %14, align 8
  %109 = load i32, i32* %23, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %108, i64 %111
  %113 = load i32, i32* %24, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %112, i64 0, i64 %115
  store i32 %107, i32* %116, align 4
  br label %117

117:                                              ; preds = %87
  %118 = load i32, i32* %24, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %24, align 4
  br label %84

120:                                              ; preds = %84
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %23, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %23, align 4
  br label %80

124:                                              ; preds = %80
  ret void
}

; Function Attrs: nounwind
declare dso_local float @atan2f(float, float) #1

; Function Attrs: nounwind
declare dso_local float @asinf(float) #1

declare dso_local i32 @floorf(float) #2

declare dso_local i32 @mod(i32, i32) #2

declare dso_local i32 @av_clip(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
