; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_srtdec.c_srt_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_srtdec.c_srt_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.event_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@AV_CODEC_ID_SUBRIP = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @srt_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srt_read_header(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_20__, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.event_info, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.event_info, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %4, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %23 = call %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_19__* %22, i32* null)
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ff_text_init_avio(%struct.TYPE_19__* %24, i32* %12, i32 %27)
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = icmp ne %struct.TYPE_18__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %2, align 4
  br label %164

34:                                               ; preds = %1
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = call i32 @avpriv_set_pts_info(%struct.TYPE_18__* %35, i32 64, i32 1, i32 1000)
  %37 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @AV_CODEC_ID_SUBRIP, align 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %48 = call i32 @av_bprint_init(%struct.TYPE_20__* %5, i32 0, i32 %47)
  %49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %49, align 16
  br label %50

50:                                               ; preds = %143, %76, %68, %34
  %51 = call i32 @ff_text_eof(i32* %12)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %144

54:                                               ; preds = %50
  %55 = call i32 @ff_text_pos(i32* %12)
  store i32 %55, i32* %14, align 4
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %57 = call i32 @ff_subtitles_read_line(i32* %12, i8* %56, i32 4096)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %144

61:                                               ; preds = %54
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %66 = load i8, i8* %65, align 16
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64, %61
  br label %50

69:                                               ; preds = %64
  %70 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %71 = call i64 @get_event_info(i8* %70, %struct.event_info* %13)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %69
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  br label %50

77:                                               ; preds = %73
  %78 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %79 = load i8, i8* %78, align 16
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %83 = call i32 @av_bprintf(%struct.TYPE_20__* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %82)
  %84 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %84, align 16
  br label %85

85:                                               ; preds = %81, %77
  %86 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %87 = call i64 @strtol(i8* %86, i8** %16, i32 10)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %91 = load i8*, i8** %16, align 8
  %92 = icmp eq i8* %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89, %85
  %94 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %95 = call i32 @av_bprintf(%struct.TYPE_20__* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %94)
  br label %100

96:                                               ; preds = %89
  %97 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %98 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %99 = call i32 @strcpy(i8* %97, i8* %98)
  br label %100

100:                                              ; preds = %96, %93
  br label %143

101:                                              ; preds = %69
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %137

104:                                              ; preds = %101
  store i8* null, i8** %17, align 8
  %105 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %106 = call i64 @strtol(i8* %105, i8** %17, i32 10)
  %107 = icmp sge i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load i8*, i8** %17, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i8*, i8** %17, align 8
  %113 = load i8, i8* %112, align 1
  %114 = icmp ne i8 %113, 0
  %115 = xor i1 %114, true
  br label %116

116:                                              ; preds = %111, %108, %104
  %117 = phi i1 [ false, %108 ], [ false, %104 ], [ %115, %111 ]
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %18, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %116
  %126 = load i32, i32* %18, align 4
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  br label %129

129:                                              ; preds = %125, %116
  %130 = phi i1 [ false, %116 ], [ %128, %125 ]
  %131 = zext i1 %130 to i32
  %132 = call i32 @add_event(i32* %120, %struct.TYPE_20__* %5, i8* %121, %struct.event_info* %11, i32 %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %161

136:                                              ; preds = %129
  br label %138

137:                                              ; preds = %101
  store i32 1, i32* %10, align 4
  br label %138

138:                                              ; preds = %137, %136
  %139 = load i32, i32* %14, align 4
  %140 = getelementptr inbounds %struct.event_info, %struct.event_info* %13, i32 0, i32 0
  store i32 %139, i32* %140, align 4
  %141 = bitcast %struct.event_info* %11 to i8*
  %142 = bitcast %struct.event_info* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %141, i8* align 4 %142, i64 4, i1 false)
  br label %143

143:                                              ; preds = %138, %100
  br label %50

144:                                              ; preds = %60, %50
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %151 = call i32 @add_event(i32* %149, %struct.TYPE_20__* %5, i8* %150, %struct.event_info* %11, i32 1)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %161

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155, %144
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = call i32 @ff_subtitles_queue_finalize(%struct.TYPE_19__* %157, i32* %159)
  br label %161

161:                                              ; preds = %156, %154, %135
  %162 = call i32 @av_bprint_finalize(%struct.TYPE_20__* %5, i32* null)
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %161, %31
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @ff_text_init_avio(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @av_bprint_init(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @ff_text_eof(i32*) #1

declare dso_local i32 @ff_text_pos(i32*) #1

declare dso_local i32 @ff_subtitles_read_line(i32*, i8*, i32) #1

declare dso_local i64 @get_event_info(i8*, %struct.event_info*) #1

declare dso_local i32 @av_bprintf(%struct.TYPE_20__*, i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @add_event(i32*, %struct.TYPE_20__*, i8*, %struct.event_info*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ff_subtitles_queue_finalize(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
