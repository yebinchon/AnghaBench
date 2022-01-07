; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-band-test.c_video_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-band-test.c_video_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i32 }
%struct.TYPE_36__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_33__ = type { i64, i64 }
%struct.TYPE_32__ = type { i32, i64, i32* }
%struct.TYPE_34__ = type { %struct.TYPE_31__** }
%struct.TYPE_31__ = type { %struct.TYPE_35__* }

@draw_horiz_band_called = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Can't open file\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Can't get stream info\0A\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Can't find video stream in input file\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Can't find decoder\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Can't allocate decoder context\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Can't copy decoder context\0A\00", align 1
@draw_horiz_band = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Can't open decoder\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Can't allocate frame\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"flv\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"mpeg4\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"huffyuv\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Wrong codec\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Can't allocate buffer\0A\00", align 1
@slice_byte_buffer = common dso_local global i32* null, align 8
@slice_byte_buffer_size = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"Error decoding frame\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Can't copy image to buffer\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"draw_horiz_band haven't been called!\0A\00", align 1
@.str.16 = private unnamed_addr constant [67 x i8] c"Decoded frames with and without draw_horiz_band are not the same!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @video_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_decode(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_37__*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_32__, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %4, align 8
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %5, align 8
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %6, align 8
  store i32* null, i32** %7, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %8, align 8
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i64 0, i64* @draw_horiz_band_called, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @avformat_open_input(%struct.TYPE_34__** %10, i8* %17, i32* null, i32* null)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @AV_LOG_ERROR, align 4
  %23 = call i32 @av_log(%struct.TYPE_36__* null, i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %15, align 4
  store i32 %24, i32* %2, align 4
  br label %266

25:                                               ; preds = %1
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %27 = call i32 @avformat_find_stream_info(%struct.TYPE_34__* %26, i32* null)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = call i32 @av_log(%struct.TYPE_36__* null, i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %2, align 4
  br label %266

34:                                               ; preds = %25
  %35 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %36 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %37 = call i32 @av_find_best_stream(%struct.TYPE_34__* %35, i32 %36, i32 -1, i32 -1, i32* null, i32 0)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @AV_LOG_ERROR, align 4
  %42 = call i32 @av_log(%struct.TYPE_36__* null, i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %266

43:                                               ; preds = %34
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %46, i64 %48
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_35__*, %struct.TYPE_35__** %51, align 8
  store %struct.TYPE_35__* %52, %struct.TYPE_35__** %6, align 8
  %53 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_37__* @avcodec_find_decoder(i32 %55)
  store %struct.TYPE_37__* %56, %struct.TYPE_37__** %4, align 8
  %57 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %58 = icmp ne %struct.TYPE_37__* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %43
  %60 = load i32, i32* @AV_LOG_ERROR, align 4
  %61 = call i32 @av_log(%struct.TYPE_36__* null, i32 %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %266

62:                                               ; preds = %43
  %63 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %64 = call %struct.TYPE_36__* @avcodec_alloc_context3(%struct.TYPE_37__* %63)
  store %struct.TYPE_36__* %64, %struct.TYPE_36__** %5, align 8
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %66 = icmp ne %struct.TYPE_36__* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @AV_LOG_ERROR, align 4
  %69 = call i32 @av_log(%struct.TYPE_36__* null, i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = call i32 @AVERROR(i32 %70)
  store i32 %71, i32* %2, align 4
  br label %266

72:                                               ; preds = %62
  %73 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %74 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %75 = call i32 @avcodec_parameters_to_context(%struct.TYPE_36__* %73, %struct.TYPE_35__* %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* @AV_LOG_ERROR, align 4
  %80 = call i32 @av_log(%struct.TYPE_36__* null, i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %2, align 4
  br label %266

82:                                               ; preds = %72
  %83 = load i32, i32* @draw_horiz_band, align 4
  %84 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 4
  %88 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %89 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %90 = call i32 @avcodec_open2(%struct.TYPE_36__* %88, %struct.TYPE_37__* %89, i32* null)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %82
  %94 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %95 = load i32, i32* @AV_LOG_ERROR, align 4
  %96 = call i32 @av_log(%struct.TYPE_36__* %94, i32 %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %2, align 4
  br label %266

98:                                               ; preds = %82
  %99 = call %struct.TYPE_33__* (...) @av_frame_alloc()
  store %struct.TYPE_33__* %99, %struct.TYPE_33__** %8, align 8
  %100 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %101 = icmp ne %struct.TYPE_33__* %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* @AV_LOG_ERROR, align 4
  %104 = call i32 @av_log(%struct.TYPE_36__* null, i32 %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = call i32 @AVERROR(i32 %105)
  store i32 %106, i32* %2, align 4
  br label %266

107:                                              ; preds = %98
  %108 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @strcmp(i32 %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %107
  %114 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @strcmp(i32 %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %113
  %120 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @strcmp(i32 %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* @AV_LOG_ERROR, align 4
  %127 = call i32 @av_log(%struct.TYPE_36__* null, i32 %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %266

128:                                              ; preds = %119, %113, %107
  %129 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @av_image_get_buffer_size(i32 %131, i32 %134, i32 %137, i32 32)
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = call i32* @av_malloc(i32 %139)
  store i32* %140, i32** %7, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %148, label %143

143:                                              ; preds = %128
  %144 = load i32, i32* @AV_LOG_ERROR, align 4
  %145 = call i32 @av_log(%struct.TYPE_36__* null, i32 %144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = call i32 @AVERROR(i32 %146)
  store i32 %147, i32* %2, align 4
  br label %266

148:                                              ; preds = %128
  %149 = load i32, i32* %14, align 4
  %150 = call i32* @av_malloc(i32 %149)
  store i32* %150, i32** @slice_byte_buffer, align 8
  %151 = load i32*, i32** @slice_byte_buffer, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* @AV_LOG_ERROR, align 4
  %155 = call i32 @av_log(%struct.TYPE_36__* null, i32 %154, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = call i32 @AVERROR(i32 %156)
  store i32 %157, i32* %2, align 4
  br label %266

158:                                              ; preds = %148
  %159 = load i32*, i32** @slice_byte_buffer, align 8
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @memset(i32* %159, i32 0, i32 %160)
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* @slice_byte_buffer_size, align 4
  %163 = call i32 @av_init_packet(%struct.TYPE_32__* %9)
  br label %164

164:                                              ; preds = %255, %158
  %165 = load i32, i32* %16, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %164
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %169 = call i64 @av_read_frame(%struct.TYPE_34__* %168, %struct.TYPE_32__* %9)
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  store i32 1, i32* %16, align 4
  br label %172

172:                                              ; preds = %171, %167
  br label %173

173:                                              ; preds = %172, %164
  %174 = load i32, i32* %16, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %9, i32 0, i32 2
  store i32* null, i32** %177, align 8
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %9, i32 0, i32 1
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %176, %173
  %180 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %9, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %187, label %184

184:                                              ; preds = %179
  %185 = load i32, i32* %16, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %248

187:                                              ; preds = %184, %179
  store i32 0, i32* %13, align 4
  %188 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %189 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %190 = call i32 @avcodec_decode_video2(%struct.TYPE_36__* %188, %struct.TYPE_33__* %189, i32* %13, %struct.TYPE_32__* %9)
  store i32 %190, i32* %15, align 4
  %191 = load i32, i32* %15, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load i32, i32* @AV_LOG_ERROR, align 4
  %195 = call i32 @av_log(%struct.TYPE_36__* null, i32 %194, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %196 = load i32, i32* %15, align 4
  store i32 %196, i32* %2, align 4
  br label %266

197:                                              ; preds = %187
  %198 = load i32, i32* %13, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %245

200:                                              ; preds = %197
  %201 = load i32*, i32** %7, align 8
  %202 = load i32, i32* %14, align 4
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = inttoptr i64 %205 to i32**
  %207 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to i32*
  %211 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @av_image_copy_to_buffer(i32* %201, i32 %202, i32** %206, i32* %210, i32 %213, i32 %216, i32 %219, i32 1)
  store i32 %220, i32* %11, align 4
  %221 = load i32, i32* %11, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %200
  %224 = load i32, i32* @AV_LOG_ERROR, align 4
  %225 = call i32 @av_log(%struct.TYPE_36__* null, i32 %224, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %226 = load i32, i32* %11, align 4
  store i32 %226, i32* %2, align 4
  br label %266

227:                                              ; preds = %200
  %228 = load i64, i64* @draw_horiz_band_called, align 8
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load i32, i32* @AV_LOG_ERROR, align 4
  %232 = call i32 @av_log(%struct.TYPE_36__* null, i32 %231, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %266

233:                                              ; preds = %227
  %234 = load i32*, i32** %7, align 8
  %235 = load i32, i32* %11, align 4
  %236 = call i64 @av_adler32_update(i32 0, i32* %234, i32 %235)
  %237 = load i32*, i32** @slice_byte_buffer, align 8
  %238 = load i32, i32* %11, align 4
  %239 = call i64 @av_adler32_update(i32 0, i32* %237, i32 %238)
  %240 = icmp ne i64 %236, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %233
  %242 = load i32, i32* @AV_LOG_ERROR, align 4
  %243 = call i32 @av_log(%struct.TYPE_36__* null, i32 %242, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %266

244:                                              ; preds = %233
  br label %245

245:                                              ; preds = %244, %197
  %246 = call i32 @av_packet_unref(%struct.TYPE_32__* %9)
  %247 = call i32 @av_init_packet(%struct.TYPE_32__* %9)
  br label %248

248:                                              ; preds = %245, %184
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %16, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load i32, i32* %13, align 4
  %254 = icmp ne i32 %253, 0
  br label %255

255:                                              ; preds = %252, %249
  %256 = phi i1 [ true, %249 ], [ %254, %252 ]
  br i1 %256, label %164, label %257

257:                                              ; preds = %255
  %258 = call i32 @av_packet_unref(%struct.TYPE_32__* %9)
  %259 = call i32 @av_frame_free(%struct.TYPE_33__** %8)
  %260 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %261 = call i32 @avcodec_close(%struct.TYPE_36__* %260)
  %262 = call i32 @avformat_close_input(%struct.TYPE_34__** %10)
  %263 = call i32 @avcodec_free_context(%struct.TYPE_36__** %5)
  %264 = call i32 @av_freep(i32** %7)
  %265 = call i32 @av_freep(i32** @slice_byte_buffer)
  store i32 0, i32* %2, align 4
  br label %266

266:                                              ; preds = %257, %241, %230, %223, %193, %153, %143, %125, %102, %93, %78, %67, %59, %40, %30, %21
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local i32 @avformat_open_input(%struct.TYPE_34__**, i8*, i32*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_36__*, i32, i8*) #1

declare dso_local i32 @avformat_find_stream_info(%struct.TYPE_34__*, i32*) #1

declare dso_local i32 @av_find_best_stream(%struct.TYPE_34__*, i32, i32, i32, i32*, i32) #1

declare dso_local %struct.TYPE_37__* @avcodec_find_decoder(i32) #1

declare dso_local %struct.TYPE_36__* @avcodec_alloc_context3(%struct.TYPE_37__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avcodec_parameters_to_context(%struct.TYPE_36__*, %struct.TYPE_35__*) #1

declare dso_local i32 @avcodec_open2(%struct.TYPE_36__*, %struct.TYPE_37__*, i32*) #1

declare dso_local %struct.TYPE_33__* @av_frame_alloc(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @av_image_get_buffer_size(i32, i32, i32, i32) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_32__*) #1

declare dso_local i64 @av_read_frame(%struct.TYPE_34__*, %struct.TYPE_32__*) #1

declare dso_local i32 @avcodec_decode_video2(%struct.TYPE_36__*, %struct.TYPE_33__*, i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @av_image_copy_to_buffer(i32*, i32, i32**, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @av_adler32_update(i32, i32*, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_32__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_33__**) #1

declare dso_local i32 @avcodec_close(%struct.TYPE_36__*) #1

declare dso_local i32 @avformat_close_input(%struct.TYPE_34__**) #1

declare dso_local i32 @avcodec_free_context(%struct.TYPE_36__**) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
