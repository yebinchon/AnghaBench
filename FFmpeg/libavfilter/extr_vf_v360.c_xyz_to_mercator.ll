; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_mercator.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_mercator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float* }

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, i32, i32, [4 x i32]*, [4 x i32]*, float*, float*)* @xyz_to_mercator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xyz_to_mercator(%struct.TYPE_3__* %0, float* %1, i32 %2, i32 %3, [4 x i32]* %4, [4 x i32]* %5, float* %6, float* %7) #0 {
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
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load float*, float** %44, align 8
  %46 = getelementptr inbounds float, float* %45, i64 1
  %47 = load float, float* %46, align 4
  %48 = fmul float %42, %47
  store float %48, float* %18, align 4
  %49 = load float, float* %17, align 4
  %50 = load float, float* @M_PI, align 4
  %51 = fdiv float %49, %50
  %52 = fadd float %51, 1.000000e+00
  %53 = load i32, i32* %11, align 4
  %54 = sitofp i32 %53 to float
  %55 = fmul float %52, %54
  %56 = fdiv float %55, 2.000000e+00
  store float %56, float* %19, align 4
  %57 = load float, float* %18, align 4
  %58 = fadd float 1.000000e+00, %57
  %59 = load float, float* %18, align 4
  %60 = fsub float 1.000000e+00, %59
  %61 = fdiv float %58, %60
  %62 = call float @logf(float %61) #3
  %63 = load float, float* @M_PI, align 4
  %64 = fmul float 2.000000e+00, %63
  %65 = fdiv float %62, %64
  %66 = call float @av_clipf(float %65, float -1.000000e+00, float 1.000000e+00)
  %67 = fadd float %66, 1.000000e+00
  %68 = load i32, i32* %12, align 4
  %69 = sitofp i32 %68 to float
  %70 = fmul float %67, %69
  %71 = fdiv float %70, 2.000000e+00
  store float %71, float* %20, align 4
  %72 = load float, float* %19, align 4
  %73 = call i32 @floorf(float %72)
  store i32 %73, i32* %21, align 4
  %74 = load float, float* %20, align 4
  %75 = call i32 @floorf(float %74)
  store i32 %75, i32* %22, align 4
  %76 = load float, float* %19, align 4
  %77 = load i32, i32* %21, align 4
  %78 = sitofp i32 %77 to float
  %79 = fsub float %76, %78
  %80 = load float*, float** %15, align 8
  store float %79, float* %80, align 4
  %81 = load float, float* %20, align 4
  %82 = load i32, i32* %22, align 4
  %83 = sitofp i32 %82 to float
  %84 = fsub float %81, %83
  %85 = load float*, float** %16, align 8
  store float %84, float* %85, align 4
  store i32 -1, i32* %23, align 4
  br label %86

86:                                               ; preds = %128, %8
  %87 = load i32, i32* %23, align 4
  %88 = icmp slt i32 %87, 3
  br i1 %88, label %89, label %131

89:                                               ; preds = %86
  store i32 -1, i32* %24, align 4
  br label %90

90:                                               ; preds = %124, %89
  %91 = load i32, i32* %24, align 4
  %92 = icmp slt i32 %91, 3
  br i1 %92, label %93, label %127

93:                                               ; preds = %90
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %24, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %11, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i32 @av_clip(i32 %96, i32 0, i32 %98)
  %100 = load [4 x i32]*, [4 x i32]** %13, align 8
  %101 = load i32, i32* %23, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %100, i64 %103
  %105 = load i32, i32* %24, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %104, i64 0, i64 %107
  store i32 %99, i32* %108, align 4
  %109 = load i32, i32* %22, align 4
  %110 = load i32, i32* %23, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %112, 1
  %114 = call i32 @av_clip(i32 %111, i32 0, i32 %113)
  %115 = load [4 x i32]*, [4 x i32]** %14, align 8
  %116 = load i32, i32* %23, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %115, i64 %118
  %120 = load i32, i32* %24, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %119, i64 0, i64 %122
  store i32 %114, i32* %123, align 4
  br label %124

124:                                              ; preds = %93
  %125 = load i32, i32* %24, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %24, align 4
  br label %90

127:                                              ; preds = %90
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %23, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %23, align 4
  br label %86

131:                                              ; preds = %86
  ret void
}

; Function Attrs: nounwind
declare dso_local float @atan2f(float, float) #1

declare dso_local float @av_clipf(float, float, float) #2

; Function Attrs: nounwind
declare dso_local float @logf(float) #1

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
