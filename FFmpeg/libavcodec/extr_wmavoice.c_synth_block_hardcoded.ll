; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_synth_block_hardcoded.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_synth_block_hardcoded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, i32, i32 }
%struct.frame_type_desc = type { i64 }

@MAX_FRAMESIZE = common dso_local global i32 0, align 4
@FCB_TYPE_SILENCE = common dso_local global i64 0, align 8
@wmavoice_gain_universal = common dso_local global float* null, align 8
@wmavoice_std_codebook = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32, i32, %struct.frame_type_desc*, float*)* @synth_block_hardcoded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synth_block_hardcoded(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, %struct.frame_type_desc* %4, float* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.frame_type_desc*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.frame_type_desc* %4, %struct.frame_type_desc** %11, align 8
  store float* %5, float** %12, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @MAX_FRAMESIZE, align 4
  %18 = icmp sle i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @av_assert0(i32 %19)
  %21 = load %struct.frame_type_desc*, %struct.frame_type_desc** %11, align 8
  %22 = getelementptr inbounds %struct.frame_type_desc, %struct.frame_type_desc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FCB_TYPE_SILENCE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %6
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @pRNG(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load float, float* %34, align 4
  store float %35, float* %13, align 4
  br label %45

36:                                               ; preds = %6
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @get_bits(i32* %37, i32 8)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %15, align 4
  %40 = load float*, float** @wmavoice_gain_universal, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i64 @get_bits(i32* %41, i32 6)
  %43 = getelementptr inbounds float, float* %40, i64 %42
  %44 = load float, float* %43, align 4
  store float %44, float* %13, align 4
  br label %45

45:                                               ; preds = %36, %26
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memset(i32 %48, i32 0, i32 4)
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %68, %45
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load float*, float** @wmavoice_std_codebook, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %55, i64 %59
  %61 = load float, float* %60, align 4
  %62 = load float, float* %13, align 4
  %63 = fmul float %61, %62
  %64 = load float*, float** %12, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  store float %63, float* %67, align 4
  br label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %50

71:                                               ; preds = %50
  ret void
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @pRNG(i32, i32, i32) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
