; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake.c_deshake_transform_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake.c_deshake_transform_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, float*, float*, i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__*)* @deshake_transform_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deshake_transform_c(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5, float* %6, i32 %7, i32 %8, %struct.TYPE_4__* %9, %struct.TYPE_4__* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_4__*, align 8
  %23 = alloca %struct.TYPE_4__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [3 x float*], align 16
  %27 = alloca [3 x i32], align 4
  %28 = alloca [3 x i32], align 4
  store i32* %0, i32** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store float* %5, float** %18, align 8
  store float* %6, float** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %22, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %29 = load float*, float** %18, align 8
  %30 = getelementptr inbounds [3 x float*], [3 x float*]* %26, i64 0, i64 0
  store float* %29, float** %30, align 16
  %31 = load float*, float** %19, align 8
  %32 = getelementptr inbounds [3 x float*], [3 x float*]* %26, i64 0, i64 2
  store float* %31, float** %32, align 16
  %33 = getelementptr inbounds [3 x float*], [3 x float*]* %26, i64 0, i64 1
  store float* %31, float** %33, align 8
  %34 = load i32, i32* %14, align 4
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %16, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 2
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %15, align 4
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 0, i64 0
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %17, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 0, i64 2
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 0, i64 1
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %24, align 4
  br label %44

44:                                               ; preds = %96, %11
  %45 = load i32, i32* %24, align 4
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %47, label %99

47:                                               ; preds = %44
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %24, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %24, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %24, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %24, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %24, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %24, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %24, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [3 x float*], [3 x float*]* %26, i64 0, i64 %85
  %87 = load float*, float** %86, align 8
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %21, align 4
  %90 = call i32 @avfilter_transform(i32 %54, i32 %61, i32 %68, i32 %75, i32 %79, i32 %83, float* %87, i32 %88, i32 %89)
  store i32 %90, i32* %25, align 4
  %91 = load i32, i32* %25, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %47
  %94 = load i32, i32* %25, align 4
  store i32 %94, i32* %12, align 4
  br label %101

95:                                               ; preds = %47
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %24, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %24, align 4
  br label %44

99:                                               ; preds = %44
  %100 = load i32, i32* %25, align 4
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %99, %93
  %102 = load i32, i32* %12, align 4
  ret i32 %102
}

declare dso_local i32 @avfilter_transform(i32, i32, i32, i32, i32, i32, float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
