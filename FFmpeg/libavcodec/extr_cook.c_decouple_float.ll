; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_decouple_float.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_decouple_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SUBBAND_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32, float, float, float*, float*, float*)* @decouple_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decouple_float(i32* %0, %struct.TYPE_3__* %1, i32 %2, float %3, float %4, float* %5, float* %6, float* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %10, align 8
  store i32 %2, i32* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float* %5, float** %14, align 8
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  store i32 0, i32* %17, align 4
  br label %19

19:                                               ; preds = %63, %8
  %20 = load i32, i32* %17, align 4
  %21 = load i32, i32* @SUBBAND_SIZE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %19
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* @SUBBAND_SIZE, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %17, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %18, align 4
  %33 = load float, float* %12, align 4
  %34 = load float*, float** %14, align 8
  %35 = load i32, i32* %18, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %34, i64 %36
  %38 = load float, float* %37, align 4
  %39 = fmul float %33, %38
  %40 = load float*, float** %15, align 8
  %41 = load i32, i32* @SUBBAND_SIZE, align 4
  %42 = load i32, i32* %11, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %17, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %40, i64 %46
  store float %39, float* %47, align 4
  %48 = load float, float* %13, align 4
  %49 = load float*, float** %14, align 8
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  %53 = load float, float* %52, align 4
  %54 = fmul float %48, %53
  %55 = load float*, float** %16, align 8
  %56 = load i32, i32* @SUBBAND_SIZE, align 4
  %57 = load i32, i32* %11, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %55, i64 %61
  store float %54, float* %62, align 4
  br label %63

63:                                               ; preds = %23
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %17, align 4
  br label %19

66:                                               ; preds = %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
