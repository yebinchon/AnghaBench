; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dolby_e.c_apply_gain.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dolby_e.c_apply_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (float*, float*, float, i32)* }

@gain_tab = common dso_local global float* null, align 8
@FRAME_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, float*)* @apply_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_gain(%struct.TYPE_5__* %0, i32 %1, i32 %2, float* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store float* %3, float** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 960
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 960
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %85

18:                                               ; preds = %14, %4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (float*, float*, float, i32)*, i32 (float*, float*, float, i32)** %26, align 8
  %28 = load float*, float** %8, align 8
  %29 = load float*, float** %8, align 8
  %30 = load float*, float** @gain_tab, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  %34 = load float, float* %33, align 4
  %35 = load i32, i32* @FRAME_SAMPLES, align 4
  %36 = call i32 %27(float* %28, float* %29, float %34, i32 %35)
  br label %85

37:                                               ; preds = %18
  %38 = load float*, float** @gain_tab, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  %42 = load float, float* %41, align 4
  %43 = load i32, i32* @FRAME_SAMPLES, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sitofp i32 %44 to float
  %46 = fdiv float 1.000000e+00, %45
  %47 = fmul float %42, %46
  store float %47, float* %9, align 4
  %48 = load float*, float** @gain_tab, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load float, float* %51, align 4
  %53 = load i32, i32* @FRAME_SAMPLES, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sitofp i32 %54 to float
  %56 = fdiv float 1.000000e+00, %55
  %57 = fmul float %52, %56
  store float %57, float* %10, align 4
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %81, %37
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @FRAME_SAMPLES, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  %63 = load float, float* %9, align 4
  %64 = load i32, i32* @FRAME_SAMPLES, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sub nsw i32 %66, 1
  %68 = sitofp i32 %67 to float
  %69 = fmul float %63, %68
  %70 = load float, float* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sitofp i32 %71 to float
  %73 = fmul float %70, %72
  %74 = fadd float %69, %73
  %75 = load float*, float** %8, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fmul float %79, %74
  store float %80, float* %78, align 4
  br label %81

81:                                               ; preds = %62
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %58

84:                                               ; preds = %58
  br label %85

85:                                               ; preds = %17, %84, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
