; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_uint_y_to_float_y_wrapper.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_uint_y_to_float_y_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64**, i32*, i32, i32, i64**, i32*)* @uint_y_to_float_y_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uint_y_to_float_y_wrapper(%struct.TYPE_3__* %0, i64** %1, i32* %2, i32 %3, i32 %4, i64** %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca float*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i64** %1, i64*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64** %5, i64*** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 2
  store i32 %23, i32* %17, align 4
  %24 = load i64**, i64*** %9, align 8
  %25 = getelementptr inbounds i64*, i64** %24, i64 0
  %26 = load i64*, i64** %25, align 8
  store i64* %26, i64** %18, align 8
  %27 = load i64**, i64*** %13, align 8
  %28 = getelementptr inbounds i64*, i64** %27, i64 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %29, i64 %35
  %37 = bitcast i64* %36 to float*
  store float* %37, float** %19, align 8
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %78, %7
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %38
  store i32 0, i32* %16, align 4
  br label %43

43:                                               ; preds = %64, %42
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load float*, float** %51, align 8
  %53 = load i64*, i64** %18, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds float, float* %52, i64 %57
  %59 = load float, float* %58, align 4
  %60 = load float*, float** %19, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  store float %59, float* %63, align 4
  br label %64

64:                                               ; preds = %49
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %16, align 4
  br label %43

67:                                               ; preds = %43
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64*, i64** %18, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64* %73, i64** %18, align 8
  %74 = load i32, i32* %17, align 4
  %75 = load float*, float** %19, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds float, float* %75, i64 %76
  store float* %77, float** %19, align 8
  br label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  br label %38

81:                                               ; preds = %38
  %82 = load i32, i32* %12, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
