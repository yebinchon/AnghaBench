; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_jpeg2000dwt.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_jpeg2000dwt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_W = common dso_local global i32 0, align 4
@ref = common dso_local global i32* null, align 8
@array = common dso_local global i32* null, align 8
@reff = common dso_local global i32* null, align 8
@arrayf = common dso_local global i32* null, align 8
@FF_DWT_MAX_DECLVLS = common dso_local global i32 0, align 4
@FF_DWT53 = common dso_local global i32 0, align 4
@FF_DWT97_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x [2 x i32]], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = call i32 @av_lfg_init(i32* %2, i32 1)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %34, %0
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MAX_W, align 4
  %12 = load i32, i32* @MAX_W, align 4
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = call i32 @av_lfg_get(i32* %2)
  %17 = srem i32 %16, 2048
  %18 = load i32*, i32** @ref, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  %22 = load i32*, i32** @array, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %17, i32* %25, align 4
  %26 = load i32*, i32** @reff, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %17, i32* %29, align 4
  %30 = load i32*, i32** @arrayf, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %17, i32* %33, align 4
  br label %34

34:                                               ; preds = %15
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %9

37:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %123, %37
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 100
  br i1 %40, label %41, label %126

41:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = call i32 @av_lfg_get(i32* %2)
  %47 = load i32, i32* @MAX_W, align 4
  %48 = srem i32 %46, %47
  %49 = load i32, i32* %4, align 4
  %50 = ashr i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 %51
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %52, i64 0, i64 %55
  store i32 %48, i32* %56, align 4
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %42

60:                                               ; preds = %42
  %61 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 0
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %61, i64 0, i64 0
  %63 = load i32, i32* %62, align 16
  %64 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 0
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %64, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %63, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 1
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %69, i64 0, i64 0
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 1
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %72, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sge i32 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68, %60
  br label %123

77:                                               ; preds = %68
  %78 = call i32 @av_lfg_get(i32* %2)
  %79 = load i32, i32* @FF_DWT_MAX_DECLVLS, align 4
  %80 = srem i32 %78, %79
  store i32 %80, i32* %7, align 4
  %81 = load i32*, i32** @array, align 8
  %82 = load i32*, i32** @ref, align 8
  %83 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 0
  %84 = bitcast [2 x i32]* %83 to i32**
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @FF_DWT53, align 4
  %87 = call i32 @test_dwt(i32* %81, i32* %82, i32** %84, i32 %85, i32 %86, i32 0)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %1, align 4
  br label %127

92:                                               ; preds = %77
  %93 = load i32*, i32** @array, align 8
  %94 = load i32*, i32** @ref, align 8
  %95 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 0
  %96 = bitcast [2 x i32]* %95 to i32**
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @FF_DWT97_INT, align 4
  %99 = load i32, i32* %7, align 4
  %100 = mul nsw i32 5, %99
  %101 = add nsw i32 7, %100
  %102 = load i32, i32* %7, align 4
  %103 = mul nsw i32 3, %102
  %104 = add nsw i32 15, %103
  %105 = call i32 @FFMIN(i32 %101, i32 %104)
  %106 = call i32 @test_dwt(i32* %93, i32* %94, i32** %96, i32 %97, i32 %98, i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %92
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %1, align 4
  br label %127

111:                                              ; preds = %92
  %112 = load i32*, i32** @arrayf, align 8
  %113 = load i32*, i32** @reff, align 8
  %114 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 0
  %115 = bitcast [2 x i32]* %114 to i32**
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @test_dwtf(i32* %112, i32* %113, i32** %115, i32 %116, double 5.000000e-02)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %1, align 4
  br label %127

122:                                              ; preds = %111
  br label %123

123:                                              ; preds = %122, %76
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %38

126:                                              ; preds = %38
  store i32 0, i32* %1, align 4
  br label %127

127:                                              ; preds = %126, %120, %109, %90
  %128 = load i32, i32* %1, align 4
  ret i32 %128
}

declare dso_local i32 @av_lfg_init(i32*, i32) #1

declare dso_local i32 @av_lfg_get(i32*) #1

declare dso_local i32 @test_dwt(i32*, i32*, i32**, i32, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @test_dwtf(i32*, i32*, i32**, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
