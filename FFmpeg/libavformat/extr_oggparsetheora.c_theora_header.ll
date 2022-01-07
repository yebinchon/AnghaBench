; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsetheora.c_theora_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsetheora.c_theora_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__**, %struct.ogg* }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, i32, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_13__ = type { i8*, i8* }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32, i32*, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Too old or unsupported Theora (%x)\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Invalid time base in theora stream, assuming 25 FPS\0A\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_THEORA = common dso_local global i32 0, align 4
@AVSTREAM_PARSE_HEADERS = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Unknown header type %X\0A\00", align 1
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32)* @theora_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @theora_header(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ogg*, align 8
  %7 = alloca %struct.ogg_stream*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = load %struct.ogg*, %struct.ogg** %18, align 8
  store %struct.ogg* %19, %struct.ogg** %6, align 8
  %20 = load %struct.ogg*, %struct.ogg** %6, align 8
  %21 = getelementptr inbounds %struct.ogg, %struct.ogg* %20, i32 0, i32 0
  %22 = load %struct.ogg_stream*, %struct.ogg_stream** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %22, i64 %24
  store %struct.ogg_stream* %25, %struct.ogg_stream** %7, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %28, i64 %30
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %8, align 8
  %33 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %34 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %33, i32 0, i32 3
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %9, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %42 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %40, %43
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %10, align 4
  %46 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %47 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %50 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 128
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %364

57:                                               ; preds = %2
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %59 = icmp ne %struct.TYPE_15__* %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %57
  %61 = call %struct.TYPE_15__* @av_mallocz(i32 12)
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %9, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %63 = icmp ne %struct.TYPE_15__* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = call i32 @AVERROR(i32 %65)
  store i32 %66, i32* %3, align 4
  br label %364

67:                                               ; preds = %60
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %69 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %70 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %69, i32 0, i32 3
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %70, align 8
  br label %71

71:                                               ; preds = %67, %57
  %72 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %73 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %76 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %282 [
    i32 128, label %80
    i32 129, label %258
    i32 130, label %274
  ]

80:                                               ; preds = %71
  %81 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %82 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %85 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %89 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 %90, 8
  %92 = call i32 @init_get_bits(i32* %13, i32* %87, i32 %91)
  %93 = call i32 @skip_bits_long(i32* %13, i32 56)
  %94 = call i8* @get_bits_long(i32* %13, i32 24)
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %100, 196864
  br i1 %101, label %102, label %111

102:                                              ; preds = %80
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %104 = load i32, i32* @AV_LOG_ERROR, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %103, i32 %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @ENOSYS, align 4
  %110 = call i32 @AVERROR(i32 %109)
  store i32 %110, i32* %3, align 4
  br label %364

111:                                              ; preds = %80
  %112 = call i32 @get_bits(i32* %13, i32 16)
  %113 = shl i32 %112, 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  store i32 %113, i32* %117, align 4
  %118 = call i32 @get_bits(i32* %13, i32 16)
  %119 = shl i32 %118, 4
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  store i32 %119, i32* %123, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp sge i32 %126, 197632
  br i1 %127, label %128, label %130

128:                                              ; preds = %111
  %129 = call i32 @skip_bits(i32* %13, i32 100)
  br label %130

130:                                              ; preds = %128, %111
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp sge i32 %133, 197120
  br i1 %134, label %135, label %186

135:                                              ; preds = %130
  %136 = call i8* @get_bits_long(i32* %13, i32 24)
  %137 = ptrtoint i8* %136 to i32
  store i32 %137, i32* %15, align 4
  %138 = call i8* @get_bits_long(i32* %13, i32 24)
  %139 = ptrtoint i8* %138 to i32
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp sle i32 %140, %145
  br i1 %146, label %147, label %184

147:                                              ; preds = %135
  %148 = load i32, i32* %15, align 4
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %153, 16
  %155 = icmp sgt i32 %148, %154
  br i1 %155, label %156, label %184

156:                                              ; preds = %147
  %157 = load i32, i32* %16, align 4
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp sle i32 %157, %162
  br i1 %163, label %164, label %184

164:                                              ; preds = %156
  %165 = load i32, i32* %16, align 4
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, 16
  %172 = icmp sgt i32 %165, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %164
  %174 = load i32, i32* %15, align 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  store i32 %174, i32* %178, align 4
  %179 = load i32, i32* %16, align 4
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 2
  store i32 %179, i32* %183, align 8
  br label %184

184:                                              ; preds = %173, %164, %156, %147, %135
  %185 = call i32 @skip_bits(i32* %13, i32 16)
  br label %186

186:                                              ; preds = %184, %130
  %187 = call i8* @get_bits_long(i32* %13, i32 32)
  %188 = ptrtoint i8* %187 to i32
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i32 %188, i32* %189, align 4
  %190 = call i8* @get_bits_long(i32* %13, i32 32)
  %191 = ptrtoint i8* %190 to i32
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store i32 %191, i32* %192, align 4
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %186
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %196, %186
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %202 = load i32, i32* @AV_LOG_WARNING, align 4
  %203 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %201, i32 %202, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store i32 1, i32* %204, align 4
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i32 25, i32* %205, align 4
  br label %206

206:                                              ; preds = %200, %196
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @avpriv_set_pts_info(%struct.TYPE_16__* %207, i32 64, i32 %209, i32 %211)
  %213 = call i8* @get_bits_long(i32* %13, i32 24)
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 1
  store i8* %213, i8** %216, align 8
  %217 = call i8* @get_bits_long(i32* %13, i32 24)
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  store i8* %217, i8** %220, align 8
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp sge i32 %223, 197120
  br i1 %224, label %225, label %227

225:                                              ; preds = %206
  %226 = call i32 @skip_bits_long(i32* %13, i32 38)
  br label %227

227:                                              ; preds = %225, %206
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = icmp sge i32 %230, 3162112
  br i1 %231, label %232, label %234

232:                                              ; preds = %227
  %233 = call i32 @skip_bits(i32* %13, i32 2)
  br label %234

234:                                              ; preds = %232, %227
  %235 = call i32 @get_bits(i32* %13, i32 5)
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 1
  store i32 %235, i32* %237, align 4
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = shl i32 1, %240
  %242 = sub i32 %241, 1
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 5
  store i32 %245, i32* %249, align 4
  %250 = load i32, i32* @AV_CODEC_ID_THEORA, align 4
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 4
  store i32 %250, i32* %254, align 8
  %255 = load i32, i32* @AVSTREAM_PARSE_HEADERS, align 4
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 1
  store i32 %255, i32* %257, align 8
  br label %295

258:                                              ; preds = %71
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %261 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %262 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %265 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  %268 = getelementptr inbounds i32, i32* %267, i64 7
  %269 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %270 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = sub nsw i32 %271, 7
  %273 = call i32 @ff_vorbis_stream_comment(%struct.TYPE_18__* %259, %struct.TYPE_16__* %260, i32* %268, i32 %272)
  br label %274

274:                                              ; preds = %71, %258
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %274
  %280 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %280, i32* %3, align 4
  br label %364

281:                                              ; preds = %274
  br label %295

282:                                              ; preds = %71
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %284 = load i32, i32* @AV_LOG_ERROR, align 4
  %285 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %286 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %285, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %289 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds i32, i32* %287, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %283, i32 %284, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %292)
  %294 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %294, i32* %3, align 4
  br label %364

295:                                              ; preds = %281, %234
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 3
  %300 = load i32, i32* %10, align 4
  %301 = sext i32 %300 to i64
  %302 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %303 = add nsw i64 %301, %302
  %304 = call i32 @av_reallocp(i32** %299, i64 %303)
  store i32 %304, i32* %11, align 4
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %295
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 0
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 0
  store i32 0, i32* %310, align 8
  %311 = load i32, i32* %11, align 4
  store i32 %311, i32* %3, align 4
  br label %364

312:                                              ; preds = %295
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 3
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %10, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %322 = call i32 @memset(i32* %320, i32 0, i64 %321)
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 3
  %327 = load i32*, i32** %326, align 8
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 0
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %327, i64 %333
  store i32* %334, i32** %12, align 8
  %335 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %336 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = ashr i32 %337, 8
  %339 = load i32*, i32** %12, align 8
  %340 = getelementptr inbounds i32, i32* %339, i32 1
  store i32* %340, i32** %12, align 8
  store i32 %338, i32* %339, align 4
  %341 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %342 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = and i32 %343, 255
  %345 = load i32*, i32** %12, align 8
  %346 = getelementptr inbounds i32, i32* %345, i32 1
  store i32* %346, i32** %12, align 8
  store i32 %344, i32* %345, align 4
  %347 = load i32*, i32** %12, align 8
  %348 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %349 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %348, i32 0, i32 1
  %350 = load i32*, i32** %349, align 8
  %351 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %352 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %351, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  %354 = getelementptr inbounds i32, i32* %350, i64 %353
  %355 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %356 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @memcpy(i32* %347, i32* %354, i32 %357)
  %359 = load i32, i32* %10, align 4
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_14__*, %struct.TYPE_14__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %362, i32 0, i32 0
  store i32 %359, i32* %363, align 8
  store i32 1, i32* %3, align 4
  br label %364

364:                                              ; preds = %312, %306, %282, %279, %102, %64, %56
  %365 = load i32, i32* %3, align 4
  ret i32 %365
}

declare dso_local %struct.TYPE_15__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i8* @get_bits_long(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, ...) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @ff_vorbis_stream_comment(%struct.TYPE_18__*, %struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @av_reallocp(i32**, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
