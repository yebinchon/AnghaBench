; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_bm3d.c_do_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_bm3d.c_do_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { float*, float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32, i32)* @do_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_output(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %108, %5
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %111

40:                                               ; preds = %36
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %104, %40
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %107

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  store i32* %51, i32** %16, align 8
  store float 0.000000e+00, float* %17, align 4
  store float 0.000000e+00, float* %18, align 4
  store i32 0, i32* %15, align 4
  br label %52

52:                                               ; preds = %91, %45
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %94

56:                                               ; preds = %52
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %19, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load float*, float** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %12, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %65, i64 %71
  %73 = load float, float* %72, align 4
  store float %73, float* %20, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load float*, float** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %76, i64 %82
  %84 = load float, float* %83, align 4
  store float %84, float* %21, align 4
  %85 = load float, float* %20, align 4
  %86 = load float, float* %18, align 4
  %87 = fadd float %86, %85
  store float %87, float* %18, align 4
  %88 = load float, float* %21, align 4
  %89 = load float, float* %17, align 4
  %90 = fadd float %89, %88
  store float %90, float* %17, align 4
  br label %91

91:                                               ; preds = %56
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %52

94:                                               ; preds = %52
  %95 = load float, float* %18, align 4
  %96 = load float, float* %17, align 4
  %97 = fdiv float %95, %96
  %98 = call i32 @lrintf(float %97)
  %99 = call i32 @av_clip_uint8(i32 %98)
  %100 = load i32*, i32** %16, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %94
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %41

107:                                              ; preds = %41
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %36

111:                                              ; preds = %36
  ret void
}

declare dso_local i32 @av_clip_uint8(i32) #1

declare dso_local i32 @lrintf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
