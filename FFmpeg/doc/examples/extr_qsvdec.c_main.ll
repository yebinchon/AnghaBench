; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_qsvdec.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_qsvdec.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_20__** }
%struct.TYPE_20__ = type { i64, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i64, i64, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_19__*, i64, i32, i64 }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_21__ = type { i64, i64, i32*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Usage: %s <input file> <output file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot open input file '%s': \00", align 1
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@AVDISCARD_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"No H.264 video stream in the input file\0A\00", align 1
@AV_HWDEVICE_TYPE_QSV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Cannot open the hardware device\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"h264_qsv\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"The QSV decoder is not present in libavcodec\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@get_format = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Error opening the decoder: \00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"Error opening the output context: \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_19__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca [1024 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %8, align 8
  %19 = bitcast %struct.TYPE_21__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %20 = bitcast %struct.TYPE_19__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 16, i1 false)
  store i32* null, i32** %14, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 1, i32* %3, align 4
  br label %245

29:                                               ; preds = %2
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @avformat_open_input(%struct.TYPE_22__** %6, i8* %32, i32* null, i32* null)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* @stderr, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %225

42:                                               ; preds = %29
  store i32 0, i32* %16, align 4
  br label %43

43:                                               ; preds = %74, %42
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %43
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %51, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %52, i64 %54
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %55, align 8
  store %struct.TYPE_20__* %56, %struct.TYPE_20__** %17, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %49
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %66 = icmp ne %struct.TYPE_20__* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %68, %struct.TYPE_20__** %7, align 8
  br label %73

69:                                               ; preds = %64, %49
  %70 = load i32, i32* @AVDISCARD_ALL, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %67
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %16, align 4
  br label %43

77:                                               ; preds = %43
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %79 = icmp ne %struct.TYPE_20__* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %225

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %85 = load i32, i32* @AV_HWDEVICE_TYPE_QSV, align 4
  %86 = call i32 @av_hwdevice_ctx_create(i32* %84, i32 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %225

92:                                               ; preds = %83
  %93 = call i32* @avcodec_find_decoder_by_name(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32* %93, i32** %9, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %225

99:                                               ; preds = %92
  %100 = load i32*, i32** %9, align 8
  %101 = call %struct.TYPE_23__* @avcodec_alloc_context3(i32* %100)
  store %struct.TYPE_23__* %101, %struct.TYPE_23__** %8, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %103 = icmp ne %struct.TYPE_23__* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = call i32 @AVERROR(i32 %105)
  store i32 %106, i32* %15, align 4
  br label %225

107:                                              ; preds = %99
  %108 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 4
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %157

117:                                              ; preds = %107
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @av_mallocz(i64 %124)
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %117
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = call i32 @AVERROR(i32 %133)
  store i32 %134, i32* %15, align 4
  br label %225

135:                                              ; preds = %117
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @memcpy(i32 %138, i32 %143, i64 %148)
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 2
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %135, %107
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 1
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %159, align 8
  %160 = load i32, i32* @get_format, align 4
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %164 = call i32 @avcodec_open2(%struct.TYPE_23__* %163, i32* null, i32* null)
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %157
  %168 = load i32, i32* @stderr, align 4
  %169 = call i32 (i32, i8*, ...) @fprintf(i32 %168, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %225

170:                                              ; preds = %157
  %171 = load i8**, i8*** %5, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 2
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %175 = call i32 @avio_open(i32** %14, i8* %173, i32 %174)
  store i32 %175, i32* %15, align 4
  %176 = load i32, i32* %15, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %170
  %179 = load i32, i32* @stderr, align 4
  %180 = call i32 (i32, i8*, ...) @fprintf(i32 %179, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %225

181:                                              ; preds = %170
  %182 = call i32* (...) @av_frame_alloc()
  store i32* %182, i32** %11, align 8
  %183 = call i32* (...) @av_frame_alloc()
  store i32* %183, i32** %12, align 8
  %184 = load i32*, i32** %11, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load i32*, i32** %12, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %186, %181
  %190 = load i32, i32* @ENOMEM, align 4
  %191 = call i32 @AVERROR(i32 %190)
  store i32 %191, i32* %15, align 4
  br label %225

192:                                              ; preds = %186
  br label %193

193:                                              ; preds = %215, %192
  %194 = load i32, i32* %15, align 4
  %195 = icmp sge i32 %194, 0
  br i1 %195, label %196, label %217

196:                                              ; preds = %193
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %198 = call i32 @av_read_frame(%struct.TYPE_22__* %197, %struct.TYPE_21__* %10)
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* %15, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %217

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %204, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %202
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %211 = load i32*, i32** %11, align 8
  %212 = load i32*, i32** %12, align 8
  %213 = load i32*, i32** %14, align 8
  %214 = call i32 @decode_packet(%struct.TYPE_19__* %13, %struct.TYPE_23__* %210, i32* %211, i32* %212, %struct.TYPE_21__* %10, i32* %213)
  store i32 %214, i32* %15, align 4
  br label %215

215:                                              ; preds = %209, %202
  %216 = call i32 @av_packet_unref(%struct.TYPE_21__* %10)
  br label %193

217:                                              ; preds = %201, %193
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  store i32* null, i32** %218, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  store i64 0, i64* %219, align 8
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %221 = load i32*, i32** %11, align 8
  %222 = load i32*, i32** %12, align 8
  %223 = load i32*, i32** %14, align 8
  %224 = call i32 @decode_packet(%struct.TYPE_19__* %13, %struct.TYPE_23__* %220, i32* %221, i32* %222, %struct.TYPE_21__* %10, i32* %223)
  store i32 %224, i32* %15, align 4
  br label %225

225:                                              ; preds = %217, %189, %178, %167, %132, %104, %96, %89, %80, %36
  %226 = load i32, i32* %15, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = load i32, i32* %15, align 4
  %230 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %231 = call i32 @av_strerror(i32 %229, i8* %230, i32 1024)
  %232 = load i32, i32* @stderr, align 4
  %233 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %234 = call i32 (i32, i8*, ...) @fprintf(i32 %232, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %233)
  br label %235

235:                                              ; preds = %228, %225
  %236 = call i32 @avformat_close_input(%struct.TYPE_22__** %6)
  %237 = call i32 @av_frame_free(i32** %11)
  %238 = call i32 @av_frame_free(i32** %12)
  %239 = call i32 @avcodec_free_context(%struct.TYPE_23__** %8)
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %241 = call i32 @av_buffer_unref(i32* %240)
  %242 = load i32*, i32** %14, align 8
  %243 = call i32 @avio_close(i32* %242)
  %244 = load i32, i32* %15, align 4
  store i32 %244, i32* %3, align 4
  br label %245

245:                                              ; preds = %235, %23
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @avformat_open_input(%struct.TYPE_22__**, i8*, i32*, i32*) #2

declare dso_local i32 @av_hwdevice_ctx_create(i32*, i32, i8*, i32*, i32) #2

declare dso_local i32* @avcodec_find_decoder_by_name(i8*) #2

declare dso_local %struct.TYPE_23__* @avcodec_alloc_context3(i32*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_mallocz(i64) #2

declare dso_local i32 @memcpy(i32, i32, i64) #2

declare dso_local i32 @avcodec_open2(%struct.TYPE_23__*, i32*, i32*) #2

declare dso_local i32 @avio_open(i32**, i8*, i32) #2

declare dso_local i32* @av_frame_alloc(...) #2

declare dso_local i32 @av_read_frame(%struct.TYPE_22__*, %struct.TYPE_21__*) #2

declare dso_local i32 @decode_packet(%struct.TYPE_19__*, %struct.TYPE_23__*, i32*, i32*, %struct.TYPE_21__*, i32*) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_21__*) #2

declare dso_local i32 @av_strerror(i32, i8*, i32) #2

declare dso_local i32 @avformat_close_input(%struct.TYPE_22__**) #2

declare dso_local i32 @av_frame_free(i32**) #2

declare dso_local i32 @avcodec_free_context(%struct.TYPE_23__**) #2

declare dso_local i32 @av_buffer_unref(i32*) #2

declare dso_local i32 @avio_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
