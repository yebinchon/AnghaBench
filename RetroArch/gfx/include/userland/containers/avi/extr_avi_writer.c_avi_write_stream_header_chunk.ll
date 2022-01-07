; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_stream_header_chunk.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_stream_header_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"Chunk ID\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Chunk Size\00", align 1
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"invalid video framerate (%d/%d)\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"using 30/1 (playback timing will almost certainly be incorrect)\00", align 1
@VC_CONTAINER_ES_TYPE_AUDIO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [82 x i8] c"invalid audio rate, using %d (playback timing will almost certainly be incorrect)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"fccType\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"fccHandler\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"dwFlags\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"wPriority\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"wLanguage\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"dwInitialFrames\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"dwScale\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"dwRate\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"dwStart\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"dwLength\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"dwSuggestedBufferSize\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"dwQuality\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"dwSampleSize\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"rcFrame.left\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"rcFrame.top\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"rcFrame.right\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"rcFrame.bottom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_15__*)* @avi_write_stream_header_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_write_stream_header_chunk(i32* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @VC_FOURCC(i8 signext 115, i8 zeroext 116, i8 signext 114, i8 signext 104)
  %21 = call i32 @WRITE_FOURCC(i32* %19, i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @WRITE_U32(i32* %22, i32 56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %30

29:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %119

38:                                               ; preds = %30
  %39 = call i32 @VC_FOURCC(i8 signext 118, i8 zeroext 105, i8 signext 100, i8 signext 115)
  store i32 %39, i32* %5, align 4
  store i32 0, i32* %12, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %8, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %38
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58, %38
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i32*, i8*, ...) @LOG_DEBUG(i32* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 (i32*, i8*, ...) @LOG_DEBUG(i32* %66, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  store i32 30, i32* %9, align 4
  br label %68

68:                                               ; preds = %61, %58
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %15, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %13, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %92, %100
  store i64 %101, i64* %16, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %109, %117
  store i64 %118, i64* %14, align 8
  br label %194

119:                                              ; preds = %30
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @VC_CONTAINER_ES_TYPE_AUDIO, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %191

127:                                              ; preds = %119
  %128 = call i32 @VC_FOURCC(i8 signext 97, i8 zeroext 117, i8 signext 100, i8 signext 115)
  store i32 %128, i32* %5, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %12, align 4
  store i32 1, i32* %8, align 4
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %127
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sdiv i32 %151, %159
  %161 = ashr i32 %160, 3
  store i32 %161, i32* %9, align 4
  br label %162

162:                                              ; preds = %146, %127
  %163 = load i32, i32* %9, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %190

165:                                              ; preds = %162
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %165
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  br label %185

184:                                              ; preds = %165
  br label %185

185:                                              ; preds = %184, %175
  %186 = phi i32 [ %183, %175 ], [ 32000, %184 ]
  store i32 %186, i32* %9, align 4
  %187 = load i32*, i32** %3, align 8
  %188 = load i32, i32* %9, align 4
  %189 = call i32 (i32*, i8*, ...) @LOG_DEBUG(i32* %187, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %185, %162
  br label %193

191:                                              ; preds = %119
  %192 = call i32 @vc_container_assert(i32 0)
  br label %193

193:                                              ; preds = %191, %190
  br label %194

194:                                              ; preds = %193, %68
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @codec_to_vfw_fourcc(i32 %199)
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @vc_container_maths_gcd(i32 %201, i32 %202)
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* %8, align 4
  %206 = sdiv i32 %205, %204
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %9, align 4
  %209 = sdiv i32 %208, %207
  store i32 %209, i32* %9, align 4
  %210 = load i32, i32* %12, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %194
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  br label %228

220:                                              ; preds = %194
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  br label %228

228:                                              ; preds = %220, %212
  %229 = phi i32 [ %219, %212 ], [ %227, %220 ]
  store i32 %229, i32* %18, align 4
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %17, align 4
  %237 = load i32, i32* %12, align 4
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 3
  store i32 %237, i32* %243, align 4
  %244 = load i32*, i32** %3, align 8
  %245 = load i32, i32* %5, align 4
  %246 = call i32 @WRITE_FOURCC(i32* %244, i32 %245, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %247 = load i32*, i32** %3, align 8
  %248 = load i32, i32* %6, align 4
  %249 = call i32 @WRITE_FOURCC(i32* %247, i32 %248, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %250 = load i32*, i32** %3, align 8
  %251 = load i32, i32* %7, align 4
  %252 = call i32 @WRITE_U32(i32* %250, i32 %251, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %253 = load i32*, i32** %3, align 8
  %254 = call i32 @WRITE_U16(i32* %253, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %255 = load i32*, i32** %3, align 8
  %256 = call i32 @WRITE_U16(i32* %255, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %257 = load i32*, i32** %3, align 8
  %258 = call i32 @WRITE_U32(i32* %257, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %259 = load i32*, i32** %3, align 8
  %260 = load i32, i32* %8, align 4
  %261 = call i32 @WRITE_U32(i32* %259, i32 %260, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %262 = load i32*, i32** %3, align 8
  %263 = load i32, i32* %9, align 4
  %264 = call i32 @WRITE_U32(i32* %262, i32 %263, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %265 = load i32*, i32** %3, align 8
  %266 = load i32, i32* %11, align 4
  %267 = call i32 @WRITE_U32(i32* %265, i32 %266, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %268 = load i32*, i32** %3, align 8
  %269 = load i32, i32* %18, align 4
  %270 = call i32 @WRITE_U32(i32* %268, i32 %269, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %271 = load i32*, i32** %3, align 8
  %272 = load i32, i32* %17, align 4
  %273 = call i32 @WRITE_U32(i32* %271, i32 %272, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %274 = load i32*, i32** %3, align 8
  %275 = call i32 @WRITE_U32(i32* %274, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %276 = load i32*, i32** %3, align 8
  %277 = load i32, i32* %12, align 4
  %278 = call i32 @WRITE_U32(i32* %276, i32 %277, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %279 = load i32*, i32** %3, align 8
  %280 = load i64, i64* %13, align 8
  %281 = call i32 @WRITE_U16(i32* %279, i64 %280, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %282 = load i32*, i32** %3, align 8
  %283 = load i64, i64* %15, align 8
  %284 = call i32 @WRITE_U16(i32* %282, i64 %283, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %285 = load i32*, i32** %3, align 8
  %286 = load i64, i64* %14, align 8
  %287 = call i32 @WRITE_U16(i32* %285, i64 %286, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  %288 = load i32*, i32** %3, align 8
  %289 = load i64, i64* %16, align 8
  %290 = call i32 @WRITE_U16(i32* %288, i64 %289, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %291 = load i32*, i32** %3, align 8
  %292 = call i32 @STREAM_STATUS(i32* %291)
  ret i32 %292
}

declare dso_local i32 @WRITE_FOURCC(i32*, i32, i8*) #1

declare dso_local i32 @VC_FOURCC(i8 signext, i8 zeroext, i8 signext, i8 signext) #1

declare dso_local i32 @WRITE_U32(i32*, i32, i8*) #1

declare dso_local i32 @LOG_DEBUG(i32*, i8*, ...) #1

declare dso_local i32 @vc_container_assert(i32) #1

declare dso_local i32 @codec_to_vfw_fourcc(i32) #1

declare dso_local i32 @vc_container_maths_gcd(i32, i32) #1

declare dso_local i32 @WRITE_U16(i32*, i64, i8*) #1

declare dso_local i32 @STREAM_STATUS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
