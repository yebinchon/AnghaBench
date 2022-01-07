; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_dec_lpc_spectrum_inv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_dec_lpc_spectrum_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, float*, i32, float*)* @dec_lpc_spectrum_inv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dec_lpc_spectrum_inv(%struct.TYPE_9__* %0, float* %1, i32 %2, float* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store float* %3, float** %8, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %15, %25
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %48, %4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %27
  %36 = load float*, float** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  %40 = load float, float* %39, align 4
  %41 = call i32 @cos(float %40)
  %42 = mul nsw i32 2, %41
  %43 = sitofp i32 %42 to float
  %44 = load float*, float** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  store float %43, float* %47, align 4
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %27

51:                                               ; preds = %27
  %52 = load i32, i32* %7, align 4
  switch i32 %52, label %72 [
    i32 130, label %53
    i32 129, label %60
    i32 128, label %67
  ]

53:                                               ; preds = %51
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load float*, float** %6, align 8
  %57 = load float*, float** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @eval_lpcenv_2parts(%struct.TYPE_9__* %54, i32 %55, float* %56, float* %57, i32 %58, i32 8)
  br label %72

60:                                               ; preds = %51
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load float*, float** %6, align 8
  %64 = load float*, float** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @eval_lpcenv_2parts(%struct.TYPE_9__* %61, i32 %62, float* %63, float* %64, i32 %65, i32 2)
  br label %72

67:                                               ; preds = %51
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = load float*, float** %6, align 8
  %70 = load float*, float** %8, align 8
  %71 = call i32 @eval_lpcenv(%struct.TYPE_9__* %68, float* %69, float* %70)
  br label %72

72:                                               ; preds = %51, %67, %60, %53
  ret void
}

declare dso_local i32 @cos(float) #1

declare dso_local i32 @eval_lpcenv_2parts(%struct.TYPE_9__*, i32, float*, float*, i32, i32) #1

declare dso_local i32 @eval_lpcenv(%struct.TYPE_9__*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
