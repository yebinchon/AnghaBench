; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac1.c_atrac1_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac1.c_atrac1_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_17__ = type { i64*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Not enough data to decode!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AT1_SU_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i8*, i32*, %struct.TYPE_16__*)* @atrac1_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atrac1_decode_frame(%struct.TYPE_18__* %0, i8* %1, i32* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %10, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %13, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 212, %32
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = call i32 @av_log(%struct.TYPE_18__* %36, i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %39, i32* %5, align 4
  br label %116

40:                                               ; preds = %4
  %41 = load i32, i32* @AT1_SU_SAMPLES, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %46 = call i32 @ff_get_buffer(%struct.TYPE_18__* %44, %struct.TYPE_17__* %45, i32 0)
  store i32 %46, i32* %15, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %5, align 4
  br label %116

50:                                               ; preds = %40
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %108, %50
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %111

57:                                               ; preds = %51
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i64 %62
  store %struct.TYPE_19__* %63, %struct.TYPE_19__** %17, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %14, align 4
  %66 = mul nsw i32 212, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = call i32 @init_get_bits(i32* %16, i32* %68, i32 1696)
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @at1_parse_bsm(i32* %16, i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %57
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %5, align 4
  br label %116

78:                                               ; preds = %57
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @at1_unpack_dequant(i32* %16, %struct.TYPE_19__* %79, i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %5, align 4
  br label %116

88:                                               ; preds = %78
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %91 = call i32 @at1_imdct_block(%struct.TYPE_19__* %89, %struct.TYPE_20__* %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %5, align 4
  br label %116

96:                                               ; preds = %88
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to float*
  %107 = call i32 @at1_subband_synthesis(%struct.TYPE_20__* %97, %struct.TYPE_19__* %98, float* %106)
  br label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %51

111:                                              ; preds = %51
  %112 = load i32*, i32** %8, align 8
  store i32 1, i32* %112, align 4
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %111, %94, %86, %76, %48, %35
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @at1_parse_bsm(i32*, i32) #1

declare dso_local i32 @at1_unpack_dequant(i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @at1_imdct_block(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @at1_subband_synthesis(%struct.TYPE_20__*, %struct.TYPE_19__*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
