; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq1dec.c_svq1_decode_frame_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq1dec.c_svq1_decode_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64 }

@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_P = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid frame type.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%s checksum (%02x) for packet data\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"correct\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"incorrect\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"embedded message:\0A%s\0A\00", align 1
@ff_svq1_frame_size_table = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @svq1_decode_frame_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svq1_decode_frame_header(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [257 x i32], align 16
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %6, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 4
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %7, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %25 = call i32 @skip_bits(%struct.TYPE_16__* %24, i32 8)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %29 = call i64 @get_bits(%struct.TYPE_16__* %28, i32 2)
  switch i64 %29, label %41 [
    i64 0, label %30
    i64 2, label %34
    i64 1, label %37
  ]

30:                                               ; preds = %2
  %31 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %46

34:                                               ; preds = %2
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %2, %34
  %38 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %46

41:                                               ; preds = %2
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %42, i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %45, i32* %3, align 4
  br label %182

46:                                               ; preds = %37, %30
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %141

52:                                               ; preds = %46
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 80
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 96
  br i1 %61, label %62, label %82

62:                                               ; preds = %57, %52
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %64 = call i64 @get_bits(%struct.TYPE_16__* %63, i32 16)
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 3
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @ff_svq1_packet_checksum(i32 %68, i32 %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @ff_dlog(%struct.TYPE_18__* %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %62, %57
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %85, 16
  %87 = icmp sge i32 %86, 80
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = getelementptr inbounds [257 x i32], [257 x i32]* %12, i64 0, i64 0
  %91 = call i32 @svq1_parse_string(%struct.TYPE_16__* %89, i32* %90)
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %93 = load i32, i32* @AV_LOG_INFO, align 4
  %94 = getelementptr inbounds [257 x i32], [257 x i32]* %12, i64 0, i64 0
  %95 = bitcast i32* %94 to i8*
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %92, i32 %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %88, %82
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %100 = call i32 @skip_bits(%struct.TYPE_16__* %99, i32 2)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %102 = call i32 @skip_bits(%struct.TYPE_16__* %101, i32 2)
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %104 = call i32 @skip_bits1(%struct.TYPE_16__* %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %106 = call i64 @get_bits(%struct.TYPE_16__* %105, i32 3)
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 %108, 7
  br i1 %109, label %110, label %125

110:                                              ; preds = %98
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %112 = call i64 @get_bits(%struct.TYPE_16__* %111, i32 12)
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %9, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %115 = call i64 @get_bits(%struct.TYPE_16__* %114, i32 12)
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %110
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119, %110
  %123 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %123, i32* %3, align 4
  br label %182

124:                                              ; preds = %119
  br label %140

125:                                              ; preds = %98
  %126 = load i32**, i32*** @ff_svq1_frame_size_table, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %9, align 4
  %133 = load i32**, i32*** @ff_svq1_frame_size_table, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %125, %124
  br label %141

141:                                              ; preds = %140, %46
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %143 = call i64 @get_bits1(%struct.TYPE_16__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %141
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %147 = call i32 @skip_bits1(%struct.TYPE_16__* %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %149 = call i32 @skip_bits1(%struct.TYPE_16__* %148)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %151 = call i64 @get_bits(%struct.TYPE_16__* %150, i32 2)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  %154 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %154, i32* %3, align 4
  br label %182

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155, %141
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %158 = call i64 @get_bits1(%struct.TYPE_16__* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %156
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %162 = call i32 @skip_bits1(%struct.TYPE_16__* %161)
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %164 = call i32 @skip_bits(%struct.TYPE_16__* %163, i32 4)
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %166 = call i32 @skip_bits1(%struct.TYPE_16__* %165)
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %168 = call i32 @skip_bits(%struct.TYPE_16__* %167, i32 2)
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %170 = call i64 @skip_1stop_8data_bits(%struct.TYPE_16__* %169)
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %160
  %173 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %173, i32* %3, align 4
  br label %182

174:                                              ; preds = %160
  br label %175

175:                                              ; preds = %174, %156
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %175, %172, %153, %122, %41
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @skip_bits(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @get_bits(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, ...) #1

declare dso_local i32 @ff_svq1_packet_checksum(i32, i32, i32) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_18__*, i8*, i8*, i32) #1

declare dso_local i32 @svq1_parse_string(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @skip_bits1(%struct.TYPE_16__*) #1

declare dso_local i64 @get_bits1(%struct.TYPE_16__*) #1

declare dso_local i64 @skip_1stop_8data_bits(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
