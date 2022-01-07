; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_latm_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_latm_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, %struct.LATMContext* }
%struct.LATMContext = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }

@LOAS_SYNC_WORD = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"ADTS header detected, probably as result of configuration misparsing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_16__*)* @latm_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latm_decode_frame(%struct.TYPE_17__* %0, i8* %1, i32* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.LATMContext*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %16 = load %struct.LATMContext*, %struct.LATMContext** %15, align 8
  store %struct.LATMContext* %16, %struct.LATMContext** %10, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @init_get_bits8(i32* %13, i32 %19, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %142

27:                                               ; preds = %4
  %28 = call i32 @get_bits(i32* %13, i32 11)
  %29 = load i32, i32* @LOAS_SYNC_WORD, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %32, i32* %5, align 4
  br label %142

33:                                               ; preds = %27
  %34 = call i32 @get_bits(i32* %13, i32 13)
  %35 = add nsw i32 %34, 3
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %42, i32* %5, align 4
  br label %142

43:                                               ; preds = %33
  %44 = load %struct.LATMContext*, %struct.LATMContext** %10, align 8
  %45 = call i32 @read_audio_mux_element(%struct.LATMContext* %44, i32* %13)
  store i32 %45, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  br label %56

52:                                               ; preds = %47
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  br label %56

56:                                               ; preds = %52, %50
  %57 = phi i32 [ %51, %50 ], [ %55, %52 ]
  store i32 %57, i32* %5, align 4
  br label %142

58:                                               ; preds = %43
  %59 = load %struct.LATMContext*, %struct.LATMContext** %10, align 8
  %60 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %104, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** %8, align 8
  store i32 0, i32* %69, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %5, align 4
  br label %142

73:                                               ; preds = %63
  %74 = load %struct.LATMContext*, %struct.LATMContext** %10, align 8
  %75 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %74, i32 0, i32 1
  %76 = call i32 @push_output_configuration(%struct.TYPE_18__* %75)
  %77 = load %struct.LATMContext*, %struct.LATMContext** %10, align 8
  %78 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %77, i32 0, i32 1
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %80 = load %struct.LATMContext*, %struct.LATMContext** %10, align 8
  %81 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = mul nsw i64 %91, 8
  %93 = call i32 @decode_audio_specific_config(%struct.TYPE_18__* %78, %struct.TYPE_17__* %79, %struct.TYPE_14__* %85, i32 %88, i64 %92, i32 1)
  store i32 %93, i32* %12, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %73
  %96 = load %struct.LATMContext*, %struct.LATMContext** %10, align 8
  %97 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %96, i32 0, i32 1
  %98 = call i32 @pop_output_configuration(%struct.TYPE_18__* %97)
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %5, align 4
  br label %142

100:                                              ; preds = %73
  %101 = load %struct.LATMContext*, %struct.LATMContext** %10, align 8
  %102 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %103, %58
  %105 = call i32 @show_bits(i32* %13, i32 12)
  %106 = icmp eq i32 %105, 4095
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load %struct.LATMContext*, %struct.LATMContext** %10, align 8
  %109 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @AV_LOG_ERROR, align 4
  %113 = call i32 @av_log(i32 %111, i32 %112, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %114 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %114, i32* %5, align 4
  br label %142

115:                                              ; preds = %104
  %116 = load %struct.LATMContext*, %struct.LATMContext** %10, align 8
  %117 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i64 1
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %129 [
    i32 130, label %124
    i32 128, label %124
    i32 129, label %124
    i32 131, label %124
  ]

124:                                              ; preds = %115, %115, %115, %115
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @aac_decode_er_frame(%struct.TYPE_17__* %125, i8* %126, i32* %127, i32* %13)
  store i32 %128, i32* %12, align 4
  br label %135

129:                                              ; preds = %115
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %134 = call i32 @aac_decode_frame_int(%struct.TYPE_17__* %130, i8* %131, i32* %132, i32* %13, %struct.TYPE_16__* %133)
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %129, %124
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %5, align 4
  br label %142

140:                                              ; preds = %135
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %140, %138, %107, %95, %68, %56, %41, %31, %25
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @init_get_bits8(i32*, i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @read_audio_mux_element(%struct.LATMContext*, i32*) #1

declare dso_local i32 @push_output_configuration(%struct.TYPE_18__*) #1

declare dso_local i32 @decode_audio_specific_config(%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_14__*, i32, i64, i32) #1

declare dso_local i32 @pop_output_configuration(%struct.TYPE_18__*) #1

declare dso_local i32 @show_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @aac_decode_er_frame(%struct.TYPE_17__*, i8*, i32*, i32*) #1

declare dso_local i32 @aac_decode_frame_int(%struct.TYPE_17__*, i8*, i32*, i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
