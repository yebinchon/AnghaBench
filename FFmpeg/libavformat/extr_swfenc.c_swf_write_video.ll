; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_swfenc.c_swf_write_video.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_swfenc.c_swf_write_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_11__ = type { i64, i32, i32 }

@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"warning: Flash Player limit of 16000 frames reached\0A\00", align 1
@AV_CODEC_ID_VP6F = common dso_local global i64 0, align 8
@AV_CODEC_ID_FLV1 = common dso_local global i64 0, align 8
@TAG_VIDEOSTREAM = common dso_local global i32 0, align 4
@VIDEO_ID = common dso_local global i32 0, align 4
@ff_swf_codec_tags = common dso_local global i32 0, align 4
@TAG_PLACEOBJECT2 = common dso_local global i32 0, align 4
@FRAC_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@TAG_VIDEOFRAME = common dso_local global i32 0, align 4
@TAG_LONG = common dso_local global i32 0, align 4
@AV_CODEC_ID_MJPEG = common dso_local global i64 0, align 8
@TAG_REMOVEOBJECT = common dso_local global i32 0, align 4
@SHAPE_ID = common dso_local global i32 0, align 4
@TAG_FREECHARACTER = common dso_local global i32 0, align 4
@BITMAP_ID = common dso_local global i32 0, align 4
@TAG_JPEG2 = common dso_local global i32 0, align 4
@TAG_PLACEOBJECT = common dso_local global i32 0, align 4
@TAG_STREAMBLOCK = common dso_local global i32 0, align 4
@TAG_SHOWFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, i8*, i32)* @swf_write_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swf_write_video(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %10, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 16000
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = load i32, i32* @AV_LOG_INFO, align 4
  %25 = call i32 @av_log(%struct.TYPE_10__* %23, i32 %24, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AV_CODEC_ID_VP6F, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AV_CODEC_ID_FLV1, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %140

38:                                               ; preds = %32, %26
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %104

43:                                               ; preds = %38
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = load i32, i32* @TAG_VIDEOSTREAM, align 4
  %46 = call i32 @put_swf_tag(%struct.TYPE_10__* %44, i32 %45)
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* @VIDEO_ID, align 4
  %49 = call i32 @avio_wl16(i32* %47, i32 %48)
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @avio_tell(i32* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @avio_wl16(i32* %54, i32 15000)
  %56 = load i32*, i32** %10, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @avio_wl16(i32* %56, i32 %59)
  %61 = load i32*, i32** %10, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @avio_wl16(i32* %61, i32 %64)
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @avio_w8(i32* %66, i32 0)
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* @ff_swf_codec_tags, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ff_codec_get_tag(i32 %69, i64 %72)
  %74 = call i32 @avio_w8(i32* %68, i32 %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = call i32 @put_swf_end_tag(%struct.TYPE_10__* %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = load i32, i32* @TAG_PLACEOBJECT2, align 4
  %79 = call i32 @put_swf_tag(%struct.TYPE_10__* %77, i32 %78)
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @avio_w8(i32* %80, i32 54)
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @avio_wl16(i32* %82, i32 1)
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* @VIDEO_ID, align 4
  %86 = call i32 @avio_wl16(i32* %84, i32 %85)
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* @FRAC_BITS, align 4
  %89 = shl i32 1, %88
  %90 = load i32, i32* @FRAC_BITS, align 4
  %91 = shl i32 1, %90
  %92 = call i32 @put_swf_matrix(i32* %87, i32 %89, i32 0, i32 0, i32 %91, i32 0, i32 0)
  %93 = load i32*, i32** %10, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @avio_wl16(i32* %93, i32 %96)
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @avio_write(i32* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @avio_w8(i32* %100, i32 0)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = call i32 @put_swf_end_tag(%struct.TYPE_10__* %102)
  br label %119

104:                                              ; preds = %38
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = load i32, i32* @TAG_PLACEOBJECT2, align 4
  %107 = call i32 @put_swf_tag(%struct.TYPE_10__* %105, i32 %106)
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @avio_w8(i32* %108, i32 17)
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @avio_wl16(i32* %110, i32 1)
  %112 = load i32*, i32** %10, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @avio_wl16(i32* %112, i32 %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %118 = call i32 @put_swf_end_tag(%struct.TYPE_10__* %117)
  br label %119

119:                                              ; preds = %104, %43
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %121 = load i32, i32* @TAG_VIDEOFRAME, align 4
  %122 = load i32, i32* @TAG_LONG, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @put_swf_tag(%struct.TYPE_10__* %120, i32 %123)
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* @VIDEO_ID, align 4
  %127 = call i32 @avio_wl16(i32* %125, i32 %126)
  %128 = load i32*, i32** %10, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  %133 = call i32 @avio_wl16(i32* %128, i32 %131)
  %134 = load i32*, i32** %10, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @avio_write(i32* %134, i8* %135, i32 %136)
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %139 = call i32 @put_swf_end_tag(%struct.TYPE_10__* %138)
  br label %204

140:                                              ; preds = %32
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @AV_CODEC_ID_MJPEG, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %203

146:                                              ; preds = %140
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %170

151:                                              ; preds = %146
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %153 = load i32, i32* @TAG_REMOVEOBJECT, align 4
  %154 = call i32 @put_swf_tag(%struct.TYPE_10__* %152, i32 %153)
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* @SHAPE_ID, align 4
  %157 = call i32 @avio_wl16(i32* %155, i32 %156)
  %158 = load i32*, i32** %10, align 8
  %159 = call i32 @avio_wl16(i32* %158, i32 1)
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %161 = call i32 @put_swf_end_tag(%struct.TYPE_10__* %160)
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %163 = load i32, i32* @TAG_FREECHARACTER, align 4
  %164 = call i32 @put_swf_tag(%struct.TYPE_10__* %162, i32 %163)
  %165 = load i32*, i32** %10, align 8
  %166 = load i32, i32* @BITMAP_ID, align 4
  %167 = call i32 @avio_wl16(i32* %165, i32 %166)
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %169 = call i32 @put_swf_end_tag(%struct.TYPE_10__* %168)
  br label %170

170:                                              ; preds = %151, %146
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %172 = load i32, i32* @TAG_JPEG2, align 4
  %173 = load i32, i32* @TAG_LONG, align 4
  %174 = or i32 %172, %173
  %175 = call i32 @put_swf_tag(%struct.TYPE_10__* %171, i32 %174)
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* @BITMAP_ID, align 4
  %178 = call i32 @avio_wl16(i32* %176, i32 %177)
  %179 = load i32*, i32** %10, align 8
  %180 = call i32 @avio_wb32(i32* %179, i32 -2555943)
  %181 = load i32*, i32** %10, align 8
  %182 = load i8*, i8** %7, align 8
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @avio_write(i32* %181, i8* %182, i32 %183)
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %186 = call i32 @put_swf_end_tag(%struct.TYPE_10__* %185)
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %188 = load i32, i32* @TAG_PLACEOBJECT, align 4
  %189 = call i32 @put_swf_tag(%struct.TYPE_10__* %187, i32 %188)
  %190 = load i32*, i32** %10, align 8
  %191 = load i32, i32* @SHAPE_ID, align 4
  %192 = call i32 @avio_wl16(i32* %190, i32 %191)
  %193 = load i32*, i32** %10, align 8
  %194 = call i32 @avio_wl16(i32* %193, i32 1)
  %195 = load i32*, i32** %10, align 8
  %196 = load i32, i32* @FRAC_BITS, align 4
  %197 = shl i32 20, %196
  %198 = load i32, i32* @FRAC_BITS, align 4
  %199 = shl i32 20, %198
  %200 = call i32 @put_swf_matrix(i32* %195, i32 %197, i32 0, i32 0, i32 %199, i32 0, i32 0)
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %202 = call i32 @put_swf_end_tag(%struct.TYPE_10__* %201)
  br label %203

203:                                              ; preds = %170, %140
  br label %204

204:                                              ; preds = %203, %119
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 8
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %246

213:                                              ; preds = %204
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @av_fifo_size(i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %246

219:                                              ; preds = %213
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @av_fifo_size(i32 %222)
  store i32 %223, i32* %11, align 4
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %225 = load i32, i32* @TAG_STREAMBLOCK, align 4
  %226 = load i32, i32* @TAG_LONG, align 4
  %227 = or i32 %225, %226
  %228 = call i32 @put_swf_tag(%struct.TYPE_10__* %224, i32 %227)
  %229 = load i32*, i32** %10, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @avio_wl16(i32* %229, i32 %232)
  %234 = load i32*, i32** %10, align 8
  %235 = call i32 @avio_wl16(i32* %234, i32 0)
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %10, align 8
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @av_fifo_generic_read(i32 %238, i32* %239, i32 %240, i8* bitcast (i32 (i32*, i8*, i32)* @avio_write to i8*))
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %243 = call i32 @put_swf_end_tag(%struct.TYPE_10__* %242)
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 2
  store i32 0, i32* %245, align 8
  br label %246

246:                                              ; preds = %219, %213, %204
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %248 = load i32, i32* @TAG_SHOWFRAME, align 4
  %249 = call i32 @put_swf_tag(%struct.TYPE_10__* %247, i32 %248)
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %251 = call i32 @put_swf_end_tag(%struct.TYPE_10__* %250)
  ret i32 0
}

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @put_swf_tag(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @avio_wl16(i32*, i32) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @ff_codec_get_tag(i32, i64) #1

declare dso_local i32 @put_swf_end_tag(%struct.TYPE_10__*) #1

declare dso_local i32 @put_swf_matrix(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @avio_write(i32*, i8*, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @av_fifo_size(i32) #1

declare dso_local i32 @av_fifo_generic_read(i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
