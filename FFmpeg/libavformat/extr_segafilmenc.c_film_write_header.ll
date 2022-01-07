; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_segafilmenc.c_film_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_segafilmenc.c_film_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__**, %struct.TYPE_14__*, i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_13__* }

@SEEK_SET = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Incompatible audio stream format.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB24 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Pixel format must be rgb24.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"FILM\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"1.09\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"FDSC\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"cvid\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"raw \00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Incompatible video stream format.\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"STAB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @film_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @film_write_header(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 0, i32* %4, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %9, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %14, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %23, 16
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 16, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 48, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @shift_data(%struct.TYPE_16__* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %231

36:                                               ; preds = %1
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* @SEEK_SET, align 4
  %39 = call i32 @avio_seek(i32* %37, i32 0, i32 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %46, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %47, i64 %51
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %13, align 8
  br label %54

54:                                               ; preds = %44, %36
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %61, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %62, i64 %66
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %14, align 8
  br label %69

69:                                               ; preds = %59, %54
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %71 = icmp ne %struct.TYPE_15__* %70, null
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @get_audio_codec_id(i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %72
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = call i32 @av_log(%struct.TYPE_16__* %82, i32 %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = call i32 @AVERROR(i32 %85)
  store i32 %86, i32* %2, align 4
  br label %231

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87, %69
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AV_PIX_FMT_RGB24, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %98 = load i32, i32* @AV_LOG_ERROR, align 4
  %99 = call i32 @av_log(%struct.TYPE_16__* %97, i32 %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = call i32 @AVERROR(i32 %100)
  store i32 %101, i32* %2, align 4
  br label %231

102:                                              ; preds = %88
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 @ffio_wfourcc(i32* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 48, %106
  %108 = call i32 @avio_wb32(i32* %105, i32 %107)
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @ffio_wfourcc(i32* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @avio_wb32(i32* %111, i32 0)
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @ffio_wfourcc(i32* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @avio_wb32(i32* %115, i32 32)
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  switch i32 %121, label %128 [
    i32 129, label %122
    i32 128, label %125
  ]

122:                                              ; preds = %102
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @ffio_wfourcc(i32* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %134

125:                                              ; preds = %102
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @ffio_wfourcc(i32* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %134

128:                                              ; preds = %102
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %130 = load i32, i32* @AV_LOG_ERROR, align 4
  %131 = call i32 @av_log(%struct.TYPE_16__* %129, i32 %130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = call i32 @AVERROR(i32 %132)
  store i32 %133, i32* %2, align 4
  br label %231

134:                                              ; preds = %125, %122
  %135 = load i32*, i32** %9, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @avio_wb32(i32* %135, i32 %140)
  %142 = load i32*, i32** %9, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @avio_wb32(i32* %142, i32 %147)
  %149 = load i32*, i32** %9, align 8
  %150 = call i32 @avio_w8(i32* %149, i32 24)
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %152 = icmp ne %struct.TYPE_15__* %151, null
  br i1 %152, label %153, label %178

153:                                              ; preds = %134
  %154 = load i32*, i32** %9, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @avio_w8(i32* %154, i32 %159)
  %161 = load i32*, i32** %9, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @avio_w8(i32* %161, i32 %166)
  %168 = load i32*, i32** %9, align 8
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @avio_w8(i32* %168, i32 %169)
  %171 = load i32*, i32** %9, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @avio_wb16(i32* %171, i32 %176)
  br label %187

178:                                              ; preds = %134
  %179 = load i32*, i32** %9, align 8
  %180 = call i32 @avio_w8(i32* %179, i32 0)
  %181 = load i32*, i32** %9, align 8
  %182 = call i32 @avio_w8(i32* %181, i32 0)
  %183 = load i32*, i32** %9, align 8
  %184 = call i32 @avio_w8(i32* %183, i32 0)
  %185 = load i32*, i32** %9, align 8
  %186 = call i32 @avio_wb16(i32* %185, i32 0)
  br label %187

187:                                              ; preds = %178, %153
  %188 = load i32*, i32** %9, align 8
  %189 = call i32 @avio_wb32(i32* %188, i32 0)
  %190 = load i32*, i32** %9, align 8
  %191 = call i32 @avio_wb16(i32* %190, i32 0)
  %192 = load i32*, i32** %9, align 8
  %193 = call i32 @ffio_wfourcc(i32* %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %194 = load i32*, i32** %9, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = mul nsw i32 %197, 16
  %199 = add nsw i32 16, %198
  %200 = call i32 @avio_wb32(i32* %194, i32 %199)
  %201 = load i32*, i32** %9, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @av_inv_q(i32 %204)
  %206 = call i32 @av_q2d(i32 %205)
  %207 = call i32 @avio_wb32(i32* %201, i32 %206)
  %208 = load i32*, i32** %9, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @avio_wb32(i32* %208, i32 %211)
  %213 = load i32*, i32** %9, align 8
  %214 = call i32 @avio_flush(i32* %213)
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 3
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %216, align 8
  store %struct.TYPE_13__* %217, %struct.TYPE_13__** %12, align 8
  br label %218

218:                                              ; preds = %221, %187
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %220 = icmp ne %struct.TYPE_13__* %219, null
  br i1 %220, label %221, label %230

221:                                              ; preds = %218
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %224 = call i32 @film_write_packet_to_header(%struct.TYPE_16__* %222, %struct.TYPE_13__* %223)
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %225, %struct.TYPE_13__** %11, align 8
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %227, align 8
  store %struct.TYPE_13__* %228, %struct.TYPE_13__** %12, align 8
  %229 = call i32 @av_freep(%struct.TYPE_13__** %11)
  br label %218

230:                                              ; preds = %218
  store i32 0, i32* %2, align 4
  br label %231

231:                                              ; preds = %230, %128, %96, %81, %34
  %232 = load i32, i32* %2, align 4
  ret i32 %232
}

declare dso_local i32 @shift_data(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @get_audio_codec_id(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @av_q2d(i32) #1

declare dso_local i32 @av_inv_q(i32) #1

declare dso_local i32 @avio_flush(i32*) #1

declare dso_local i32 @film_write_packet_to_header(%struct.TYPE_16__*, %struct.TYPE_13__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_13__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
