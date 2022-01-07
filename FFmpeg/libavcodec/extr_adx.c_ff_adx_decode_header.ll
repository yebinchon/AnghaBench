; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adx.c_ff_adx_decode_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adx.c_ff_adx_decode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"(c)CRI\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Support for this ADX format\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@BLOCK_SIZE = common dso_local global i32 0, align 4
@BLOCK_SAMPLES = common dso_local global i32 0, align 4
@COEFF_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_adx_decode_header(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 24
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %17, i32* %6, align 4
  br label %137

18:                                               ; preds = %5
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @AV_RB16(i32* %19)
  %21 = icmp ne i32 %20, 32768
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %23, i32* %6, align 4
  br label %137

24:                                               ; preds = %18
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = call i32 @AV_RB16(i32* %26)
  %28 = add nsw i32 %27, 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = load i32, i32* %12, align 4
  %34 = icmp sge i32 %33, 6
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = getelementptr inbounds i32, i32* %39, i64 -6
  %41 = call i64 @memcmp(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %44, i32* %6, align 4
  br label %137

45:                                               ; preds = %35, %32, %24
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 3
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 18
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 6
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 4
  br i1 %59, label %60, label %64

60:                                               ; preds = %55, %50, %45
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = call i32 @avpriv_request_sample(%struct.TYPE_4__* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %63, i32* %6, align 4
  br label %137

64:                                               ; preds = %55
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 7
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %64
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 2
  br i1 %78, label %79, label %81

79:                                               ; preds = %74, %64
  %80 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %80, i32* %6, align 4
  br label %137

81:                                               ; preds = %74
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 8
  %84 = call i32 @AV_RB32(i32* %83)
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %104, label %91

91:                                               ; preds = %81
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @INT_MAX, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @BLOCK_SIZE, align 4
  %100 = mul nsw i32 %98, %99
  %101 = mul nsw i32 %100, 8
  %102 = sdiv i32 %95, %101
  %103 = icmp sgt i32 %94, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %91, %81
  %105 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %105, i32* %6, align 4
  br label %137

106:                                              ; preds = %91
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %109, %112
  %114 = load i32, i32* @BLOCK_SIZE, align 4
  %115 = mul nsw i32 %113, %114
  %116 = mul nsw i32 %115, 8
  %117 = load i32, i32* @BLOCK_SAMPLES, align 4
  %118 = sdiv i32 %116, %117
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %11, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %134

123:                                              ; preds = %106
  %124 = load i32*, i32** %8, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 16
  %126 = call i32 @AV_RB16(i32* %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @COEFF_BITS, align 4
  %132 = load i32*, i32** %11, align 8
  %133 = call i32 @ff_adx_calculate_coeffs(i32 %127, i32 %130, i32 %131, i32* %132)
  br label %134

134:                                              ; preds = %123, %106
  %135 = load i32, i32* %12, align 4
  %136 = load i32*, i32** %10, align 8
  store i32 %135, i32* %136, align 4
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %134, %104, %79, %60, %43, %22, %16
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @ff_adx_calculate_coeffs(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
