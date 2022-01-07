; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flacdec.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flacdec.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_16__, %struct.TYPE_15__*, i32, i64, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i64, i64, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid frame header\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"bps not found in STREAMINFO or frame header\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"switching bps mid-stream is not supported\0A\00", align 1
@FLAC_MAX_BLOCKSIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"blocksize %d > %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"sample rate not found in STREAMINFO or frame header\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 6
  store i32* %9, i32** %6, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @ff_flac_decode_frame_header(%struct.TYPE_15__* %12, i32* %13, %struct.TYPE_13__* %7, i32 0)
  store i32 %14, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = load i32, i32* @AV_LOG_ERROR, align 4
  %21 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %19, i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %288

23:                                               ; preds = %1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %29
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  store i32 %44, i32* %51, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = call i32 @ff_flac_set_channel_layout(%struct.TYPE_15__* %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = call i32 @allocate_buffers(%struct.TYPE_14__* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %42
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %288

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62, %37, %29, %23
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  store i32 %65, i32* %72, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %63
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = call i32 @ff_flac_set_channel_layout(%struct.TYPE_15__* %82)
  br label %84

84:                                               ; preds = %79, %63
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = load i32, i32* @AV_LOG_ERROR, align 4
  %103 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %101, i32 %102, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %104, i32* %2, align 4
  br label %288

105:                                              ; preds = %94, %84
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  store i64 %113, i64* %114, align 8
  br label %137

115:                                              ; preds = %105
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %123, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %121
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = load i32, i32* @AV_LOG_ERROR, align 4
  %134 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %132, i32 %133, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %135, i32* %2, align 4
  br label %288

136:                                              ; preds = %121, %115
  br label %137

137:                                              ; preds = %136, %109
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %155, label %143

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  store i64 %145, i64* %149, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  store i64 %145, i64* %152, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %154 = call i32 @flac_set_bps(%struct.TYPE_14__* %153)
  br label %155

155:                                              ; preds = %143, %137
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %155
  %162 = load i64, i64* @FLAC_MAX_BLOCKSIZE, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 3
  store i64 %162, i64* %165, align 8
  br label %166

166:                                              ; preds = %161, %155
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp sgt i64 %168, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %166
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  %178 = load i32, i32* @AV_LOG_ERROR, align 4
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %177, i32 %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %180, i64 %184)
  %186 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %186, i32* %2, align 4
  br label %288

187:                                              ; preds = %166
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 4
  store i64 %189, i64* %191, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %208, label %197

197:                                              ; preds = %187
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %208, label %201

201:                                              ; preds = %197
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %203, align 8
  %205 = load i32, i32* @AV_LOG_ERROR, align 4
  %206 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %204, i32 %205, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %207 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %207, i32* %2, align 4
  br label %288

208:                                              ; preds = %197, %187
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %208
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  store i64 %216, i64* %217, align 8
  br label %218

218:                                              ; preds = %212, %208
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 2
  store i64 %220, i64* %224, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 2
  store i64 %220, i64* %227, align 8
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %248, label %232

232:                                              ; preds = %218
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %234 = call i32 @allocate_buffers(%struct.TYPE_14__* %233)
  store i32 %234, i32* %5, align 4
  %235 = load i32, i32* %5, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %232
  %238 = load i32, i32* %5, align 4
  store i32 %238, i32* %2, align 4
  br label %288

239:                                              ; preds = %232
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  store i32 1, i32* %241, align 8
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %243, align 8
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  %247 = call i32 @dump_headers(%struct.TYPE_15__* %244, %struct.TYPE_16__* %246)
  br label %248

248:                                              ; preds = %239, %218
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 3
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @ff_flacdsp_init(i32* %250, i32 %255, i32 %259, i64 %263)
  store i32 0, i32* %4, align 4
  br label %265

265:                                              ; preds = %280, %248
  %266 = load i32, i32* %4, align 4
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp slt i32 %266, %270
  br i1 %271, label %272, label %283

272:                                              ; preds = %265
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %274 = load i32, i32* %4, align 4
  %275 = call i32 @decode_subframe(%struct.TYPE_14__* %273, i32 %274)
  store i32 %275, i32* %5, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %272
  %278 = load i32, i32* %5, align 4
  store i32 %278, i32* %2, align 4
  br label %288

279:                                              ; preds = %272
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %4, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %4, align 4
  br label %265

283:                                              ; preds = %265
  %284 = load i32*, i32** %6, align 8
  %285 = call i32 @align_get_bits(i32* %284)
  %286 = load i32*, i32** %6, align 8
  %287 = call i32 @skip_bits(i32* %286, i32 16)
  store i32 0, i32* %2, align 4
  br label %288

288:                                              ; preds = %283, %277, %237, %201, %174, %129, %98, %60, %16
  %289 = load i32, i32* %2, align 4
  ret i32 %289
}

declare dso_local i32 @ff_flac_decode_frame_header(%struct.TYPE_15__*, i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @ff_flac_set_channel_layout(%struct.TYPE_15__*) #1

declare dso_local i32 @allocate_buffers(%struct.TYPE_14__*) #1

declare dso_local i32 @flac_set_bps(%struct.TYPE_14__*) #1

declare dso_local i32 @dump_headers(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ff_flacdsp_init(i32*, i32, i32, i64) #1

declare dso_local i32 @decode_subframe(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @align_get_bits(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
