; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_aac_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_aac_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i64*, i32 }

@AV_PKT_DATA_NEW_EXTRADATA = common dso_local global i32 0, align 4
@AV_PKT_DATA_JP_DUALMONO = common dso_local global i32 0, align 4
@OC_NONE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_14__*)* @aac_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_decode_frame(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %10, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  store i64* %26, i64** %11, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %31 = load i32, i32* @AV_PKT_DATA_NEW_EXTRADATA, align 4
  %32 = call i64* @av_packet_get_side_data(%struct.TYPE_14__* %30, i32 %31, i32* %17)
  store i64* %32, i64** %18, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %34 = load i32, i32* @AV_PKT_DATA_JP_DUALMONO, align 4
  %35 = call i64* @av_packet_get_side_data(%struct.TYPE_14__* %33, i32 %34, i32* %19)
  store i64* %35, i64** %20, align 8
  %36 = load i64*, i64** %18, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %4
  %39 = load i32, i32* @OC_NONE, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  store i32 %39, i32* %44, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64*, i64** %18, align 8
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %56, 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @decode_audio_specific_config(%struct.TYPE_16__* %45, i32 %48, %struct.TYPE_17__* %53, i64* %54, i32 %58, i32 1)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %38
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %5, align 4
  br label %159

64:                                               ; preds = %38
  br label %65

65:                                               ; preds = %64, %4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load i64*, i64** %20, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load i32, i32* %19, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i64*, i64** %20, align 8
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 1, %75
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %70, %65
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %84, %79
  %91 = load i32, i32* @INT_MAX, align 4
  %92 = sdiv i32 %91, 8
  %93 = load i32, i32* %12, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %96, i32* %5, align 4
  br label %159

97:                                               ; preds = %90
  %98 = load i64*, i64** %11, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @init_get_bits8(i32* %13, i64* %98, i32 %99)
  store i32 %100, i32* %16, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %5, align 4
  br label %159

104:                                              ; preds = %97
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i64 1
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %117 [
    i32 130, label %112
    i32 128, label %112
    i32 129, label %112
    i32 131, label %112
  ]

112:                                              ; preds = %104, %104, %104, %104
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @aac_decode_er_frame(%struct.TYPE_15__* %113, i8* %114, i32* %115, i32* %13)
  store i32 %116, i32* %16, align 4
  br label %123

117:                                              ; preds = %104
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %122 = call i32 @aac_decode_frame_int(%struct.TYPE_15__* %118, i8* %119, i32* %120, i32* %13, %struct.TYPE_14__* %121)
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %117, %112
  %124 = load i32, i32* %16, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* %16, align 4
  store i32 %127, i32* %5, align 4
  br label %159

128:                                              ; preds = %123
  %129 = call i32 @get_bits_count(i32* %13)
  %130 = add nsw i32 %129, 7
  %131 = ashr i32 %130, 3
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  store i32 %132, i32* %15, align 4
  br label %133

133:                                              ; preds = %146, %128
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %133
  %138 = load i64*, i64** %11, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %149

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %133

149:                                              ; preds = %144, %133
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = load i32, i32* %14, align 4
  br label %157

155:                                              ; preds = %149
  %156 = load i32, i32* %12, align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %157, %126, %102, %95, %62
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i64* @av_packet_get_side_data(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @decode_audio_specific_config(%struct.TYPE_16__*, i32, %struct.TYPE_17__*, i64*, i32, i32) #1

declare dso_local i32 @init_get_bits8(i32*, i64*, i32) #1

declare dso_local i32 @aac_decode_er_frame(%struct.TYPE_15__*, i8*, i32*, i32*) #1

declare dso_local i32 @aac_decode_frame_int(%struct.TYPE_15__*, i8*, i32*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @get_bits_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
