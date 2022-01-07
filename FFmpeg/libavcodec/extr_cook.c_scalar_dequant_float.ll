; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_scalar_dequant_float.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_scalar_dequant_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SUBBAND_SIZE = common dso_local global i32 0, align 4
@quant_centroid_tab = common dso_local global float** null, align 8
@dither_tab = common dso_local global float* null, align 8
@rootpow2tab = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32*, i32*, float*)* @scalar_dequant_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scalar_dequant_float(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3, i32* %4, float* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store float* %5, float** %12, align 8
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %77, %6
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* @SUBBAND_SIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %80

19:                                               ; preds = %15
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %19
  %27 = load float**, float*** @quant_centroid_tab, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float*, float** %27, i64 %29
  %31 = load float*, float** %30, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %31, i64 %37
  %39 = load float, float* %38, align 4
  store float %39, float* %14, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %26
  %47 = load float, float* %14, align 4
  %48 = fneg float %47
  store float %48, float* %14, align 4
  br label %49

49:                                               ; preds = %46, %26
  br label %64

50:                                               ; preds = %19
  %51 = load float*, float** @dither_tab, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  %55 = load float, float* %54, align 4
  store float %55, float* %14, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i32 @av_lfg_get(i32* %57)
  %59 = icmp ult i32 %58, -2147483648
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load float, float* %14, align 4
  %62 = fneg float %61
  store float %62, float* %14, align 4
  br label %63

63:                                               ; preds = %60, %50
  br label %64

64:                                               ; preds = %63, %49
  %65 = load float, float* %14, align 4
  %66 = load float*, float** @rootpow2tab, align 8
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 63
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %66, i64 %69
  %71 = load float, float* %70, align 4
  %72 = fmul float %65, %71
  %73 = load float*, float** %12, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  store float %72, float* %76, align 4
  br label %77

77:                                               ; preds = %64
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %15

80:                                               ; preds = %15
  ret void
}

declare dso_local i32 @av_lfg_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
