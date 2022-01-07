; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvenc_hevc.c_generate_fake_vps.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvenc_hevc.c_generate_fake_vps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32*, i32, i32* }
%struct.TYPE_20__ = type { i32, i32, i32* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__, %struct.TYPE_15__*, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"No extradata returned from libmfx\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Error unescaping the SPS buffer\0A\00", align 1
@HEVC_NAL_SPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Unexpected NAL type in the extradata: %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Error parsing the SPS\0A\00", align 1
@HEVC_MAX_SUB_LAYERS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Error writing the VPS\0A\00", align 1
@HEVC_NAL_VPS = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_21__*)* @generate_fake_vps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_fake_vps(i32* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca %struct.TYPE_17__, align 8
  %13 = alloca [128 x i32], align 16
  %14 = alloca [128 x i32], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %21 = bitcast %struct.TYPE_19__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = bitcast %struct.TYPE_20__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 16, i1 false)
  %23 = bitcast %struct.TYPE_18__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 56, i1 false)
  %24 = bitcast %struct.TYPE_17__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 88, i1 false)
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %2
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %30, i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %33, i32* %3, align 4
  br label %263

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @av_fast_padded_malloc(i32** %35, i32* %36, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = call i32 @AVERROR(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %263

47:                                               ; preds = %34
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 4
  %56 = call i32 @ff_h2645_extract_rbsp(i32* %51, i32 %55, %struct.TYPE_19__* %9, %struct.TYPE_20__* %10, i32 1)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %47
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %61 = load i32, i32* @AV_LOG_ERROR, align 4
  %62 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %60, i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %17, align 4
  store i32 %63, i32* %3, align 4
  br label %263

64:                                               ; preds = %47
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @init_get_bits8(i32* %8, i32 %66, i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %74 = call i32 @av_freep(i32** %73)
  %75 = load i32, i32* %17, align 4
  store i32 %75, i32* %3, align 4
  br label %263

76:                                               ; preds = %64
  %77 = call i32 @get_bits(i32* %8, i32 1)
  %78 = call i32 @get_bits(i32* %8, i32 6)
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* @HEVC_NAL_SPS, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %84 = load i32, i32* @AV_LOG_ERROR, align 4
  %85 = load i32, i32* %19, align 4
  %86 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %83, i32 %84, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %88 = call i32 @av_freep(i32** %87)
  %89 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %89, i32* %3, align 4
  br label %263

90:                                               ; preds = %76
  %91 = call i32 @get_bits(i32* %8, i32 9)
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %93 = call i32 @ff_hevc_parse_sps(%struct.TYPE_18__* %11, i32* %8, i32* %16, i32 0, i32* null, %struct.TYPE_21__* %92)
  store i32 %93, i32* %17, align 4
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %95 = call i32 @av_freep(i32** %94)
  %96 = load i32, i32* %17, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %90
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %100 = load i32, i32* @AV_LOG_ERROR, align 4
  %101 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %99, i32 %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %3, align 4
  br label %263

103:                                              ; preds = %90
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 14
  store i32 %106, i32* %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 13
  store i32 %109, i32* %110, align 4
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 12
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  %113 = call i32 @memcpy(i32* %111, i32* %112, i32 4)
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  store i32 1, i32* %114, align 4
  store i32 0, i32* %18, align 4
  br label %115

115:                                              ; preds = %156, %103
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* @HEVC_MAX_SUB_LAYERS, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %159

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = load i32, i32* %18, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 11
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %18, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %126, i32* %131, align 4
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 10
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %138, i32* %143, align 4
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = load i32, i32* %18, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 9
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %18, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %150, i32* %155, align 4
  br label %156

156:                                              ; preds = %119
  %157 = load i32, i32* %18, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %18, align 4
  br label %115

159:                                              ; preds = %115
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  store i32 1, i32* %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 8
  store i32 %163, i32* %164, align 4
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 7
  store i32 %167, i32* %168, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 6
  store i32 %171, i32* %172, align 4
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 5
  store i32 %175, i32* %176, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 1
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 4
  store i64 %180, i64* %181, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 3
  store i64 0, i64* %182, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %186 = call i32 @ff_hevc_encode_nal_vps(%struct.TYPE_17__* %12, i32 %184, i32* %185, i32 512)
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %159
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %191 = load i32, i32* @AV_LOG_ERROR, align 4
  %192 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %190, i32 %191, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %193 = load i32, i32* %17, align 4
  store i32 %193, i32* %3, align 4
  br label %263

194:                                              ; preds = %159
  %195 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %196 = load i32, i32* %17, align 4
  %197 = call i32 @bytestream2_init(i32* %6, i32* %195, i32 %196)
  %198 = getelementptr inbounds [128 x i32], [128 x i32]* %13, i64 0, i64 0
  %199 = call i32 @bytestream2_init_writer(i32* %7, i32* %198, i32 512)
  %200 = call i32 @bytestream2_put_be32(i32* %7, i32 1)
  %201 = load i32, i32* @HEVC_NAL_VPS, align 4
  %202 = shl i32 %201, 1
  %203 = call i32 @bytestream2_put_byte(i32* %7, i32 %202)
  %204 = call i32 @bytestream2_put_byte(i32* %7, i32 1)
  br label %205

205:                                              ; preds = %220, %194
  %206 = call i32 @bytestream2_get_bytes_left(i32* %6)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %205
  %209 = call i32 @bytestream2_get_bytes_left(i32* %6)
  %210 = icmp sge i32 %209, 3
  br i1 %210, label %211, label %217

211:                                              ; preds = %208
  %212 = call i32 @bytestream2_peek_be24(i32* %6)
  %213 = icmp sle i32 %212, 3
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = call i32 @bytestream2_put_be24(i32* %7, i32 3)
  %216 = call i32 @bytestream2_skip(i32* %6, i32 2)
  br label %220

217:                                              ; preds = %211, %208
  %218 = call i32 @bytestream2_get_byte(i32* %6)
  %219 = call i32 @bytestream2_put_byte(i32* %7, i32 %218)
  br label %220

220:                                              ; preds = %217, %214
  br label %205

221:                                              ; preds = %205
  %222 = call i32 @bytestream2_tell_p(i32* %7)
  store i32 %222, i32* %20, align 4
  %223 = load i32, i32* %20, align 4
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %223, %226
  %228 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %229 = add nsw i32 %227, %228
  %230 = call i32* @av_mallocz(i32 %229)
  store i32* %230, i32** %15, align 8
  %231 = load i32*, i32** %15, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %236, label %233

233:                                              ; preds = %221
  %234 = load i32, i32* @ENOMEM, align 4
  %235 = call i32 @AVERROR(i32 %234)
  store i32 %235, i32* %3, align 4
  br label %263

236:                                              ; preds = %221
  %237 = load i32*, i32** %15, align 8
  %238 = getelementptr inbounds [128 x i32], [128 x i32]* %13, i64 0, i64 0
  %239 = load i32, i32* %20, align 4
  %240 = call i32 @memcpy(i32* %237, i32* %238, i32 %239)
  %241 = load i32*, i32** %15, align 8
  %242 = load i32, i32* %20, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @memcpy(i32* %244, i32* %247, i32 %250)
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 1
  %254 = call i32 @av_freep(i32** %253)
  %255 = load i32*, i32** %15, align 8
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 1
  store i32* %255, i32** %257, align 8
  %258 = load i32, i32* %20, align 4
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = add nsw i32 %261, %258
  store i32 %262, i32* %260, align 8
  store i32 0, i32* %3, align 4
  br label %263

263:                                              ; preds = %236, %233, %189, %98, %82, %72, %59, %44, %29
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, ...) #2

declare dso_local i32 @av_fast_padded_malloc(i32**, i32*, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @ff_h2645_extract_rbsp(i32*, i32, %struct.TYPE_19__*, %struct.TYPE_20__*, i32) #2

declare dso_local i32 @init_get_bits8(i32*, i32, i32) #2

declare dso_local i32 @av_freep(i32**) #2

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i32 @ff_hevc_parse_sps(%struct.TYPE_18__*, i32*, i32*, i32, i32*, %struct.TYPE_21__*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @ff_hevc_encode_nal_vps(%struct.TYPE_17__*, i32, i32*, i32) #2

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #2

declare dso_local i32 @bytestream2_init_writer(i32*, i32*, i32) #2

declare dso_local i32 @bytestream2_put_be32(i32*, i32) #2

declare dso_local i32 @bytestream2_put_byte(i32*, i32) #2

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #2

declare dso_local i32 @bytestream2_peek_be24(i32*) #2

declare dso_local i32 @bytestream2_put_be24(i32*, i32) #2

declare dso_local i32 @bytestream2_skip(i32*, i32) #2

declare dso_local i32 @bytestream2_get_byte(i32*) #2

declare dso_local i32 @bytestream2_tell_p(i32*) #2

declare dso_local i32* @av_mallocz(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
