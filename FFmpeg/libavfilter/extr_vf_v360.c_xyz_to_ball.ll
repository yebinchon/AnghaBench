; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_ball.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_ball.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float* }

@M_SQRT2 = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, i32, i32, [4 x i32]*, [4 x i32]*, float*, float*)* @xyz_to_ball to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xyz_to_ball(%struct.TYPE_3__* %0, float* %1, i32 %2, i32 %3, [4 x i32]* %4, [4 x i32]* %5, float* %6, float* %7) #0 {
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
  %31 = call float @hypotf(float %27, float %30) #3
  store float %31, float* %17, align 4
  %32 = load float*, float** %10, align 8
  %33 = getelementptr inbounds float, float* %32, i64 2
  %34 = load float, float* %33, align 4
  %35 = fadd float 1.000000e+00, %34
  %36 = call float @sqrtf(float %35) #3
  %37 = load float, float* @M_SQRT2, align 4
  %38 = fdiv float %36, %37
  store float %38, float* %18, align 4
  %39 = load float, float* %18, align 4
  %40 = load float*, float** %10, align 8
  %41 = getelementptr inbounds float, float* %40, i64 0
  %42 = load float, float* %41, align 4
  %43 = fmul float %39, %42
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load float*, float** %45, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  %48 = load float, float* %47, align 4
  %49 = fmul float %43, %48
  %50 = load float, float* %17, align 4
  %51 = fcmp ogt float %50, 0.000000e+00
  br i1 %51, label %52, label %54

52:                                               ; preds = %8
  %53 = load float, float* %17, align 4
  br label %55

54:                                               ; preds = %8
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi float [ %53, %52 ], [ 1.000000e+00, %54 ]
  %57 = fdiv float %49, %56
  %58 = fadd float 1.000000e+00, %57
  %59 = load i32, i32* %11, align 4
  %60 = sitofp i32 %59 to float
  %61 = fmul float %58, %60
  %62 = fmul float %61, 5.000000e-01
  store float %62, float* %19, align 4
  %63 = load float, float* %18, align 4
  %64 = load float*, float** %10, align 8
  %65 = getelementptr inbounds float, float* %64, i64 1
  %66 = load float, float* %65, align 4
  %67 = fmul float %63, %66
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load float*, float** %69, align 8
  %71 = getelementptr inbounds float, float* %70, i64 1
  %72 = load float, float* %71, align 4
  %73 = fmul float %67, %72
  %74 = load float, float* %17, align 4
  %75 = fcmp ogt float %74, 0.000000e+00
  br i1 %75, label %76, label %78

76:                                               ; preds = %55
  %77 = load float, float* %17, align 4
  br label %79

78:                                               ; preds = %55
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi float [ %77, %76 ], [ 1.000000e+00, %78 ]
  %81 = fdiv float %73, %80
  %82 = fsub float 1.000000e+00, %81
  %83 = load i32, i32* %12, align 4
  %84 = sitofp i32 %83 to float
  %85 = fmul float %82, %84
  %86 = fmul float %85, 5.000000e-01
  store float %86, float* %20, align 4
  %87 = load float, float* %19, align 4
  %88 = call i32 @floorf(float %87)
  store i32 %88, i32* %21, align 4
  %89 = load float, float* %20, align 4
  %90 = call i32 @floorf(float %89)
  store i32 %90, i32* %22, align 4
  %91 = load float, float* %19, align 4
  %92 = load i32, i32* %21, align 4
  %93 = sitofp i32 %92 to float
  %94 = fsub float %91, %93
  %95 = load float*, float** %15, align 8
  store float %94, float* %95, align 4
  %96 = load float, float* %20, align 4
  %97 = load i32, i32* %22, align 4
  %98 = sitofp i32 %97 to float
  %99 = fsub float %96, %98
  %100 = load float*, float** %16, align 8
  store float %99, float* %100, align 4
  store i32 -1, i32* %23, align 4
  br label %101

101:                                              ; preds = %143, %79
  %102 = load i32, i32* %23, align 4
  %103 = icmp slt i32 %102, 3
  br i1 %103, label %104, label %146

104:                                              ; preds = %101
  store i32 -1, i32* %24, align 4
  br label %105

105:                                              ; preds = %139, %104
  %106 = load i32, i32* %24, align 4
  %107 = icmp slt i32 %106, 3
  br i1 %107, label %108, label %142

108:                                              ; preds = %105
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %24, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %11, align 4
  %113 = sub nsw i32 %112, 1
  %114 = call i32 @av_clip(i32 %111, i32 0, i32 %113)
  %115 = load [4 x i32]*, [4 x i32]** %13, align 8
  %116 = load i32, i32* %23, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %115, i64 %118
  %120 = load i32, i32* %24, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %119, i64 0, i64 %122
  store i32 %114, i32* %123, align 4
  %124 = load i32, i32* %22, align 4
  %125 = load i32, i32* %23, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* %12, align 4
  %128 = sub nsw i32 %127, 1
  %129 = call i32 @av_clip(i32 %126, i32 0, i32 %128)
  %130 = load [4 x i32]*, [4 x i32]** %14, align 8
  %131 = load i32, i32* %23, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %130, i64 %133
  %135 = load i32, i32* %24, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %134, i64 0, i64 %137
  store i32 %129, i32* %138, align 4
  br label %139

139:                                              ; preds = %108
  %140 = load i32, i32* %24, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %24, align 4
  br label %105

142:                                              ; preds = %105
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %23, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %23, align 4
  br label %101

146:                                              ; preds = %101
  ret void
}

; Function Attrs: nounwind
declare dso_local float @hypotf(float, float) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

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
