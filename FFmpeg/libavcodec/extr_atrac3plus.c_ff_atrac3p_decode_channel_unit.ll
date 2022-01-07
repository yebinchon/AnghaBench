; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_ff_atrac3p_decode_channel_unit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_ff_atrac3p_decode_channel_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i8*, i8*, i8*, i8*, i32, i32, i8*, i8* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Invalid number of quantization units: %d!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@atrac3p_qu_to_subband = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_atrac3p_decode_channel_unit(i32* %0, %struct.TYPE_10__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i8* @get_bits(i32* %11, i32 5)
  %13 = getelementptr i8, i8* %12, i64 1
  %14 = ptrtoint i8* %13 to i32
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 28
  br i1 %20, label %21, label %34

21:                                               ; preds = %4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 32
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* @AV_LOG_ERROR, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @av_log(i32* %27, i32 %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %33, i32* %5, align 4
  br label %161

34:                                               ; preds = %21, %4
  %35 = load i32*, i32** %6, align 8
  %36 = call i8* @get_bits1(i32* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 9
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @decode_quant_wordlen(i32* %39, %struct.TYPE_10__* %40, i32 %41, i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %161

47:                                               ; preds = %34
  %48 = load i8**, i8*** @atrac3p_qu_to_subband, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %48, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr i8, i8* %55, i64 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 8
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %47
  %64 = load i8**, i8*** @atrac3p_qu_to_subband, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %64, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr i8, i8* %71, i64 1
  br label %74

73:                                               ; preds = %47
  br label %74

74:                                               ; preds = %73, %63
  %75 = phi i8* [ %72, %63 ], [ null, %73 ]
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @decode_scale_factors(i32* %78, %struct.TYPE_10__* %79, i32 %80, i32* %81)
  store i32 %82, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %5, align 4
  br label %161

86:                                               ; preds = %74
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @decode_code_table_indexes(i32* %87, %struct.TYPE_10__* %88, i32 %89, i32* %90)
  store i32 %91, i32* %10, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %5, align 4
  br label %161

95:                                               ; preds = %86
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @decode_spectrum(i32* %96, %struct.TYPE_10__* %97, i32 %98, i32* %99)
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %103, label %120

103:                                              ; preds = %95
  %104 = load i32*, i32** %6, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 5
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @get_subband_flags(i32* %104, i32 %107, i8* %110)
  %112 = load i32*, i32** %6, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 5
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @get_subband_flags(i32* %112, i32 %115, i8* %118)
  br label %120

120:                                              ; preds = %103, %95
  %121 = load i32*, i32** %6, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @decode_window_shape(i32* %121, %struct.TYPE_10__* %122, i32 %123)
  %125 = load i32*, i32** %6, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = call i32 @decode_gainc_data(i32* %125, %struct.TYPE_10__* %126, i32 %127, i32* %128)
  store i32 %129, i32* %10, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %120
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %5, align 4
  br label %161

133:                                              ; preds = %120
  %134 = load i32*, i32** %6, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @decode_tones_info(i32* %134, %struct.TYPE_10__* %135, i32 %136, i32* %137)
  store i32 %138, i32* %10, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %5, align 4
  br label %161

142:                                              ; preds = %133
  %143 = load i32*, i32** %6, align 8
  %144 = call i8* @get_bits1(i32* %143)
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 4
  store i8* %144, i8** %146, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 4
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %160

151:                                              ; preds = %142
  %152 = load i32*, i32** %6, align 8
  %153 = call i8* @get_bits(i32* %152, i32 4)
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  store i8* %153, i8** %155, align 8
  %156 = load i32*, i32** %6, align 8
  %157 = call i8* @get_bits(i32* %156, i32 4)
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %151, %142
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %160, %140, %131, %93, %84, %45, %26
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @decode_quant_wordlen(i32*, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @decode_scale_factors(i32*, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @decode_code_table_indexes(i32*, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @decode_spectrum(i32*, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @get_subband_flags(i32*, i32, i8*) #1

declare dso_local i32 @decode_window_shape(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @decode_gainc_data(i32*, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @decode_tones_info(i32*, %struct.TYPE_10__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
