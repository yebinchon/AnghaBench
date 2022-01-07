; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_interpolate_float.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_interpolate_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, float* }

@pow2tab = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, i32, i32)* @interpolate_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interpolate_float(%struct.TYPE_3__* %0, float* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load float*, float** @pow2tab, align 8
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 63
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, float* %12, i64 %15
  %17 = load float, float* %16, align 4
  store float %17, float* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %36, %21
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load float, float* %10, align 4
  %30 = load float*, float** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  %34 = load float, float* %33, align 4
  %35 = fmul float %34, %29
  store float %35, float* %33, align 4
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %22

39:                                               ; preds = %22
  br label %72

40:                                               ; preds = %4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load float*, float** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %44, %45
  %47 = add nsw i32 15, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %43, i64 %48
  %50 = load float, float* %49, align 4
  store float %50, float* %11, align 4
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %68, %40
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load float, float* %10, align 4
  %59 = load float*, float** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %59, i64 %61
  %63 = load float, float* %62, align 4
  %64 = fmul float %63, %58
  store float %64, float* %62, align 4
  %65 = load float, float* %11, align 4
  %66 = load float, float* %10, align 4
  %67 = fmul float %66, %65
  store float %67, float* %10, align 4
  br label %68

68:                                               ; preds = %57
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %51

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71, %39
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
