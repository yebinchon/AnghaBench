; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_probe_codec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_probe_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i32, i64, i32, %struct.TYPE_17__*, %struct.TYPE_19__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32, i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"probing stream %d pp:%d\0A\00", align 1
@AVPROBE_PADDING_SIZE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to reallocate probe buffer for stream %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"nothing to probe for stream %d\0A\00", align 1
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@AVPROBE_SCORE_STREAM_RETRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"probed stream %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"probed stream %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_18__*, %struct.TYPE_20__*)* @probe_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_codec(%struct.TYPE_21__* %0, %struct.TYPE_18__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %193

15:                                               ; preds = %3
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 4
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %7, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = load i32, i32* @AV_LOG_DEBUG, align 4
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_21__* %18, i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %25)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %32 = icmp ne %struct.TYPE_20__* %31, null
  br i1 %32, label %33, label %92

33:                                               ; preds = %15
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = load i32, i32* @AVPROBE_PADDING_SIZE, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i32* @av_realloc(i32* %36, i32 %45)
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %33
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %51 = load i32, i32* @AV_LOG_WARNING, align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_21__* %50, i32 %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %93

56:                                               ; preds = %33
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memcpy(i32* %67, i32 %70, i32 %73)
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = load i32, i32* @AVPROBE_PADDING_SIZE, align 4
  %91 = call i32 @memset(i32* %89, i32 0, i32 %90)
  br label %108

92:                                               ; preds = %15
  br label %93

93:                                               ; preds = %92, %49
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %93
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %102 = load i32, i32* @AV_LOG_WARNING, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_21__* %101, i32 %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %100, %93
  br label %108

108:                                              ; preds = %107, %56
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sle i64 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %108
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp sle i64 %118, 0
  br label %120

120:                                              ; preds = %115, %108
  %121 = phi i1 [ true, %108 ], [ %119, %115 ]
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %120
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @av_log2(i32 %128)
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %132, %135
  %137 = call i64 @av_log2(i32 %136)
  %138 = icmp ne i64 %129, %137
  br i1 %138, label %139, label %192

139:                                              ; preds = %125, %120
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %143 = call i32 @set_codec_from_probe_data(%struct.TYPE_21__* %140, %struct.TYPE_18__* %141, %struct.TYPE_19__* %142)
  store i32 %143, i32* %10, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %139
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @AVPROBE_SCORE_STREAM_RETRY, align 4
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %158, label %155

155:                                              ; preds = %151, %139
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %188

158:                                              ; preds = %155, %151
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  store i32 0, i32* %160, align 8
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 1
  %163 = call i32 @av_freep(i32** %162)
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  store i32 -1, i32* %165, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %158
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %175 = load i32, i32* @AV_LOG_DEBUG, align 4
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_21__* %174, i32 %175, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %178)
  br label %187

180:                                              ; preds = %158
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %182 = load i32, i32* @AV_LOG_WARNING, align 4
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_21__* %181, i32 %182, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %180, %173
  br label %188

188:                                              ; preds = %187, %155
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %191 = call i32 @force_codec_ids(%struct.TYPE_21__* %189, %struct.TYPE_18__* %190)
  br label %192

192:                                              ; preds = %188, %125
  br label %193

193:                                              ; preds = %192, %3
  ret i32 0
}

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, i32, ...) #1

declare dso_local i32* @av_realloc(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @av_log2(i32) #1

declare dso_local i32 @set_codec_from_probe_data(%struct.TYPE_21__*, %struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @force_codec_ids(%struct.TYPE_21__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
