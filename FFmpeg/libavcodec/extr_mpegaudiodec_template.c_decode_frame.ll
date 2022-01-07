; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudiodec_template.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudiodec_template.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i32 }

@HEADER_SIZE = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"TAG\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"discarding ID3 tag\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Header missing\0A\00", align 1
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"incomplete frame\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"incorrect frame size - multiple frames in buffer?\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Error while decoding MPEG audio frame.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32*, %struct.TYPE_11__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_12__* %0, i8* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %12, align 8
  store i32 0, i32* %15, align 4
  br label %25

25:                                               ; preds = %35, %4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8*, i8** %10, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ %32, %28 ]
  br i1 %34, label %35, label %42

35:                                               ; preds = %33
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %15, align 4
  br label %25

42:                                               ; preds = %33
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @HEADER_SIZE, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %47, i32* %5, align 4
  br label %183

48:                                               ; preds = %42
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @AV_RB32(i8* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = ashr i32 %51, 8
  %53 = call i32 @AV_RB32(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %54 = ashr i32 %53, 8
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = load i32, i32* @AV_LOG_DEBUG, align 4
  %59 = call i32 @av_log(%struct.TYPE_12__* %57, i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %5, align 4
  br label %183

63:                                               ; preds = %48
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %65 = bitcast %struct.TYPE_10__* %64 to i32*
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @avpriv_mpegaudio_decode_header(i32* %65, i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = call i32 @av_log(%struct.TYPE_12__* %71, i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %74, i32* %5, align 4
  br label %183

75:                                               ; preds = %63
  %76 = load i32, i32* %14, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i32 -1, i32* %80, align 8
  %81 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %81, i32* %5, align 4
  br label %183

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  br label %97

95:                                               ; preds = %83
  %96 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %97
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %105, %97
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %118 = load i32, i32* @AV_LOG_ERROR, align 4
  %119 = call i32 @av_log(%struct.TYPE_12__* %117, i32 %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %120, i32* %5, align 4
  br label %183

121:                                              ; preds = %111
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %129 = load i32, i32* @AV_LOG_DEBUG, align 4
  %130 = call i32 @av_log(%struct.TYPE_12__* %128, i32 %129, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %127, %121
  br label %135

135:                                              ; preds = %134
  %136 = load i8*, i8** %7, align 8
  %137 = bitcast i8* %136 to %struct.TYPE_9__*
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 3
  store %struct.TYPE_9__* %137, %struct.TYPE_9__** %139, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @mp_decode_frame(%struct.TYPE_10__* %140, i32* null, i8* %141, i32 %142)
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %14, align 4
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %135
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  store i32 %149, i32* %153, align 4
  %154 = load i32*, i32** %8, align 8
  store i32 1, i32* %154, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  br label %177

160:                                              ; preds = %135
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %162 = load i32, i32* @AV_LOG_ERROR, align 4
  %163 = call i32 @av_log(%struct.TYPE_12__* %161, i32 %162, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %164 = load i32*, i32** %8, align 8
  store i32 0, i32* %164, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %165, %168
  br i1 %169, label %174, label %170

170:                                              ; preds = %160
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170, %160
  %175 = load i32, i32* %14, align 4
  store i32 %175, i32* %5, align 4
  br label %183

176:                                              ; preds = %170
  br label %177

177:                                              ; preds = %176, %146
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  store i32 0, i32* %179, align 8
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %180, %181
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %177, %174, %116, %78, %70, %56, %46
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i32 @AV_RB32(i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @avpriv_mpegaudio_decode_header(i32*, i32) #1

declare dso_local i32 @mp_decode_frame(%struct.TYPE_10__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
