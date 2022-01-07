; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_dither.c_convert_samples.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_dither.c_convert_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32 (i32*, float*, i32*, i32)*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32* }

@AV_RESAMPLE_DITHER_TRIANGULAR_NS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32**, float**, i32, i32)* @convert_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_samples(%struct.TYPE_9__* %0, i32** %1, float** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca float**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32** %1, i32*** %8, align 8
  store float** %2, float*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @FFALIGN(i32 %16, i32 16)
  store i32 %17, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %113, %5
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %116

22:                                               ; preds = %18
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %15, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %22
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @generate_dither_noise(%struct.TYPE_9__* %35, %struct.TYPE_8__* %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  br label %117

43:                                               ; preds = %34
  br label %58

44:                                               ; preds = %22
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %47, %50
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %44
  br label %58

58:                                               ; preds = %57, %43
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AV_RESAMPLE_DITHER_TRIANGULAR_NS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %67 = load i32**, i32*** %8, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load float**, float*** %9, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float*, float** %72, i64 %74
  %76 = load float*, float** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @quantize_triangular_ns(%struct.TYPE_9__* %65, %struct.TYPE_8__* %66, i32* %71, float* %76, i32 %77)
  br label %107

79:                                               ; preds = %58
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i32 (i32*, float*, i32*, i32)*, i32 (i32*, float*, i32*, i32)** %81, align 8
  %83 = load i32**, i32*** %8, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load float**, float*** %9, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float*, float** %88, i64 %90
  %92 = load float*, float** %91, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @FFALIGN(i32 %101, i32 %104)
  %106 = call i32 %82(i32* %87, float* %92, i32* %100, i32 %105)
  br label %107

107:                                              ; preds = %79, %64
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %18

116:                                              ; preds = %18
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %116, %41
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @generate_dither_noise(%struct.TYPE_9__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @quantize_triangular_ns(%struct.TYPE_9__*, %struct.TYPE_8__*, i32*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
