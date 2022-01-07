; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVFormatContext = type { i32, i32, %struct.TYPE_6__**, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@MAX_TRACKS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"At most %d streams are supported for muxing in Matroska\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_CODEC_ID_ATRAC3 = common dso_local global i64 0, align 8
@AV_CODEC_ID_COOK = common dso_local global i64 0, align 8
@AV_CODEC_ID_RA_288 = common dso_local global i64 0, align 8
@AV_CODEC_ID_SIPR = common dso_local global i64 0, align 8
@AV_CODEC_ID_RV10 = common dso_local global i64 0, align 8
@AV_CODEC_ID_RV20 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"The Matroska muxer does not yet support muxing %s\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AVFormatContext*)* @mkv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_init(%struct.AVFormatContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.AVFormatContext*, align 8
  %4 = alloca i32, align 4
  store %struct.AVFormatContext* %0, %struct.AVFormatContext** %3, align 8
  %5 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %6 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MAX_TRACKS, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %12 = load i32, i32* @AV_LOG_ERROR, align 4
  %13 = load i32, i32* @MAX_TRACKS, align 4
  %14 = call i32 @av_log(%struct.AVFormatContext* %11, i32 %12, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = call i32 @AVERROR(i32 %15)
  store i32 %16, i32* %2, align 4
  br label %161

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %126, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %21 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %129

24:                                               ; preds = %18
  %25 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %26 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %27, i64 %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AV_CODEC_ID_ATRAC3, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %108, label %38

38:                                               ; preds = %24
  %39 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %40 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %41, i64 %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AV_CODEC_ID_COOK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %108, label %52

52:                                               ; preds = %38
  %53 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %54 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %55, i64 %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AV_CODEC_ID_RA_288, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %108, label %66

66:                                               ; preds = %52
  %67 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %68 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %69, i64 %71
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AV_CODEC_ID_SIPR, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %108, label %80

80:                                               ; preds = %66
  %81 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %82 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %83, i64 %85
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AV_CODEC_ID_RV10, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %108, label %94

94:                                               ; preds = %80
  %95 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %96 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %95, i32 0, i32 2
  %97 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %97, i64 %99
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @AV_CODEC_ID_RV20, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %94, %80, %66, %52, %38, %24
  %109 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %110 = load i32, i32* @AV_LOG_ERROR, align 4
  %111 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %112 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %111, i32 0, i32 2
  %113 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %113, i64 %115
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @avcodec_get_name(i64 %121)
  %123 = call i32 @av_log(%struct.AVFormatContext* %109, i32 %110, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %124, i32* %2, align 4
  br label %161

125:                                              ; preds = %94
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %4, align 4
  br label %18

129:                                              ; preds = %18
  %130 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %131 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %136 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  %137 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %138 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %137, i32 0, i32 3
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 4
  br label %141

141:                                              ; preds = %134, %129
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %157, %141
  %143 = load i32, i32* %4, align 4
  %144 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %145 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %142
  %149 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %150 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %149, i32 0, i32 2
  %151 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %151, i64 %153
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = call i32 @avpriv_set_pts_info(%struct.TYPE_6__* %155, i32 64, i32 1, i32 1000)
  br label %157

157:                                              ; preds = %148
  %158 = load i32, i32* %4, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %4, align 4
  br label %142

160:                                              ; preds = %142
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %160, %108, %10
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @av_log(%struct.AVFormatContext*, i32, i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avcodec_get_name(i64) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
