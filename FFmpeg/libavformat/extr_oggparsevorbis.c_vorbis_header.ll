; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsevorbis.c_vorbis_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsevorbis.c_vorbis_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__**, %struct.ogg* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32*, i64, i32, %struct.oggvorbis_private* }
%struct.oggvorbis_private = type { i32**, i32*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Channel change is not supported\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_VORBIS = common dso_local global i32 0, align 4
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @vorbis_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vorbis_header(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ogg*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.ogg_stream*, align 8
  %9 = alloca %struct.oggvorbis_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load %struct.ogg*, %struct.ogg** %21, align 8
  store %struct.ogg* %22, %struct.ogg** %6, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %25, i64 %27
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %7, align 8
  %30 = load %struct.ogg*, %struct.ogg** %6, align 8
  %31 = getelementptr inbounds %struct.ogg, %struct.ogg* %30, i32 0, i32 0
  %32 = load %struct.ogg_stream*, %struct.ogg_stream** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %32, i64 %34
  store %struct.ogg_stream* %35, %struct.ogg_stream** %8, align 8
  %36 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %37 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %40 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %45 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %44, i32 0, i32 3
  %46 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %45, align 8
  %47 = icmp ne %struct.oggvorbis_private* %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %2
  %49 = call i8* @av_mallocz(i32 24)
  %50 = bitcast i8* %49 to %struct.oggvorbis_private*
  %51 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %52 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %51, i32 0, i32 3
  store %struct.oggvorbis_private* %50, %struct.oggvorbis_private** %52, align 8
  %53 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %54 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %53, i32 0, i32 3
  %55 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %54, align 8
  %56 = icmp ne %struct.oggvorbis_private* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = call i32 @AVERROR(i32 %58)
  store i32 %59, i32* %3, align 4
  br label %429

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %2
  %62 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %63 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %62, i32 0, i32 3
  %64 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %63, align 8
  store %struct.oggvorbis_private* %64, %struct.oggvorbis_private** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %61
  %69 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %9, align 8
  %70 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi i32 [ 0, %73 ], [ %75, %74 ]
  store i32 %77, i32* %3, align 4
  br label %429

78:                                               ; preds = %61
  %79 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %80 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = icmp sgt i32 %84, 5
  br i1 %85, label %86, label %88

86:                                               ; preds = %83, %78
  %87 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %87, i32* %3, align 4
  br label %429

88:                                               ; preds = %83
  %89 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %9, align 8
  %90 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %89, i32 0, i32 0
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = ashr i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %91, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %99, i32* %3, align 4
  br label %429

100:                                              ; preds = %88
  %101 = load i32, i32* %10, align 4
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %9, align 8
  %105 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %104, i32 0, i32 0
  %106 = load i32**, i32*** %105, align 8
  %107 = getelementptr inbounds i32*, i32** %106, i64 0
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %120

110:                                              ; preds = %103, %100
  %111 = load i32, i32* %10, align 4
  %112 = icmp sgt i32 %111, 3
  br i1 %112, label %113, label %130

113:                                              ; preds = %110
  %114 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %9, align 8
  %115 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %114, i32 0, i32 0
  %116 = load i32**, i32*** %115, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 1
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %130, label %120

120:                                              ; preds = %113, %103
  %121 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %9, align 8
  %122 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  br label %128

128:                                              ; preds = %126, %125
  %129 = phi i32 [ 0, %125 ], [ %127, %126 ]
  store i32 %129, i32* %3, align 4
  br label %429

130:                                              ; preds = %113, %110
  %131 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %132 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %9, align 8
  %135 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = ashr i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32 %133, i32* %140, align 4
  %141 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %142 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i8* @av_mallocz(i32 %143)
  %145 = bitcast i8* %144 to i32*
  %146 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %9, align 8
  %147 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %146, i32 0, i32 0
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = ashr i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %148, i64 %151
  store i32* %145, i32** %152, align 8
  %153 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %9, align 8
  %154 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %153, i32 0, i32 0
  %155 = load i32**, i32*** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = ashr i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %155, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %130
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = call i32 @AVERROR(i32 %163)
  store i32 %164, i32* %3, align 4
  br label %429

165:                                              ; preds = %130
  %166 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %9, align 8
  %167 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %166, i32 0, i32 0
  %168 = load i32**, i32*** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = ashr i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %168, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %175 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %178 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  %181 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %182 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @memcpy(i32* %173, i32* %180, i32 %183)
  %185 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %186 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %189 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %298

194:                                              ; preds = %165
  %195 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %196 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %199 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = getelementptr inbounds i32, i32* %201, i64 7
  store i32* %202, i32** %11, align 8
  %203 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %204 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 30
  br i1 %206, label %207, label %209

207:                                              ; preds = %194
  %208 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %208, i32* %3, align 4
  br label %429

209:                                              ; preds = %194
  %210 = call i8* @bytestream_get_le32(i32** %11)
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %213, i32* %3, align 4
  br label %429

214:                                              ; preds = %209
  %215 = call i32 @bytestream_get_byte(i32** %11)
  store i32 %215, i32* %16, align 4
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %214
  %223 = load i32, i32* %16, align 4
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %223, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %222
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %232 = load i32, i32* @AV_LOG_ERROR, align 4
  %233 = call i32 @av_log(%struct.TYPE_12__* %231, i32 %232, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %234 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %234, i32* %3, align 4
  br label %429

235:                                              ; preds = %222, %214
  %236 = load i32, i32* %16, align 4
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  store i32 %236, i32* %240, align 8
  %241 = call i8* @bytestream_get_le32(i32** %11)
  %242 = ptrtoint i8* %241 to i32
  store i32 %242, i32* %15, align 4
  %243 = load i32*, i32** %11, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 4
  store i32* %244, i32** %11, align 8
  %245 = call i8* @bytestream_get_le32(i32** %11)
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 6
  store i8* %245, i8** %249, align 8
  %250 = load i32*, i32** %11, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 4
  store i32* %251, i32** %11, align 8
  %252 = call i32 @bytestream_get_byte(i32** %11)
  store i32 %252, i32* %12, align 4
  %253 = load i32, i32* %12, align 4
  %254 = and i32 %253, 15
  store i32 %254, i32* %13, align 4
  %255 = load i32, i32* %12, align 4
  %256 = lshr i32 %255, 4
  store i32 %256, i32* %14, align 4
  %257 = load i32, i32* %13, align 4
  %258 = load i32, i32* %14, align 4
  %259 = icmp ugt i32 %257, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %235
  %261 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %261, i32* %3, align 4
  br label %429

262:                                              ; preds = %235
  %263 = load i32, i32* %13, align 4
  %264 = icmp ult i32 %263, 6
  br i1 %264, label %268, label %265

265:                                              ; preds = %262
  %266 = load i32, i32* %14, align 4
  %267 = icmp ugt i32 %266, 13
  br i1 %267, label %268, label %270

268:                                              ; preds = %265, %262
  %269 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %269, i32* %3, align 4
  br label %429

270:                                              ; preds = %265
  %271 = call i32 @bytestream_get_byte(i32** %11)
  %272 = icmp ne i32 %271, 1
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %274, i32* %3, align 4
  br label %429

275:                                              ; preds = %270
  %276 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 5
  store i32 %276, i32* %280, align 4
  %281 = load i32, i32* @AV_CODEC_ID_VORBIS, align 4
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 4
  store i32 %281, i32* %285, align 8
  %286 = load i32, i32* %15, align 4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %297

288:                                              ; preds = %275
  %289 = load i32, i32* %15, align 4
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 1
  store i32 %289, i32* %293, align 4
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %295 = load i32, i32* %15, align 4
  %296 = call i32 @avpriv_set_pts_info(%struct.TYPE_11__* %294, i32 64, i32 1, i32 %295)
  br label %297

297:                                              ; preds = %288, %275
  br label %428

298:                                              ; preds = %165
  %299 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %300 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %303 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = getelementptr inbounds i32, i32* %301, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %306, 3
  br i1 %307, label %308, label %376

308:                                              ; preds = %298
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %310 = load i32, i32* %5, align 4
  %311 = call i64 @vorbis_update_metadata(%struct.TYPE_12__* %309, i32 %310)
  %312 = icmp sge i64 %311, 0
  br i1 %312, label %313, label %375

313:                                              ; preds = %308
  %314 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %9, align 8
  %315 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %314, i32 0, i32 1
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 1
  %318 = load i32, i32* %317, align 4
  %319 = icmp sgt i32 %318, 10
  br i1 %319, label %320, label %375

320:                                              ; preds = %313
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @ff_replaygain_export(%struct.TYPE_11__* %321, i32 %324)
  store i32 %325, i32* %18, align 4
  %326 = load i32, i32* %18, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %320
  %329 = load i32, i32* %18, align 4
  store i32 %329, i32* %3, align 4
  br label %429

330:                                              ; preds = %320
  %331 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %9, align 8
  %332 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %331, i32 0, i32 0
  %333 = load i32**, i32*** %332, align 8
  %334 = getelementptr inbounds i32*, i32** %333, i64 1
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 7
  %337 = call i32 @AV_RL32(i32* %336)
  %338 = add nsw i32 11, %337
  %339 = add nsw i32 %338, 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %17, align 4
  %341 = load i32, i32* %17, align 4
  %342 = icmp uge i32 %341, 16
  br i1 %342, label %343, label %374

343:                                              ; preds = %330
  %344 = load i32, i32* %17, align 4
  %345 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %346 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = icmp ult i32 %344, %347
  br i1 %348, label %349, label %374

349:                                              ; preds = %343
  %350 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %9, align 8
  %351 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %350, i32 0, i32 0
  %352 = load i32**, i32*** %351, align 8
  %353 = getelementptr inbounds i32*, i32** %352, i64 1
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %17, align 4
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = getelementptr inbounds i32, i32* %357, i64 -5
  %359 = call i32 @AV_WL32(i32* %358, i32 0)
  %360 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %9, align 8
  %361 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %360, i32 0, i32 0
  %362 = load i32**, i32*** %361, align 8
  %363 = getelementptr inbounds i32*, i32** %362, i64 1
  %364 = load i32*, i32** %363, align 8
  %365 = load i32, i32* %17, align 4
  %366 = sub i32 %365, 1
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %364, i64 %367
  store i32 1, i32* %368, align 4
  %369 = load i32, i32* %17, align 4
  %370 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %9, align 8
  %371 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 1
  store i32 %369, i32* %373, align 4
  br label %374

374:                                              ; preds = %349, %343, %330
  br label %375

375:                                              ; preds = %374, %313, %308
  br label %427

376:                                              ; preds = %298
  %377 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %378 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %9, align 8
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i32 0, i32 0
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 3
  %383 = call i32 @fixup_vorbis_headers(%struct.TYPE_12__* %377, %struct.oggvorbis_private* %378, i32* %382)
  store i32 %383, i32* %19, align 4
  %384 = load i32, i32* %19, align 4
  %385 = icmp slt i32 %384, 0
  br i1 %385, label %386, label %392

386:                                              ; preds = %376
  %387 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 0
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 2
  store i32 0, i32* %390, align 8
  %391 = load i32, i32* %19, align 4
  store i32 %391, i32* %3, align 4
  br label %429

392:                                              ; preds = %376
  %393 = load i32, i32* %19, align 4
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 0
  %396 = load %struct.TYPE_10__*, %struct.TYPE_10__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %396, i32 0, i32 2
  store i32 %393, i32* %397, align 8
  %398 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %398, i32 0, i32 0
  %400 = load %struct.TYPE_10__*, %struct.TYPE_10__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 0
  %405 = load %struct.TYPE_10__*, %struct.TYPE_10__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 8
  %408 = call i64 @av_vorbis_parse_init(i32 %402, i32 %407)
  %409 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %9, align 8
  %410 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %409, i32 0, i32 2
  store i64 %408, i64* %410, align 8
  %411 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %9, align 8
  %412 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %411, i32 0, i32 2
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %426, label %415

415:                                              ; preds = %392
  %416 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i32 0, i32 0
  %418 = load %struct.TYPE_10__*, %struct.TYPE_10__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %418, i32 0, i32 3
  %420 = call i32 @av_freep(i32* %419)
  %421 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %421, i32 0, i32 0
  %423 = load %struct.TYPE_10__*, %struct.TYPE_10__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 2
  store i32 0, i32* %424, align 8
  %425 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %425, i32* %3, align 4
  br label %429

426:                                              ; preds = %392
  br label %427

427:                                              ; preds = %426, %375
  br label %428

428:                                              ; preds = %427, %297
  store i32 1, i32* %3, align 4
  br label %429

429:                                              ; preds = %428, %415, %386, %328, %273, %268, %260, %230, %212, %207, %162, %128, %98, %86, %76, %57
  %430 = load i32, i32* %3, align 4
  ret i32 %430
}

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @bytestream_get_le32(i32**) #1

declare dso_local i32 @bytestream_get_byte(i32**) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i64 @vorbis_update_metadata(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ff_replaygain_export(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

declare dso_local i32 @fixup_vorbis_headers(%struct.TYPE_12__*, %struct.oggvorbis_private*, i32*) #1

declare dso_local i64 @av_vorbis_parse_init(i32, i32) #1

declare dso_local i32 @av_freep(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
