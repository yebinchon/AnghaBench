; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vaapi_vpp.c_ff_vaapi_vpp_render_picture.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vaapi_vpp.c_ff_vaapi_vpp_render_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64* }

@VA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to attach new picture: %d (%s).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@VAProcPipelineParameterBufferType = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to create parameter buffer: %d (%s).\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Pipeline parameter buffer is %#x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Failed to render parameter buffer: %d (%s).\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Failed to start picture processing: %d (%s).\0A\00", align 1
@CONFIG_VAAPI_1 = common dso_local global i64 0, align 8
@AV_VAAPI_DRIVER_QUIRK_RENDER_PARAM_BUFFERS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Failed to free parameter buffer: %d (%s).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_vaapi_vpp_render_picture(%struct.TYPE_11__* %0, i32* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %8, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 3
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @vaBeginPicture(i32 %25, i32 %28, i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %3
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @vaErrorStr(i64 %38)
  %40 = call i32 (%struct.TYPE_11__*, i32, i8*, i64, ...) @av_log(%struct.TYPE_11__* %35, i32 %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %39)
  %41 = load i32, i32* @EIO, align 4
  %42 = call i32 @AVERROR(i32 %41)
  store i32 %42, i32* %12, align 4
  br label %168

43:                                               ; preds = %3
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @VAProcPipelineParameterBufferType, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = call i64 @vaCreateBuffer(i32 %48, i32 %51, i32 %52, i32 4, i32 1, i32* %53, i32* %10)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %43
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = load i32, i32* @AV_LOG_ERROR, align 4
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @vaErrorStr(i64 %62)
  %64 = call i32 (%struct.TYPE_11__*, i32, i8*, i64, ...) @av_log(%struct.TYPE_11__* %59, i32 %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %61, i32 %63)
  %65 = load i32, i32* @EIO, align 4
  %66 = call i32 @AVERROR(i32 %65)
  store i32 %66, i32* %12, align 4
  br label %148

67:                                               ; preds = %43
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = load i32, i32* @AV_LOG_DEBUG, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = call i32 (%struct.TYPE_11__*, i32, i8*, i64, ...) @av_log(%struct.TYPE_11__* %68, i32 %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @vaRenderPicture(i32 %77, i32 %80, i32* %10, i32 1)
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %67
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = load i32, i32* @AV_LOG_ERROR, align 4
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %11, align 8
  %90 = call i32 @vaErrorStr(i64 %89)
  %91 = call i32 (%struct.TYPE_11__*, i32, i8*, i64, ...) @av_log(%struct.TYPE_11__* %86, i32 %87, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %88, i32 %90)
  %92 = load i32, i32* @EIO, align 4
  %93 = call i32 @AVERROR(i32 %92)
  store i32 %93, i32* %12, align 4
  br label %148

94:                                               ; preds = %67
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @vaEndPicture(i32 %99, i32 %102)
  store i64 %103, i64* %11, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %94
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = load i32, i32* @AV_LOG_ERROR, align 4
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @vaErrorStr(i64 %111)
  %113 = call i32 (%struct.TYPE_11__*, i32, i8*, i64, ...) @av_log(%struct.TYPE_11__* %108, i32 %109, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %110, i32 %112)
  %114 = load i32, i32* @EIO, align 4
  %115 = call i32 @AVERROR(i32 %114)
  store i32 %115, i32* %12, align 4
  br label %158

116:                                              ; preds = %94
  %117 = load i64, i64* @CONFIG_VAAPI_1, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %116
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @AV_VAAPI_DRIVER_QUIRK_RENDER_PARAM_BUFFERS, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %147

128:                                              ; preds = %119, %116
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i64 @vaDestroyBuffer(i32 %133, i32 %134)
  store i64 %135, i64* %11, align 8
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %128
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %141 = load i32, i32* @AV_LOG_ERROR, align 4
  %142 = load i64, i64* %11, align 8
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @vaErrorStr(i64 %143)
  %145 = call i32 (%struct.TYPE_11__*, i32, i8*, i64, ...) @av_log(%struct.TYPE_11__* %140, i32 %141, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i64 %142, i32 %144)
  br label %146

146:                                              ; preds = %139, %128
  br label %147

147:                                              ; preds = %146, %119
  store i32 0, i32* %4, align 4
  br label %170

148:                                              ; preds = %85, %58
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @vaRenderPicture(i32 %153, i32 %156, i32* %10, i32 1)
  br label %158

158:                                              ; preds = %148, %107
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @vaEndPicture(i32 %163, i32 %166)
  br label %168

168:                                              ; preds = %158, %34
  %169 = load i32, i32* %12, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %168, %147
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i64 @vaBeginPicture(i32, i32, i64) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, i64, ...) #1

declare dso_local i32 @vaErrorStr(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @vaCreateBuffer(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @vaRenderPicture(i32, i32, i32*, i32) #1

declare dso_local i64 @vaEndPicture(i32, i32) #1

declare dso_local i64 @vaDestroyBuffer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
