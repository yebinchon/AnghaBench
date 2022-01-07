; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ra288.c_ra288_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ra288.c_ra288_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32*, i32, i32, i32* }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, i64* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error! Input buffer is too small [%d<%d]\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@RA288_BLOCK_SIZE = common dso_local global i32 0, align 4
@RA288_BLOCKS_PER_FRAME = common dso_local global i32 0, align 4
@amptable = common dso_local global float* null, align 8
@syn_window = common dso_local global i32 0, align 4
@syn_bw_tab = common dso_local global i32 0, align 4
@gain_window = common dso_local global i32 0, align 4
@gain_bw_tab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_13__*)* @ra288_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ra288_decode_frame(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %10, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %11, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %16, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = load i32, i32* @AV_LOG_ERROR, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @av_log(%struct.TYPE_15__* %37, i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %44, i32* %5, align 4
  br label %145

45:                                               ; preds = %4
  %46 = load i32*, i32** %11, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @init_get_bits8(i32* %17, i32* %46, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %5, align 4
  br label %145

55:                                               ; preds = %45
  %56 = load i32, i32* @RA288_BLOCK_SIZE, align 4
  %57 = load i32, i32* @RA288_BLOCKS_PER_FRAME, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %63 = call i32 @ff_get_buffer(%struct.TYPE_15__* %61, %struct.TYPE_14__* %62, i32 0)
  store i32 %63, i32* %15, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %5, align 4
  br label %145

67:                                               ; preds = %55
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to float*
  store float* %73, float** %13, align 8
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %137, %67
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @RA288_BLOCKS_PER_FRAME, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %140

78:                                               ; preds = %74
  %79 = load float*, float** @amptable, align 8
  %80 = call i64 @get_bits(i32* %17, i32 3)
  %81 = getelementptr inbounds float, float* %79, i64 %80
  %82 = load float, float* %81, align 4
  store float %82, float* %18, align 4
  %83 = load i32, i32* %14, align 4
  %84 = and i32 %83, 1
  %85 = add nsw i32 6, %84
  %86 = call i64 @get_bits(i32* %17, i32 %85)
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %19, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %89 = load float, float* %18, align 4
  %90 = load i32, i32* %19, align 4
  %91 = call i32 @decode(%struct.TYPE_12__* %88, float %89, i32 %90)
  %92 = load float*, float** %13, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 106
  %97 = load i32, i32* @RA288_BLOCK_SIZE, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = call i32 @memcpy(float* %92, i32* %96, i32 %100)
  %102 = load i32, i32* @RA288_BLOCK_SIZE, align 4
  %103 = load float*, float** %13, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds float, float* %103, i64 %104
  store float* %105, float** %13, align 8
  %106 = load i32, i32* %14, align 4
  %107 = and i32 %106, 7
  %108 = icmp eq i32 %107, 3
  br i1 %108, label %109, label %136

109:                                              ; preds = %78
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @syn_window, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @syn_bw_tab, align 4
  %122 = call i32 @backward_filter(%struct.TYPE_12__* %110, i32* %113, i32 %116, i32 %117, i32 %120, i32 %121, i32 36, i32 40, i32 35, i32 70)
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @gain_window, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @gain_bw_tab, align 4
  %135 = call i32 @backward_filter(%struct.TYPE_12__* %123, i32* %126, i32 %129, i32 %130, i32 %133, i32 %134, i32 10, i32 8, i32 20, i32 28)
  br label %136

136:                                              ; preds = %109, %78
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %14, align 4
  br label %74

140:                                              ; preds = %74
  %141 = load i32*, i32** %8, align 8
  store i32 1, i32* %141, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %140, %65, %53, %36
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i32, i32) #1

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @decode(%struct.TYPE_12__*, float, i32) #1

declare dso_local i32 @memcpy(float*, i32*, i32) #1

declare dso_local i32 @backward_filter(%struct.TYPE_12__*, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
