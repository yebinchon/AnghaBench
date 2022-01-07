; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_pcmdec.c_pcm_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_pcmdec.c_pcm_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__*, i32, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"mime_type\00", align 1
@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" rate=%d\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" channels=%d\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" endianness=%13s\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"little-endian\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"Invalid sample_rate found in mime_type \22%s\22\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @pcm_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_read_header(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [14 x i8], align 1
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %4, align 8
  store i32* null, i32** %6, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = call %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__* %16, i32* null)
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %5, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = icmp ne %struct.TYPE_14__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %206

23:                                               ; preds = %1
  %24 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 5
  store i32 %24, i32* %28, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  store i32 %33, i32* %37, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %56 = call i32 @av_opt_get(i32 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %55, i32** %6)
  %57 = load i32*, i32** %6, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %163

59:                                               ; preds = %23
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %163

66:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @strlen(i32* %71)
  store i64 %72, i64* %10, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @av_strncasecmp(i32* %77, i32* %78, i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %162, label %82

82:                                               ; preds = %66
  %83 = load i32*, i32** %6, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %11, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = call i64 @strlen(i32* %86)
  store i64 %87, i64* %10, align 8
  br label %88

88:                                               ; preds = %127, %82
  %89 = load i32*, i32** %11, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = icmp ult i32* %89, %92
  br i1 %93, label %94, label %128

94:                                               ; preds = %88
  %95 = load i32*, i32** %11, align 8
  %96 = call i32* @strstr(i32* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %96, i32** %11, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %11, align 8
  %99 = icmp ne i32* %97, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  br label %128

101:                                              ; preds = %94
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 (i32*, i8*, ...) @sscanf(i32* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32*, i32** %11, align 8
  %112 = call i32 (i32*, i8*, ...) @sscanf(i32* %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %113
  %117 = load i32*, i32** %11, align 8
  %118 = getelementptr inbounds [14 x i8], [14 x i8]* %12, i64 0, i64 0
  %119 = call i32 (i32*, i8*, ...) @sscanf(i32* %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %118)
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = getelementptr inbounds [14 x i8], [14 x i8]* %12, i64 0, i64 0
  %123 = call i64 @strcmp(i8* %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %121, %116
  br label %127

127:                                              ; preds = %126, %113
  br label %88

128:                                              ; preds = %100, %88
  %129 = load i32, i32* %7, align 4
  %130 = icmp sle i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %133 = load i32, i32* @AV_LOG_ERROR, align 4
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @av_log(%struct.TYPE_15__* %132, i32 %133, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32* %134)
  %136 = call i32 @av_freep(i32** %6)
  %137 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %137, i32* %2, align 4
  br label %206

138:                                              ; preds = %128
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  store i32 %139, i32* %143, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %138
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  store i32 %147, i32* %151, align 4
  br label %152

152:                                              ; preds = %146, %138
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load i32, i32* @AV_CODEC_ID_PCM_S16LE, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 4
  store i32 %156, i32* %160, align 4
  br label %161

161:                                              ; preds = %155, %152
  br label %162

162:                                              ; preds = %161, %66
  br label %163

163:                                              ; preds = %162, %59, %23
  %164 = call i32 @av_freep(i32** %6)
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @av_get_bits_per_sample(i32 %169)
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 2
  store i32 %170, i32* %174, align 4
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = icmp sgt i32 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @av_assert0(i32 %181)
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %187, %192
  %194 = sdiv i32 %193, 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 3
  store i32 %194, i32* %198, align 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @avpriv_set_pts_info(%struct.TYPE_14__* %199, i32 64, i32 1, i32 %204)
  store i32 0, i32* %2, align 4
  br label %206

206:                                              ; preds = %163, %131, %20
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_opt_get(i32, i8*, i32, i32**) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @av_strncasecmp(i32*, i32*, i64) #1

declare dso_local i32* @strstr(i32*, i8*) #1

declare dso_local i32 @sscanf(i32*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i32*) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @av_get_bits_per_sample(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_14__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
