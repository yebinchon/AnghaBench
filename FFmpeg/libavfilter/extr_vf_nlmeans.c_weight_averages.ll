; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nlmeans.c_weight_averages.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nlmeans.c_weight_averages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.weighted_avg = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, float*, i32, %struct.weighted_avg*, i32, i32, i32)* @weight_averages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @weight_averages(float* %0, i32 %1, float* %2, i32 %3, %struct.weighted_avg* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.weighted_avg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store i32 %1, i32* %10, align 4
  store float* %2, float** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.weighted_avg* %4, %struct.weighted_avg** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %84, %8
  %20 = load i32, i32* %18, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %87

23:                                               ; preds = %19
  store i32 0, i32* %17, align 4
  br label %24

24:                                               ; preds = %68, %23
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %24
  %29 = load %struct.weighted_avg*, %struct.weighted_avg** %13, align 8
  %30 = load i32, i32* %17, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.weighted_avg, %struct.weighted_avg* %29, i64 %31
  %33 = getelementptr inbounds %struct.weighted_avg, %struct.weighted_avg* %32, i32 0, i32 0
  %34 = load float, float* %33, align 4
  %35 = fadd float %34, 1.000000e+00
  store float %35, float* %33, align 4
  %36 = load float*, float** %11, align 8
  %37 = load i32, i32* %17, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  %40 = load float, float* %39, align 4
  %41 = fmul float 1.000000e+00, %40
  %42 = load %struct.weighted_avg*, %struct.weighted_avg** %13, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.weighted_avg, %struct.weighted_avg* %42, i64 %44
  %46 = getelementptr inbounds %struct.weighted_avg, %struct.weighted_avg* %45, i32 0, i32 1
  %47 = load float, float* %46, align 4
  %48 = fadd float %47, %41
  store float %48, float* %46, align 4
  %49 = load %struct.weighted_avg*, %struct.weighted_avg** %13, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.weighted_avg, %struct.weighted_avg* %49, i64 %51
  %53 = getelementptr inbounds %struct.weighted_avg, %struct.weighted_avg* %52, i32 0, i32 1
  %54 = load float, float* %53, align 4
  %55 = load %struct.weighted_avg*, %struct.weighted_avg** %13, align 8
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.weighted_avg, %struct.weighted_avg* %55, i64 %57
  %59 = getelementptr inbounds %struct.weighted_avg, %struct.weighted_avg* %58, i32 0, i32 0
  %60 = load float, float* %59, align 4
  %61 = fdiv float %54, %60
  %62 = fadd float %61, 5.000000e-01
  %63 = call float @av_clip_uint8(float %62)
  %64 = load float*, float** %9, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  store float %63, float* %67, align 4
  br label %68

68:                                               ; preds = %28
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %17, align 4
  br label %24

71:                                               ; preds = %24
  %72 = load i32, i32* %10, align 4
  %73 = load float*, float** %9, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds float, float* %73, i64 %74
  store float* %75, float** %9, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load float*, float** %11, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds float, float* %77, i64 %78
  store float* %79, float** %11, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.weighted_avg*, %struct.weighted_avg** %13, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds %struct.weighted_avg, %struct.weighted_avg* %81, i64 %82
  store %struct.weighted_avg* %83, %struct.weighted_avg** %13, align 8
  br label %84

84:                                               ; preds = %71
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %18, align 4
  br label %19

87:                                               ; preds = %19
  ret void
}

declare dso_local float @av_clip_uint8(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
