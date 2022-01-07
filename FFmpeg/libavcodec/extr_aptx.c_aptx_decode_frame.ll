; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aptx.c_aptx_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aptx.c_aptx_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32, i32**, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Packet is too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@NB_CHANNELS = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S32P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Synchronization error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*, %struct.TYPE_12__*)* @aptx_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aptx_decode_frame(%struct.TYPE_14__* %0, i8* %1, i32* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %11, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = call i32 @av_log(%struct.TYPE_14__* %33, i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %5, align 4
  br label %149

37:                                               ; preds = %4
  %38 = load i32, i32* @NB_CHANNELS, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @AV_SAMPLE_FMT_S32P, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 4, %46
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %47, %50
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %56 = call i32 @ff_get_buffer(%struct.TYPE_14__* %54, %struct.TYPE_13__* %55, i32 0)
  store i32 %56, i32* %16, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %37
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %5, align 4
  br label %149

60:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %131, %60
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %139

67:                                               ; preds = %61
  %68 = load i32, i32* @NB_CHANNELS, align 4
  %69 = zext i32 %68 to i64
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** %17, align 8
  %71 = alloca [4 x i32], i64 %69, align 16
  store i64 %69, i64* %18, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = bitcast [4 x i32]* %71 to i32**
  %80 = call i64 @aptx_decode_samples(%struct.TYPE_11__* %72, i32* %78, i32** %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %67
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = load i32, i32* @AV_LOG_ERROR, align 4
  %85 = call i32 @av_log(%struct.TYPE_14__* %83, i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %86, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %127

87:                                               ; preds = %67
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %123, %87
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @NB_CHANNELS, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %126

92:                                               ; preds = %88
  store i32 0, i32* %15, align 4
  br label %93

93:                                               ; preds = %119, %92
  %94 = load i32, i32* %15, align 4
  %95 = icmp slt i32 %94, 4
  br i1 %95, label %96, label %122

96:                                               ; preds = %93
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %104, %105
  %107 = mul nsw i32 4, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %71, i64 %111
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %112, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %116, 256
  %118 = call i32 @AV_WN32A(i32* %109, i32 %117)
  br label %119

119:                                              ; preds = %96
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %93

122:                                              ; preds = %93
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %88

126:                                              ; preds = %88
  store i32 0, i32* %19, align 4
  br label %127

127:                                              ; preds = %126, %82
  %128 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %19, align 4
  switch i32 %129, label %151 [
    i32 0, label %130
    i32 1, label %149
  ]

130:                                              ; preds = %127
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 4
  store i32 %138, i32* %13, align 4
  br label %61

139:                                              ; preds = %61
  %140 = load i32*, i32** %8, align 8
  store i32 1, i32* %140, align 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = mul nsw i32 %143, %146
  %148 = sdiv i32 %147, 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %139, %127, %58, %32
  %150 = load i32, i32* %5, align 4
  ret i32 %150

151:                                              ; preds = %127
  unreachable
}

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @aptx_decode_samples(%struct.TYPE_11__*, i32*, i32**) #1

declare dso_local i32 @AV_WN32A(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
