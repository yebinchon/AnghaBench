; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_lavfutils.c_ff_load_image.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_lavfutils.c_ff_load_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__** }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"image2pipe\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to open input file '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Find stream info failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Failed to find codec\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to alloc video decoder context\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"Failed to copy codec parameters to decoder context\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"thread_type\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"slice\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Failed to open codec\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Failed to alloc frame\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed to read frame from file\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Failed to decode image from file\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Error loading image file '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_load_image(i32** %0, i32* %1, i32* %2, i32* %3, i32* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca %struct.TYPE_14__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  store i32** %0, i32*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32* null, i32** %16, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %17, align 8
  store i32 0, i32* %23, align 4
  store i32* null, i32** %25, align 8
  %26 = call i32 @av_init_packet(i32* %24)
  %27 = call i32* @av_find_input_format(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %27, i32** %16, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = call i32 @avformat_open_input(%struct.TYPE_15__** %17, i8* %28, i32* %29, i32* null)
  store i32 %30, i32* %23, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %7
  %33 = load i8*, i8** %15, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = load i8*, i8** %14, align 8
  %36 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %33, i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* %23, align 4
  store i32 %37, i32* %8, align 4
  br label %189

38:                                               ; preds = %7
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %40 = call i32 @avformat_find_stream_info(%struct.TYPE_15__* %39, i32* null)
  store i32 %40, i32* %23, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i8*, i8** %15, align 8
  %44 = load i32, i32* @AV_LOG_ERROR, align 4
  %45 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %43, i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %23, align 4
  store i32 %46, i32* %8, align 4
  br label %189

47:                                               ; preds = %38
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %50, i64 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %20, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @avcodec_find_decoder(i32 %57)
  store i32* %58, i32** %18, align 8
  %59 = load i32*, i32** %18, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %47
  %62 = load i8*, i8** %15, align 8
  %63 = load i32, i32* @AV_LOG_ERROR, align 4
  %64 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %62, i32 %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = call i32 @AVERROR(i32 %65)
  store i32 %66, i32* %23, align 4
  br label %174

67:                                               ; preds = %47
  %68 = load i32*, i32** %18, align 8
  %69 = call i32* @avcodec_alloc_context3(i32* %68)
  store i32* %69, i32** %19, align 8
  %70 = load i32*, i32** %19, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %15, align 8
  %74 = load i32, i32* @AV_LOG_ERROR, align 4
  %75 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %73, i32 %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = call i32 @AVERROR(i32 %76)
  store i32 %77, i32* %23, align 4
  br label %174

78:                                               ; preds = %67
  %79 = load i32*, i32** %19, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %81 = call i32 @avcodec_parameters_to_context(i32* %79, %struct.TYPE_16__* %80)
  store i32 %81, i32* %23, align 4
  %82 = load i32, i32* %23, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i8*, i8** %15, align 8
  %86 = load i32, i32* @AV_LOG_ERROR, align 4
  %87 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %85, i32 %86, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %174

88:                                               ; preds = %78
  %89 = call i32 @av_dict_set(i32** %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %90 = load i32*, i32** %19, align 8
  %91 = load i32*, i32** %18, align 8
  %92 = call i32 @avcodec_open2(i32* %90, i32* %91, i32** %25)
  store i32 %92, i32* %23, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i8*, i8** %15, align 8
  %96 = load i32, i32* @AV_LOG_ERROR, align 4
  %97 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %95, i32 %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %174

98:                                               ; preds = %88
  %99 = call %struct.TYPE_14__* (...) @av_frame_alloc()
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %21, align 8
  %100 = icmp ne %struct.TYPE_14__* %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load i8*, i8** %15, align 8
  %103 = load i32, i32* @AV_LOG_ERROR, align 4
  %104 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %102, i32 %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = call i32 @AVERROR(i32 %105)
  store i32 %106, i32* %23, align 4
  br label %174

107:                                              ; preds = %98
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %109 = call i32 @av_read_frame(%struct.TYPE_15__* %108, i32* %24)
  store i32 %109, i32* %23, align 4
  %110 = load i32, i32* %23, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i8*, i8** %15, align 8
  %114 = load i32, i32* @AV_LOG_ERROR, align 4
  %115 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %113, i32 %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %174

116:                                              ; preds = %107
  %117 = load i32*, i32** %19, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %119 = call i32 @avcodec_decode_video2(i32* %117, %struct.TYPE_14__* %118, i32* %22, i32* %24)
  store i32 %119, i32* %23, align 4
  %120 = load i32, i32* %23, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %22, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %122, %116
  %126 = load i8*, i8** %15, align 8
  %127 = load i32, i32* @AV_LOG_ERROR, align 4
  %128 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %126, i32 %127, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %129 = load i32, i32* %23, align 4
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i32 -1, i32* %23, align 4
  br label %132

132:                                              ; preds = %131, %125
  br label %174

133:                                              ; preds = %122
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32*, i32** %11, align 8
  store i32 %136, i32* %137, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %12, align 8
  store i32 %140, i32* %141, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32*, i32** %13, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32**, i32*** %9, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = load i32*, i32** %11, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %12, align 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %13, align 8
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @av_image_alloc(i32** %146, i32* %147, i32 %149, i32 %151, i32 %153, i32 16)
  store i32 %154, i32* %23, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %133
  br label %174

157:                                              ; preds = %133
  store i32 0, i32* %23, align 4
  %158 = load i32**, i32*** %9, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to i32**
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %13, align 8
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %11, align 8
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %12, align 8
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @av_image_copy(i32** %158, i32* %159, i32** %163, i32 %166, i32 %168, i32 %170, i32 %172)
  br label %174

174:                                              ; preds = %157, %156, %132, %112, %101, %94, %84, %72, %61
  %175 = call i32 @av_packet_unref(i32* %24)
  %176 = call i32 @avcodec_free_context(i32** %19)
  %177 = call i32 @avformat_close_input(%struct.TYPE_15__** %17)
  %178 = call i32 @av_frame_free(%struct.TYPE_14__** %21)
  %179 = call i32 @av_dict_free(i32** %25)
  %180 = load i32, i32* %23, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %174
  %183 = load i8*, i8** %15, align 8
  %184 = load i32, i32* @AV_LOG_ERROR, align 4
  %185 = load i8*, i8** %14, align 8
  %186 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %183, i32 %184, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %185)
  br label %187

187:                                              ; preds = %182, %174
  %188 = load i32, i32* %23, align 4
  store i32 %188, i32* %8, align 4
  br label %189

189:                                              ; preds = %187, %42, %32
  %190 = load i32, i32* %8, align 4
  ret i32 %190
}

declare dso_local i32 @av_init_packet(i32*) #1

declare dso_local i32* @av_find_input_format(i8*) #1

declare dso_local i32 @avformat_open_input(%struct.TYPE_15__**, i8*, i32*, i32*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i32 @avformat_find_stream_info(%struct.TYPE_15__*, i32*) #1

declare dso_local i32* @avcodec_find_decoder(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @avcodec_parameters_to_context(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @avcodec_open2(i32*, i32*, i32**) #1

declare dso_local %struct.TYPE_14__* @av_frame_alloc(...) #1

declare dso_local i32 @av_read_frame(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @avcodec_decode_video2(i32*, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @av_image_alloc(i32**, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @av_image_copy(i32**, i32*, i32**, i32, i32, i32, i32) #1

declare dso_local i32 @av_packet_unref(i32*) #1

declare dso_local i32 @avcodec_free_context(i32**) #1

declare dso_local i32 @avformat_close_input(%struct.TYPE_15__**) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_14__**) #1

declare dso_local i32 @av_dict_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
