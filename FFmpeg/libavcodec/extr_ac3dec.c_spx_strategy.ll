; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec.c_spx_strategy.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec.c_spx_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AC3_CHMODE_MONO = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"invalid spectral extension range (%d >= %d)\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"invalid spectral extension copy start bin (%d >= %d)\0A\00", align 1
@USE_FIXED = common dso_local global i32 0, align 4
@ff_eac3_default_spx_band_struct = common dso_local global i32 0, align 4
@end_freq_inv_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @spx_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spx_strategy(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 11
  store i32* %15, i32** %6, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AC3_CHMODE_MONO, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 1, i32* %28, align 4
  br label %47

29:                                               ; preds = %2
  store i32 1, i32* %13, align 4
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @get_bits1(i32* %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %30

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @get_bits(i32* %48, i32 2)
  store i32 %49, i32* %8, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @get_bits(i32* %50, i32 3)
  %52 = add nsw i32 %51, 2
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp sgt i32 %53, 7
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %56, 7
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %55, %47
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @get_bits(i32* %61, i32 3)
  %63 = add nsw i32 %62, 5
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp sgt i32 %64, 7
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32, i32* %12, align 4
  %68 = sub nsw i32 %67, 7
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %66, %60
  %72 = load i32, i32* %8, align 4
  %73 = mul nsw i32 %72, 12
  %74 = add nsw i32 %73, 25
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 %75, 12
  %77 = add nsw i32 %76, 25
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %12, align 4
  %79 = mul nsw i32 %78, 12
  %80 = add nsw i32 %79, 25
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %71
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @AV_LOG_ERROR, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @av_log(i32 %87, i32 %88, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %92, i32* %3, align 4
  br label %137

93:                                               ; preds = %71
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @AV_LOG_ERROR, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @av_log(i32 %100, i32 %101, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %105, i32* %3, align 4
  br label %137

106:                                              ; preds = %93
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @USE_FIXED, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %115, %106
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @ff_eac3_default_spx_band_struct, align 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @decode_band_structure(i32* %120, i32 %121, i32 %124, i32 0, i32 %125, i32 %126, i32 %127, i32* %129, i32 %132, i32 %135, i32 4)
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %119, %97, %84
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @decode_band_structure(i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
