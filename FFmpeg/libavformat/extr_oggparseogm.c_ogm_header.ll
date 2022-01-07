; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparseogm.c_ogm_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparseogm.c_ogm_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__**, %struct.ogg* }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, %struct.TYPE_23__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i64*, i32 }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32, i64, i64 }
%struct.TYPE_20__ = type { i32 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@ff_codec_bmp_tags = common dso_local global i32 0, align 4
@AV_CODEC_ID_MPEG4 = common dso_local global i64 0, align 8
@AVSTREAM_PARSE_HEADERS = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@AV_CODEC_ID_TEXT = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@ff_codec_wav_tags = common dso_local global i32 0, align 4
@AV_CODEC_ID_AAC = common dso_local global i64 0, align 8
@AVSTREAM_PARSE_FULL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid timing values.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32)* @ogm_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogm_header(%struct.TYPE_22__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ogg*, align 8
  %7 = alloca %struct.ogg_stream*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [5 x i64], align 16
  %15 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %18 = load %struct.ogg*, %struct.ogg** %17, align 8
  store %struct.ogg* %18, %struct.ogg** %6, align 8
  %19 = load %struct.ogg*, %struct.ogg** %6, align 8
  %20 = getelementptr inbounds %struct.ogg, %struct.ogg* %19, i32 0, i32 0
  %21 = load %struct.ogg_stream*, %struct.ogg_stream** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %21, i64 %23
  store %struct.ogg_stream* %24, %struct.ogg_stream** %7, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %27, i64 %29
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  store %struct.TYPE_21__* %31, %struct.TYPE_21__** %8, align 8
  %32 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %33 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %36 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %40 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @bytestream2_init(%struct.TYPE_20__* %9, i64 %38, i32 %41)
  %43 = call i32 @bytestream2_peek_byte(%struct.TYPE_20__* %9)
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %285

47:                                               ; preds = %2
  %48 = call i32 @bytestream2_peek_byte(%struct.TYPE_20__* %9)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %267

50:                                               ; preds = %47
  %51 = call i32 @bytestream2_skip(%struct.TYPE_20__* %9, i32 1)
  %52 = call i32 @bytestream2_peek_byte(%struct.TYPE_20__* %9)
  %53 = icmp eq i32 %52, 118
  br i1 %53, label %54, label %87

54:                                               ; preds = %50
  %55 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  store i64 %55, i64* %59, align 8
  %60 = call i32 @bytestream2_skip(%struct.TYPE_20__* %9, i32 8)
  %61 = call i32 @bytestream2_get_le32(%struct.TYPE_20__* %9)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* @ff_codec_bmp_tags, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i8* @ff_codec_get_id(i32 %62, i32 %63)
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  store i64 %65, i64* %69, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 2
  store i32 %70, i32* %74, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AV_CODEC_ID_MPEG4, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %54
  %83 = load i32, i32* @AVSTREAM_PARSE_HEADERS, align 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %82, %54
  br label %136

87:                                               ; preds = %50
  %88 = call i32 @bytestream2_peek_byte(%struct.TYPE_20__* %9)
  %89 = icmp eq i32 %88, 116
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  store i64 %91, i64* %95, align 8
  %96 = load i64, i64* @AV_CODEC_ID_TEXT, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 1
  store i64 %96, i64* %100, align 8
  %101 = call i32 @bytestream2_skip(%struct.TYPE_20__* %9, i32 12)
  br label %135

102:                                              ; preds = %87
  %103 = bitcast [5 x i64]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %103, i8 0, i64 40, i1 false)
  %104 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  store i64 %104, i64* %108, align 8
  %109 = call i32 @bytestream2_skip(%struct.TYPE_20__* %9, i32 8)
  %110 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 0
  %111 = call i32 @bytestream2_get_buffer(%struct.TYPE_20__* %9, i64* %110, i32 4)
  %112 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 4
  store i64 0, i64* %112, align 16
  %113 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 0
  %114 = call i32 @strtol(i64* %113, i32* null, i32 16)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* @ff_codec_wav_tags, align 4
  %116 = load i32, i32* %15, align 4
  %117 = call i8* @ff_codec_get_id(i32 %115, i32 %116)
  %118 = ptrtoint i8* %117 to i64
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 1
  store i64 %118, i64* %122, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %102
  %131 = load i32, i32* @AVSTREAM_PARSE_FULL, align 4
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %130, %102
  br label %135

135:                                              ; preds = %134, %90
  br label %136

136:                                              ; preds = %135, %86
  %137 = call i32 @bytestream2_get_le32(%struct.TYPE_20__* %9)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %140 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @FFMIN(i32 %138, i32 %141)
  store i32 %142, i32* %12, align 4
  %143 = call i32 @bytestream2_get_le64(%struct.TYPE_20__* %9)
  store i32 %143, i32* %10, align 4
  %144 = call i32 @bytestream2_get_le64(%struct.TYPE_20__* %9)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %136
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %147, %136
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %152 = load i32, i32* @AV_LOG_ERROR, align 4
  %153 = call i32 @av_log(%struct.TYPE_22__* %151, i32 %152, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %154 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %154, i32* %3, align 4
  br label %285

155:                                              ; preds = %147
  %156 = call i32 @bytestream2_skip(%struct.TYPE_20__* %9, i32 4)
  %157 = call i32 @bytestream2_skip(%struct.TYPE_20__* %9, i32 8)
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %181

165:                                              ; preds = %155
  %166 = call i32 @bytestream2_get_le32(%struct.TYPE_20__* %9)
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 3
  store i32 %166, i32* %170, align 4
  %171 = call i32 @bytestream2_get_le32(%struct.TYPE_20__* %9)
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 4
  store i32 %171, i32* %175, align 8
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %11, align 4
  %179 = mul nsw i32 %178, 10000000
  %180 = call i32 @avpriv_set_pts_info(%struct.TYPE_21__* %176, i32 64, i32 %177, i32 %179)
  br label %262

181:                                              ; preds = %155
  %182 = call i32 @bytestream2_get_le16(%struct.TYPE_20__* %9)
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 9
  store i32 %182, i32* %186, align 8
  %187 = call i32 @bytestream2_skip(%struct.TYPE_20__* %9, i32 2)
  %188 = call i32 @bytestream2_get_le32(%struct.TYPE_20__* %9)
  %189 = mul nsw i32 %188, 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 5
  store i32 %189, i32* %193, align 4
  %194 = load i32, i32* %11, align 4
  %195 = mul nsw i32 %194, 10000000
  %196 = load i32, i32* %10, align 4
  %197 = sdiv i32 %195, %196
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 6
  store i32 %197, i32* %201, align 8
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @avpriv_set_pts_info(%struct.TYPE_21__* %202, i32 64, i32 1, i32 %207)
  %209 = load i32, i32* %12, align 4
  %210 = icmp sge i32 %209, 56
  br i1 %210, label %211, label %223

211:                                              ; preds = %181
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %211
  %220 = call i32 @bytestream2_skip(%struct.TYPE_20__* %9, i32 4)
  %221 = load i32, i32* %12, align 4
  %222 = sub nsw i32 %221, 4
  store i32 %222, i32* %12, align 4
  br label %223

223:                                              ; preds = %219, %211, %181
  %224 = load i32, i32* %12, align 4
  %225 = icmp sgt i32 %224, 52
  br i1 %225, label %226, label %261

226:                                              ; preds = %223
  %227 = load i32, i32* %12, align 4
  %228 = sub nsw i32 %227, 52
  store i32 %228, i32* %12, align 4
  %229 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_20__* %9)
  %230 = load i32, i32* %12, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %226
  %233 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %233, i32* %3, align 4
  br label %285

234:                                              ; preds = %226
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 8
  %239 = call i32 @av_freep(i64** %238)
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %241, align 8
  %243 = load i32, i32* %12, align 4
  %244 = call i64 @ff_alloc_extradata(%struct.TYPE_23__* %242, i32 %243)
  %245 = icmp slt i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %234
  %247 = load i32, i32* @ENOMEM, align 4
  %248 = call i32 @AVERROR(i32 %247)
  store i32 %248, i32* %3, align 4
  br label %285

249:                                              ; preds = %234
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 8
  %254 = load i64*, i64** %253, align 8
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @bytestream2_get_buffer(%struct.TYPE_20__* %9, i64* %254, i32 %259)
  br label %261

261:                                              ; preds = %249, %223
  br label %262

262:                                              ; preds = %261, %165
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 0
  store i32 1, i32* %266, align 4
  br label %284

267:                                              ; preds = %47
  %268 = call i32 @bytestream2_peek_byte(%struct.TYPE_20__* %9)
  %269 = icmp eq i32 %268, 3
  br i1 %269, label %270, label %283

270:                                              ; preds = %267
  %271 = call i32 @bytestream2_skip(%struct.TYPE_20__* %9, i32 7)
  %272 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_20__* %9)
  %273 = icmp sgt i32 %272, 1
  br i1 %273, label %274, label %282

274:                                              ; preds = %270
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_20__* %9)
  %280 = sub nsw i32 %279, 1
  %281 = call i32 @ff_vorbis_stream_comment(%struct.TYPE_22__* %275, %struct.TYPE_21__* %276, i32 %278, i32 %280)
  br label %282

282:                                              ; preds = %274, %270
  br label %283

283:                                              ; preds = %282, %267
  br label %284

284:                                              ; preds = %283, %262
  store i32 1, i32* %3, align 4
  br label %285

285:                                              ; preds = %284, %246, %232, %150, %46
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local i32 @bytestream2_init(%struct.TYPE_20__*, i64, i32) #1

declare dso_local i32 @bytestream2_peek_byte(%struct.TYPE_20__*) #1

declare dso_local i32 @bytestream2_skip(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @bytestream2_get_le32(%struct.TYPE_20__*) #1

declare dso_local i8* @ff_codec_get_id(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bytestream2_get_buffer(%struct.TYPE_20__*, i64*, i32) #1

declare dso_local i32 @strtol(i64*, i32*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @bytestream2_get_le64(%struct.TYPE_20__*) #1

declare dso_local i32 @av_log(%struct.TYPE_22__*, i32, i8*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @bytestream2_get_le16(%struct.TYPE_20__*) #1

declare dso_local i32 @bytestream2_get_bytes_left(%struct.TYPE_20__*) #1

declare dso_local i32 @av_freep(i64**) #1

declare dso_local i64 @ff_alloc_extradata(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_vorbis_stream_comment(%struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
