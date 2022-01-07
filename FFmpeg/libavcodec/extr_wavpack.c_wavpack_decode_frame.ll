; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpack.c_wavpack_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpack.c_wavpack_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i64 }
%struct.TYPE_10__ = type { i32, i32* }

@WV_HEADER_SIZE = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@WV_MAX_SAMPLES = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid number of samples: %d\0A\00", align 1
@AV_SAMPLE_FMT_FLTP = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S16P = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S32P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Block %d has invalid size (size %d vs. %d bytes left)\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Not enough channels coded in a packet.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32*, %struct.TYPE_10__*)* @wavpack_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wavpack_decode_frame(%struct.TYPE_11__* %0, i8* %1, i32* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %10, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %13, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @WV_HEADER_SIZE, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %34, i32* %5, align 4
  br label %174

35:                                               ; preds = %4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 20
  %42 = call i32 @AV_RL32(i32* %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 24
  %47 = call i32 @AV_RL32(i32* %46)
  store i32 %47, i32* %16, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %35
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @WV_MAX_SAMPLES, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %52, %35
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = load i32, i32* @AV_LOG_ERROR, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %60, i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %66, i32* %5, align 4
  br label %174

67:                                               ; preds = %52
  %68 = load i32, i32* %16, align 4
  %69 = and i32 %68, 128
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @AV_SAMPLE_FMT_FLTP, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  br label %94

75:                                               ; preds = %67
  %76 = load i32, i32* %16, align 4
  %77 = and i32 %76, 3
  %78 = icmp sle i32 %77, 1
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* @AV_SAMPLE_FMT_S16P, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  br label %93

83:                                               ; preds = %75
  %84 = load i32, i32* @AV_SAMPLE_FMT_S32P, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %16, align 4
  %88 = and i32 %87, 3
  %89 = add nsw i32 %88, 1
  %90 = shl i32 %89, 3
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %83, %79
  br label %94

94:                                               ; preds = %93, %71
  br label %95

95:                                               ; preds = %144, %94
  %96 = load i32, i32* %12, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %156

98:                                               ; preds = %95
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @WV_HEADER_SIZE, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %156

103:                                              ; preds = %98
  %104 = load i32*, i32** %11, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 4
  %106 = call i32 @AV_RL32(i32* %105)
  %107 = sub nsw i32 %106, 12
  store i32 %107, i32* %14, align 4
  %108 = load i32*, i32** %11, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 20
  store i32* %109, i32** %11, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sub nsw i32 %110, 20
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp sle i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %103
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %114, %103
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %120 = load i32, i32* @AV_LOG_ERROR, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %119, i32 %120, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %123, i32 %124, i32 %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %128 = call i32 @wavpack_decode_flush(%struct.TYPE_11__* %127)
  %129 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %129, i32* %5, align 4
  br label %174

130:                                              ; preds = %114
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i32*, i32** %13, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @wavpack_decode_block(%struct.TYPE_11__* %131, i64 %134, i32* %135, i32* %136, i32 %137)
  store i32 %138, i32* %15, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %130
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = call i32 @wavpack_decode_flush(%struct.TYPE_11__* %141)
  %143 = load i32, i32* %15, align 4
  store i32 %143, i32* %5, align 4
  br label %174

144:                                              ; preds = %130
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %146, align 8
  %149 = load i32, i32* %14, align 4
  %150 = load i32*, i32** %11, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %11, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %12, align 4
  %155 = sub nsw i32 %154, %153
  store i32 %155, i32* %12, align 4
  br label %95

156:                                              ; preds = %102, %95
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %159, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %156
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %166 = load i32, i32* @AV_LOG_ERROR, align 4
  %167 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %165, i32 %166, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %168 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %168, i32* %5, align 4
  br label %174

169:                                              ; preds = %156
  %170 = load i32*, i32** %8, align 8
  store i32 1, i32* %170, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %169, %164, %140, %118, %59, %33
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @wavpack_decode_flush(%struct.TYPE_11__*) #1

declare dso_local i32 @wavpack_decode_block(%struct.TYPE_11__*, i64, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
