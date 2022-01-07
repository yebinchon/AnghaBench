; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_bilinear_kernel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_bilinear_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, %struct.TYPE_3__*, i32*, i32*, i32*)* @bilinear_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bilinear_kernel(float %0, float %1, %struct.TYPE_3__* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %67, %6
  %16 = load i32, i32* %13, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %70

18:                                               ; preds = %15
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %63, %18
  %20 = load i32, i32* %14, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %66

22:                                               ; preds = %19
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %13, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %25, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %13, align 4
  %38 = mul nsw i32 %37, 2
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  store i32 %35, i32* %42, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %45, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %13, align 4
  %58 = mul nsw i32 %57, 2
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  store i32 %55, i32* %62, align 4
  br label %63

63:                                               ; preds = %22
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %19

66:                                               ; preds = %19
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %15

70:                                               ; preds = %15
  %71 = load float, float* %7, align 4
  %72 = fsub float 1.000000e+00, %71
  %73 = load float, float* %8, align 4
  %74 = fsub float 1.000000e+00, %73
  %75 = fmul float %72, %74
  %76 = fmul float %75, 1.638500e+04
  %77 = call i32 @lrintf(float %76)
  %78 = load i32*, i32** %12, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %77, i32* %79, align 4
  %80 = load float, float* %7, align 4
  %81 = load float, float* %8, align 4
  %82 = fsub float 1.000000e+00, %81
  %83 = fmul float %80, %82
  %84 = fmul float %83, 1.638500e+04
  %85 = call i32 @lrintf(float %84)
  %86 = load i32*, i32** %12, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %85, i32* %87, align 4
  %88 = load float, float* %7, align 4
  %89 = fsub float 1.000000e+00, %88
  %90 = load float, float* %8, align 4
  %91 = fmul float %89, %90
  %92 = fmul float %91, 1.638500e+04
  %93 = call i32 @lrintf(float %92)
  %94 = load i32*, i32** %12, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 %93, i32* %95, align 4
  %96 = load float, float* %7, align 4
  %97 = load float, float* %8, align 4
  %98 = fmul float %96, %97
  %99 = fmul float %98, 1.638500e+04
  %100 = call i32 @lrintf(float %99)
  %101 = load i32*, i32** %12, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  store i32 %100, i32* %102, align 4
  ret void
}

declare dso_local i32 @lrintf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
