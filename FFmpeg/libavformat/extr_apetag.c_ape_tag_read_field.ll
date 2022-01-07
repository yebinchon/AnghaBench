; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_apetag.c_ape_tag_read_field.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_apetag.c_ape_tag_read_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_14__*, %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid APE tag key '%s'.\0A\00", align 1
@INT32_MAX = common dso_local global i64 0, align 8
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"APE tag size too large.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@APE_TAG_FLAG_IS_BINARY = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Skipping binary tag '%s'.\0A\00", align 1
@AV_CODEC_ID_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Error reading cover art.\0A\00", align 1
@AV_DISPOSITION_ATTACHED_PIC = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_ATTACHMENT = common dso_local global i32 0, align 4
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @ape_tag_read_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ape_tag_read_field(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1024 x i32], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1024 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_12__, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @avio_rl32(i32* %20)
  store i64 %21, i64* %7, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @avio_rl32(i32* %22)
  store i64 %23, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %43, %1
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 4095
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @avio_r8(i32* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 32
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 126
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %28
  br label %46

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 %40
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %24

46:                                               ; preds = %36, %24
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 %48
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = load i32, i32* @AV_LOG_WARNING, align 4
  %55 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %56 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %53, i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %55)
  store i32 -1, i32* %2, align 4
  br label %212

57:                                               ; preds = %46
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @INT32_MAX, align 8
  %60 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %61 = sub nsw i64 %59, %60
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %64, i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %67, i32* %2, align 4
  br label %212

68:                                               ; preds = %57
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @APE_TAG_FLAG_IS_BINARY, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %180

73:                                               ; preds = %68
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = call %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_13__* %74, i32* null)
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %14, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %77 = icmp ne %struct.TYPE_11__* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = call i32 @AVERROR(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %212

81:                                               ; preds = %73
  %82 = load i32*, i32** %4, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds [1024 x i32], [1024 x i32]* %11, i64 0, i64 0
  %85 = call i32 @avio_get_str(i32* %82, i64 %83, i32* %84, i32 4096)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %2, align 4
  br label %212

90:                                               ; preds = %81
  %91 = load i64, i64* %7, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp sle i64 %91, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = load i32, i32* @AV_LOG_WARNING, align 4
  %98 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %99 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %96, i32 %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %98)
  store i32 0, i32* %2, align 4
  br label %212

100:                                              ; preds = %90
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %7, align 8
  %104 = sub nsw i64 %103, %102
  store i64 %104, i64* %7, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 4
  %107 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %108 = getelementptr inbounds [1024 x i32], [1024 x i32]* %11, i64 0, i64 0
  %109 = call i32 @av_dict_set(i32* %106, i32* %107, i32* %108, i32 0)
  %110 = getelementptr inbounds [1024 x i32], [1024 x i32]* %11, i64 0, i64 0
  %111 = call i32 @ff_guess_image2_codec(i32* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* @AV_CODEC_ID_NONE, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %159

114:                                              ; preds = %100
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* %7, align 8
  %119 = call i32 @av_get_packet(i32* %117, %struct.TYPE_12__* %15, i64 %118)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %124 = load i32, i32* @AV_LOG_ERROR, align 4
  %125 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %123, i32 %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32, i32* %16, align 4
  store i32 %126, i32* %2, align 4
  br label %212

127:                                              ; preds = %114
  %128 = load i32, i32* @AV_DISPOSITION_ATTACHED_PIC, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  store i32 %138, i32* %142, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = bitcast %struct.TYPE_12__* %144 to i8*
  %146 = bitcast %struct.TYPE_12__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 4 %146, i64 8, i1 false)
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %153
  store i32 %158, i32* %156, align 8
  br label %179

159:                                              ; preds = %100
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* %7, align 8
  %168 = call i64 @ff_get_extradata(%struct.TYPE_13__* %160, %struct.TYPE_14__* %163, i32* %166, i64 %167)
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %159
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = call i32 @AVERROR(i32 %171)
  store i32 %172, i32* %2, align 4
  br label %212

173:                                              ; preds = %159
  %174 = load i32, i32* @AVMEDIA_TYPE_ATTACHMENT, align 4
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  store i32 %174, i32* %178, align 4
  br label %179

179:                                              ; preds = %173, %127
  br label %211

180:                                              ; preds = %68
  %181 = load i64, i64* %7, align 8
  %182 = add nsw i64 %181, 1
  %183 = call i32* @av_malloc(i64 %182)
  store i32* %183, i32** %6, align 8
  %184 = load i32*, i32** %6, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %180
  %187 = load i32, i32* @ENOMEM, align 4
  %188 = call i32 @AVERROR(i32 %187)
  store i32 %188, i32* %2, align 4
  br label %212

189:                                              ; preds = %180
  %190 = load i32*, i32** %4, align 8
  %191 = load i32*, i32** %6, align 8
  %192 = load i64, i64* %7, align 8
  %193 = call i32 @avio_read(i32* %190, i32* %191, i64 %192)
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %189
  %197 = load i32*, i32** %6, align 8
  %198 = call i32 @av_free(i32* %197)
  %199 = load i32, i32* %10, align 4
  store i32 %199, i32* %2, align 4
  br label %212

200:                                              ; preds = %189
  %201 = load i32*, i32** %6, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 0, i32* %204, align 4
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %210 = call i32 @av_dict_set(i32* %206, i32* %207, i32* %208, i32 %209)
  br label %211

211:                                              ; preds = %200, %179
  store i32 0, i32* %2, align 4
  br label %212

212:                                              ; preds = %211, %196, %186, %170, %122, %95, %88, %78, %63, %52
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i64 @avio_rl32(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_get_str(i32*, i64, i32*, i32) #1

declare dso_local i32 @av_dict_set(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ff_guess_image2_codec(i32*) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_12__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ff_get_extradata(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i64) #1

declare dso_local i32* @av_malloc(i64) #1

declare dso_local i32 @avio_read(i32*, i32*, i64) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
