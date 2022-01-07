; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_stereographic.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_stereographic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, i32, i32, [4 x i32]*, [4 x i32]*, float*, float*)* @xyz_to_stereographic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xyz_to_stereographic(%struct.TYPE_3__* %0, float* %1, i32 %2, i32 %3, [4 x i32]* %4, [4 x i32]* %5, float* %6, float* %7) #0 {
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
  %29 = getelementptr inbounds float, float* %28, i64 1
  %30 = load float, float* %29, align 4
  %31 = fsub float 1.000000e+00, %30
  %32 = fdiv float %27, %31
  %33 = call float @av_clipf(float %32, float -1.000000e+00, float 1.000000e+00)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load float*, float** %35, align 8
  %37 = getelementptr inbounds float, float* %36, i64 0
  %38 = load float, float* %37, align 4
  %39 = fmul float %33, %38
  store float %39, float* %17, align 4
  %40 = load float*, float** %10, align 8
  %41 = getelementptr inbounds float, float* %40, i64 2
  %42 = load float, float* %41, align 4
  %43 = load float*, float** %10, align 8
  %44 = getelementptr inbounds float, float* %43, i64 1
  %45 = load float, float* %44, align 4
  %46 = fsub float 1.000000e+00, %45
  %47 = fdiv float %42, %46
  %48 = call float @av_clipf(float %47, float -1.000000e+00, float 1.000000e+00)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load float*, float** %50, align 8
  %52 = getelementptr inbounds float, float* %51, i64 1
  %53 = load float, float* %52, align 4
  %54 = fmul float %48, %53
  store float %54, float* %18, align 4
  %55 = load float, float* %17, align 4
  %56 = fadd float %55, 1.000000e+00
  %57 = load i32, i32* %11, align 4
  %58 = sitofp i32 %57 to float
  %59 = fmul float %56, %58
  %60 = fdiv float %59, 2.000000e+00
  store float %60, float* %19, align 4
  %61 = load float, float* %18, align 4
  %62 = fadd float %61, 1.000000e+00
  %63 = load i32, i32* %12, align 4
  %64 = sitofp i32 %63 to float
  %65 = fmul float %62, %64
  %66 = fdiv float %65, 2.000000e+00
  store float %66, float* %20, align 4
  %67 = load float, float* %19, align 4
  %68 = call i32 @floorf(float %67)
  store i32 %68, i32* %21, align 4
  %69 = load float, float* %20, align 4
  %70 = call i32 @floorf(float %69)
  store i32 %70, i32* %22, align 4
  %71 = load float, float* %19, align 4
  %72 = load i32, i32* %21, align 4
  %73 = sitofp i32 %72 to float
  %74 = fsub float %71, %73
  %75 = load float*, float** %15, align 8
  store float %74, float* %75, align 4
  %76 = load float, float* %20, align 4
  %77 = load i32, i32* %22, align 4
  %78 = sitofp i32 %77 to float
  %79 = fsub float %76, %78
  %80 = load float*, float** %16, align 8
  store float %79, float* %80, align 4
  store i32 -1, i32* %23, align 4
  br label %81

81:                                               ; preds = %123, %8
  %82 = load i32, i32* %23, align 4
  %83 = icmp slt i32 %82, 3
  br i1 %83, label %84, label %126

84:                                               ; preds = %81
  store i32 -1, i32* %24, align 4
  br label %85

85:                                               ; preds = %119, %84
  %86 = load i32, i32* %24, align 4
  %87 = icmp slt i32 %86, 3
  br i1 %87, label %88, label %122

88:                                               ; preds = %85
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %24, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %92, 1
  %94 = call i32 @av_clip(i32 %91, i32 0, i32 %93)
  %95 = load [4 x i32]*, [4 x i32]** %13, align 8
  %96 = load i32, i32* %23, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %95, i64 %98
  %100 = load i32, i32* %24, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %99, i64 0, i64 %102
  store i32 %94, i32* %103, align 4
  %104 = load i32, i32* %22, align 4
  %105 = load i32, i32* %23, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* %12, align 4
  %108 = sub nsw i32 %107, 1
  %109 = call i32 @av_clip(i32 %106, i32 0, i32 %108)
  %110 = load [4 x i32]*, [4 x i32]** %14, align 8
  %111 = load i32, i32* %23, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %110, i64 %113
  %115 = load i32, i32* %24, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %114, i64 0, i64 %117
  store i32 %109, i32* %118, align 4
  br label %119

119:                                              ; preds = %88
  %120 = load i32, i32* %24, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %24, align 4
  br label %85

122:                                              ; preds = %85
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %23, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %23, align 4
  br label %81

126:                                              ; preds = %81
  ret void
}

declare dso_local float @av_clipf(float, float, float) #1

declare dso_local i32 @floorf(float) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
