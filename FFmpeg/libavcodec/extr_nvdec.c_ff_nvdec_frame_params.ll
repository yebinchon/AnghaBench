; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvdec.c_ff_nvdec_frame_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvdec.c_ff_nvdec_frame_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i8*, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@AVERROR_BUG = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported codec ID\0A\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unsupported chroma format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@cudaVideoChromaFormat_444 = common dso_local global i32 0, align 4
@AV_PIX_FMT_CUDA = common dso_local global i32 0, align 4
@nvdec_free_dummy = common dso_local global i32 0, align 4
@nvdec_alloc_dummy = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV444P = common dso_local global i8* null, align 8
@AV_PIX_FMT_NV12 = common dso_local global i8* null, align 8
@AV_PIX_FMT_YUV444P16 = common dso_local global i8* null, align 8
@AV_PIX_FMT_P010 = common dso_local global i8* null, align 8
@AV_PIX_FMT_P016 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_nvdec_frame_params(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %10, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_11__* @av_pix_fmt_desc_get(i32 %21)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %11, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %26, i32* %5, align 4
  br label %141

27:                                               ; preds = %4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @map_avcodec_id(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = call i32 @av_log(%struct.TYPE_13__* %35, i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %38, i32* %5, align 4
  br label %141

39:                                               ; preds = %27
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @map_chroma_format(i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %49 = call i32 @av_log(%struct.TYPE_13__* %47, i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %5, align 4
  br label %141

52:                                               ; preds = %39
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @cudaVideoChromaFormat_444, align 4
  %58 = icmp eq i32 %56, %57
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i1 [ false, %52 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* @AV_PIX_FMT_CUDA, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  %69 = and i32 %68, -2
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  %76 = and i32 %75, -2
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 2
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @nvdec_free_dummy, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @nvdec_alloc_dummy, align 4
  %87 = call i32 @av_buffer_pool_init(i32 0, i32 %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %59
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = call i32 @AVERROR(i32 %95)
  store i32 %96, i32* %5, align 4
  br label %141

97:                                               ; preds = %59
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %137 [
    i32 8, label %104
    i32 10, label %115
    i32 12, label %126
  ]

104:                                              ; preds = %97
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i8*, i8** @AV_PIX_FMT_YUV444P, align 8
  br label %111

109:                                              ; preds = %104
  %110 = load i8*, i8** @AV_PIX_FMT_NV12, align 8
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i8* [ %108, %107 ], [ %110, %109 ]
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  br label %140

115:                                              ; preds = %97
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i8*, i8** @AV_PIX_FMT_YUV444P16, align 8
  br label %122

120:                                              ; preds = %115
  %121 = load i8*, i8** @AV_PIX_FMT_P010, align 8
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i8* [ %119, %118 ], [ %121, %120 ]
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  br label %140

126:                                              ; preds = %97
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i8*, i8** @AV_PIX_FMT_YUV444P16, align 8
  br label %133

131:                                              ; preds = %126
  %132 = load i8*, i8** @AV_PIX_FMT_P016, align 8
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i8* [ %130, %129 ], [ %132, %131 ]
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 3
  store i8* %134, i8** %136, align 8
  br label %140

137:                                              ; preds = %97
  %138 = load i32, i32* @EINVAL, align 4
  %139 = call i32 @AVERROR(i32 %138)
  store i32 %139, i32* %5, align 4
  br label %141

140:                                              ; preds = %133, %122, %111
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %140, %137, %94, %46, %34, %25
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local %struct.TYPE_11__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @map_avcodec_id(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @map_chroma_format(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_buffer_pool_init(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
