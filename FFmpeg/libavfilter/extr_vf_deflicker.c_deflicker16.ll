; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deflicker.c_deflicker16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deflicker.c_deflicker16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32*, i32, i32, i32, float)* @deflicker16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflicker16(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, float %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store float %7, float* %16, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %17, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = bitcast i32* %26 to float*
  store float* %27, float** %18, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = bitcast i32* %28 to float*
  store float* %29, float** %19, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %20, align 4
  store i32 0, i32* %22, align 4
  br label %35

35:                                               ; preds = %72, %8
  %36 = load i32, i32* %22, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %75

39:                                               ; preds = %35
  store i32 0, i32* %21, align 4
  br label %40

40:                                               ; preds = %58, %39
  %41 = load i32, i32* %21, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load float*, float** %18, align 8
  %46 = load i32, i32* %21, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  %49 = load float, float* %48, align 4
  %50 = load float, float* %16, align 4
  %51 = fmul float %49, %50
  %52 = load i32, i32* %20, align 4
  %53 = call float @av_clip(float %51, i32 0, i32 %52)
  %54 = load float*, float** %19, align 8
  %55 = load i32, i32* %21, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %54, i64 %56
  store float %53, float* %57, align 4
  br label %58

58:                                               ; preds = %44
  %59 = load i32, i32* %21, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %21, align 4
  br label %40

61:                                               ; preds = %40
  %62 = load i32, i32* %13, align 4
  %63 = sdiv i32 %62, 2
  %64 = load float*, float** %19, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds float, float* %64, i64 %65
  store float* %66, float** %19, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sdiv i32 %67, 2
  %69 = load float*, float** %18, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds float, float* %69, i64 %70
  store float* %71, float** %18, align 8
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %22, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %22, align 4
  br label %35

75:                                               ; preds = %35
  ret i32 0
}

declare dso_local float @av_clip(float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
