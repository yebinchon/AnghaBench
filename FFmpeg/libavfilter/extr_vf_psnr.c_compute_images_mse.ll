; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_psnr.c_compute_images_mse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_psnr.c_compute_images_mse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (i32*, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32**, i32*, i32**, i32*, i32, i32, double*)* @compute_images_mse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_images_mse(%struct.TYPE_5__* %0, i32** %1, i32* %2, i32** %3, i32* %4, i32 %5, i32 %6, double* %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32** %3, i32*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store double* %7, double** %16, align 8
  store i32 0, i32* %18, align 4
  br label %26

26:                                               ; preds = %105, %8
  %27 = load i32, i32* %18, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %108

32:                                               ; preds = %26
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %18, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %19, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %18, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %20, align 4
  %47 = load i32**, i32*** %10, align 8
  %48 = load i32, i32* %18, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %21, align 8
  %52 = load i32**, i32*** %12, align 8
  %53 = load i32, i32* %18, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %22, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %18, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %23, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %18, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %24, align 4
  store double 0.000000e+00, double* %25, align 8
  store i32 0, i32* %17, align 4
  br label %67

67:                                               ; preds = %91, %32
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %20, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %67
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64 (i32*, i32*, i32)*, i64 (i32*, i32*, i32)** %74, align 8
  %76 = load i32*, i32** %21, align 8
  %77 = load i32*, i32** %22, align 8
  %78 = load i32, i32* %19, align 4
  %79 = call i64 %75(i32* %76, i32* %77, i32 %78)
  %80 = sitofp i64 %79 to double
  %81 = load double, double* %25, align 8
  %82 = fadd double %81, %80
  store double %82, double* %25, align 8
  %83 = load i32, i32* %23, align 4
  %84 = load i32*, i32** %22, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %22, align 8
  %87 = load i32, i32* %24, align 4
  %88 = load i32*, i32** %21, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %21, align 8
  br label %91

91:                                               ; preds = %71
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %17, align 4
  br label %67

94:                                               ; preds = %67
  %95 = load double, double* %25, align 8
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %20, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sitofp i32 %98 to double
  %100 = fdiv double %95, %99
  %101 = load double*, double** %16, align 8
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %101, i64 %103
  store double %100, double* %104, align 8
  br label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %18, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %18, align 4
  br label %26

108:                                              ; preds = %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
