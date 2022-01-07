; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_f.c_asf_read_picture.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_f.c_asf_read_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@ff_id3v2_mime_tags = common dso_local global %struct.TYPE_14__* null, align 8
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid attached picture size: %d.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_id3v2_picture_types = common dso_local global i8** null, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unknown attached picture type: %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Unknown attached picture mimetype: %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Invalid attached picture data size: %d >= %d.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_DISPOSITION_ATTACHED_PIC = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32)* @asf_read_picture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_picture(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = bitcast %struct.TYPE_16__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 12, i1 false)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ff_id3v2_mime_tags, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %7, align 8
  %18 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  store i8* null, i8** %10, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %11, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 9
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = load i32, i32* @AV_LOG_ERROR, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %23, i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %27, i32* %3, align 4
  br label %205

28:                                               ; preds = %2
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @avio_r8(i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i8**, i8*** @ff_id3v2_picture_types, align 8
  %37 = call i32 @FF_ARRAY_ELEMS(i8** %36)
  %38 = icmp sge i32 %35, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39, %28
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %44 = load i32, i32* @AV_LOG_WARNING, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %43, i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %42, %39
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @avio_rl32(i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %52, 4
  store i32 %53, i32* %5, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %59 = call i64 @avio_get_str16le(i32 %56, i32 %57, i8* %58, i32 64)
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %82, %47
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %75 = call i32 @strncmp(i32 %73, i8* %74, i32 64)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %70
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %8, align 4
  br label %85

82:                                               ; preds = %70
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 1
  store %struct.TYPE_14__* %84, %struct.TYPE_14__** %7, align 8
  br label %64

85:                                               ; preds = %77, %64
  %86 = load i32, i32* %8, align 4
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = load i32, i32* @AV_LOG_ERROR, align 4
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %94 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %91, i32 %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %93)
  store i32 0, i32* %3, align 4
  br label %205

95:                                               ; preds = %85
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %101 = load i32, i32* @AV_LOG_ERROR, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %100, i32 %101, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %105, i32* %3, align 4
  br label %205

106:                                              ; preds = %95
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %14, align 4
  %109 = sub nsw i32 %107, %108
  %110 = mul nsw i32 %109, 2
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = call i8* @av_malloc(i32 %112)
  store i8* %113, i8** %10, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %106
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = call i32 @AVERROR(i32 %117)
  store i32 %118, i32* %3, align 4
  br label %205

119:                                              ; preds = %106
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %14, align 4
  %125 = sub nsw i32 %123, %124
  %126 = load i8*, i8** %10, align 8
  %127 = load i32, i32* %15, align 4
  %128 = call i64 @avio_get_str16le(i32 %122, i32 %125, i8* %126, i32 %127)
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = sub nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %5, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @av_get_packet(i32 %135, %struct.TYPE_16__* %6, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %119
  br label %201

141:                                              ; preds = %119
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %143 = call %struct.TYPE_15__* @avformat_new_stream(%struct.TYPE_17__* %142, i32* null)
  store %struct.TYPE_15__* %143, %struct.TYPE_15__** %11, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %145 = icmp ne %struct.TYPE_15__* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = call i32 @AVERROR(i32 %147)
  store i32 %148, i32* %12, align 4
  br label %201

149:                                              ; preds = %141
  %150 = load i32, i32* @AV_DISPOSITION_ATTACHED_PIC, align 4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  store i32 %155, i32* %159, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  store i32 %160, i32* %164, align 4
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  %167 = bitcast %struct.TYPE_16__* %166 to i8*
  %168 = bitcast %struct.TYPE_16__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %167, i8* align 4 %168, i64 12, i1 false)
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  store i32 %171, i32* %174, align 4
  %175 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %175
  store i32 %180, i32* %178, align 4
  %181 = load i8*, i8** %10, align 8
  %182 = load i8, i8* %181, align 1
  %183 = icmp ne i8 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %149
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i8*, i8** %10, align 8
  %188 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %189 = call i32 @av_dict_set(i32* %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %187, i32 %188)
  br label %192

190:                                              ; preds = %149
  %191 = call i32 @av_freep(i8** %10)
  br label %192

192:                                              ; preds = %190, %184
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load i8**, i8*** @ff_id3v2_picture_types, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %195, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @av_dict_set(i32* %194, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %199, i32 0)
  store i32 0, i32* %3, align 4
  br label %205

201:                                              ; preds = %146, %140
  %202 = call i32 @av_freep(i8** %10)
  %203 = call i32 @av_packet_unref(%struct.TYPE_16__* %6)
  %204 = load i32, i32* %12, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %201, %192, %116, %99, %90, %22
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, ...) #2

declare dso_local i32 @avio_r8(i32) #2

declare dso_local i32 @FF_ARRAY_ELEMS(i8**) #2

declare dso_local i32 @avio_rl32(i32) #2

declare dso_local i64 @avio_get_str16le(i32, i32, i8*, i32) #2

declare dso_local i32 @strncmp(i32, i8*, i32) #2

declare dso_local i8* @av_malloc(i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_get_packet(i32, %struct.TYPE_16__*, i32) #2

declare dso_local %struct.TYPE_15__* @avformat_new_stream(%struct.TYPE_17__*, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #2

declare dso_local i32 @av_freep(i8**) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
