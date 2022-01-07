; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr.c_sipr_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr.c_sipr_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32 (%struct.TYPE_15__*, i32*, float*)*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_17__ = type { i32, i64* }

@modes = common dso_local global %struct.TYPE_14__* null, align 8
@MODE_16k = common dso_local global i64 0, align 8
@L_SUBFR_16k = common dso_local global i32 0, align 4
@SUBFR_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Error processing packet: packet size (%d) too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i8*, i32*, %struct.TYPE_16__*)* @sipr_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sipr_decode_frame(%struct.TYPE_18__* %0, i8* %1, i32* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %11, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %12, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** @modes, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i64 %31
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %14, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MODE_16k, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* @L_SUBFR_16k, align 4
  br label %42

40:                                               ; preds = %4
  %41 = load i32, i32* @SUBFR_SIZE, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %17, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  store %struct.TYPE_18__* %44, %struct.TYPE_18__** %46, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 3
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %42
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @av_log(%struct.TYPE_18__* %56, i32 %57, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %62, i32* %5, align 4
  br label %125

63:                                               ; preds = %42
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %17, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %77 = call i32 @ff_get_buffer(%struct.TYPE_18__* %75, %struct.TYPE_17__* %76, i32 0)
  store i32 %77, i32* %19, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %63
  %80 = load i32, i32* %19, align 4
  store i32 %80, i32* %5, align 4
  br label %125

81:                                               ; preds = %63
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to float*
  store float* %87, float** %16, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @init_get_bits(i32* %15, i32* %88, i32 %91)
  store i32 0, i32* %18, align 4
  br label %93

93:                                               ; preds = %116, %81
  %94 = load i32, i32* %18, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %93
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %101 = call i32 @decode_parameters(i32* %13, i32* %15, %struct.TYPE_14__* %100)
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i32 (%struct.TYPE_15__*, i32*, float*)*, i32 (%struct.TYPE_15__*, i32*, float*)** %103, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %106 = load float*, float** %16, align 8
  %107 = call i32 %104(%struct.TYPE_15__* %105, i32* %13, float* %106)
  %108 = load i32, i32* %17, align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %108, %111
  %113 = load float*, float** %16, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds float, float* %113, i64 %114
  store float* %115, float** %16, align 8
  br label %116

116:                                              ; preds = %99
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %93

119:                                              ; preds = %93
  %120 = load i32*, i32** %8, align 8
  store i32 1, i32* %120, align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = ashr i32 %123, 3
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %119, %79, %55
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @decode_parameters(i32*, i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
