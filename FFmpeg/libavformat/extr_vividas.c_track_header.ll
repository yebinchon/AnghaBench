; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_track_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_track_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i8*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32*, i8*, i8*, i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"number of video tracks %d is not 1\0A\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_VP6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"number of audio tracks %d is not 1\0A\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_VORBIS = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @track_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @track_header(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [256 x i32], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32* @avio_alloc_context(i32* %29, i32 %30, i32 0, i32* null, i32* null, i32* null, i32* null)
  store i32* %31, i32** %16, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %5, align 4
  br label %409

37:                                               ; preds = %4
  %38 = load i32*, i32** %16, align 8
  %39 = call i32 @ffio_read_varlen(i32* %38)
  %40 = load i32*, i32** %16, align 8
  %41 = call i32 @avio_r8(i32* %40)
  %42 = load i32*, i32** %16, align 8
  %43 = call i32 @ffio_read_varlen(i32* %42)
  store i32 %43, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %64, %37
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load i32*, i32** %16, align 8
  %50 = call i32 @avio_r8(i32* %49)
  store i32 %50, i32* %17, align 4
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %60, %48
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32*, i32** %16, align 8
  %57 = call i32 @avio_r8(i32* %56)
  %58 = load i32*, i32** %16, align 8
  %59 = call i32 @avio_r8(i32* %58)
  br label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %51

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %44

67:                                               ; preds = %44
  %68 = load i32*, i32** %16, align 8
  %69 = call i32 @avio_r8(i32* %68)
  %70 = load i32*, i32** %16, align 8
  %71 = call i32 @avio_tell(i32* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32*, i32** %16, align 8
  %73 = call i32 @ffio_read_varlen(i32* %72)
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %12, align 4
  %76 = load i32*, i32** %16, align 8
  %77 = call i32 @avio_r8(i32* %76)
  %78 = load i32*, i32** %16, align 8
  %79 = call i32 @avio_r8(i32* %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32*, i32** %16, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @SEEK_SET, align 4
  %83 = call i32 @avio_seek(i32* %80, i32 %81, i32 %82)
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %91

86:                                               ; preds = %67
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* @AV_LOG_WARNING, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @av_log(i32* %87, i32 %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %86, %67
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %156, %91
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %159

96:                                               ; preds = %92
  %97 = load i32*, i32** %7, align 8
  %98 = call %struct.TYPE_6__* @avformat_new_stream(i32* %97, i32* null)
  store %struct.TYPE_6__* %98, %struct.TYPE_6__** %18, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 5
  store i32 %102, i32* %106, align 4
  %107 = load i32, i32* @AV_CODEC_ID_VP6, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 4
  store i32 %107, i32* %111, align 8
  %112 = load i32*, i32** %16, align 8
  %113 = call i32 @avio_tell(i32* %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32*, i32** %16, align 8
  %115 = call i32 @ffio_read_varlen(i32* %114)
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %12, align 4
  %118 = load i32*, i32** %16, align 8
  %119 = call i32 @avio_r8(i32* %118)
  %120 = load i32*, i32** %16, align 8
  %121 = call i32 @avio_r8(i32* %120)
  %122 = load i32*, i32** %16, align 8
  %123 = call i8* @avio_rl32(i32* %122)
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i8* %123, i8** %126, align 8
  %127 = load i32*, i32** %16, align 8
  %128 = call i8* @avio_rl32(i32* %127)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i8* %128, i8** %131, align 8
  %132 = load i32*, i32** %16, align 8
  %133 = call i8* @avio_rl32(i32* %132)
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  %136 = load i32*, i32** %16, align 8
  %137 = call i8* @avio_rl16(i32* %136)
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 7
  store i8* %137, i8** %141, align 8
  %142 = load i32*, i32** %16, align 8
  %143 = call i8* @avio_rl16(i32* %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 6
  store i8* %143, i8** %147, align 8
  %148 = load i32*, i32** %16, align 8
  %149 = call i32 @avio_r8(i32* %148)
  %150 = load i32*, i32** %16, align 8
  %151 = call i8* @avio_rl32(i32* %150)
  %152 = load i32*, i32** %16, align 8
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @SEEK_SET, align 4
  %155 = call i32 @avio_seek(i32* %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %96
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %92

159:                                              ; preds = %92
  %160 = load i32*, i32** %16, align 8
  %161 = call i32 @avio_tell(i32* %160)
  store i32 %161, i32* %12, align 4
  %162 = load i32*, i32** %16, align 8
  %163 = call i32 @ffio_read_varlen(i32* %162)
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %12, align 4
  %166 = load i32*, i32** %16, align 8
  %167 = call i32 @avio_r8(i32* %166)
  %168 = load i32*, i32** %16, align 8
  %169 = call i32 @avio_r8(i32* %168)
  store i32 %169, i32* %15, align 4
  %170 = load i32*, i32** %16, align 8
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* @SEEK_SET, align 4
  %173 = call i32 @avio_seek(i32* %170, i32 %171, i32 %172)
  %174 = load i32, i32* %15, align 4
  %175 = icmp ne i32 %174, 1
  br i1 %175, label %176, label %181

176:                                              ; preds = %159
  %177 = load i32*, i32** %7, align 8
  %178 = load i32, i32* @AV_LOG_WARNING, align 4
  %179 = load i32, i32* %15, align 4
  %180 = call i32 @av_log(i32* %177, i32 %178, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %176, %159
  store i32 0, i32* %10, align 4
  br label %182

182:                                              ; preds = %403, %181
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %15, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %406

186:                                              ; preds = %182
  %187 = load i32*, i32** %7, align 8
  %188 = call %struct.TYPE_6__* @avformat_new_stream(i32* %187, i32* null)
  store %struct.TYPE_6__* %188, %struct.TYPE_6__** %20, align 8
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %189, %190
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 5
  store i32 %194, i32* %198, align 4
  %199 = load i32, i32* @AV_CODEC_ID_VORBIS, align 4
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 4
  store i32 %199, i32* %203, align 8
  %204 = load i32*, i32** %16, align 8
  %205 = call i32 @avio_tell(i32* %204)
  store i32 %205, i32* %12, align 4
  %206 = load i32*, i32** %16, align 8
  %207 = call i32 @ffio_read_varlen(i32* %206)
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, %207
  store i32 %209, i32* %12, align 4
  %210 = load i32*, i32** %16, align 8
  %211 = call i32 @avio_r8(i32* %210)
  %212 = load i32*, i32** %16, align 8
  %213 = call i32 @avio_r8(i32* %212)
  %214 = load i32*, i32** %16, align 8
  %215 = call i8* @avio_rl16(i32* %214)
  %216 = load i32*, i32** %16, align 8
  %217 = call i8* @avio_rl16(i32* %216)
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 3
  store i8* %217, i8** %221, align 8
  %222 = load i32*, i32** %16, align 8
  %223 = call i8* @avio_rl32(i32* %222)
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 2
  store i8* %223, i8** %227, align 8
  %228 = load i32*, i32** %16, align 8
  %229 = load i32, i32* @SEEK_CUR, align 4
  %230 = call i32 @avio_seek(i32* %228, i32 10, i32 %229)
  %231 = load i32*, i32** %16, align 8
  %232 = call i32 @avio_r8(i32* %231)
  store i32 %232, i32* %19, align 4
  %233 = load i32*, i32** %16, align 8
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* @SEEK_CUR, align 4
  %236 = call i32 @avio_seek(i32* %233, i32 %234, i32 %235)
  %237 = load i32*, i32** %16, align 8
  %238 = call i32 @avio_r8(i32* %237)
  %239 = load i32*, i32** %16, align 8
  %240 = call i32 @avio_tell(i32* %239)
  %241 = load i32, i32* %12, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %402

243:                                              ; preds = %186
  store i32 0, i32* %22, align 4
  store i32 1, i32* %24, align 4
  %244 = load i32*, i32** %16, align 8
  %245 = call i32 @ffio_read_varlen(i32* %244)
  %246 = load i32*, i32** %16, align 8
  %247 = call i32 @avio_r8(i32* %246)
  %248 = load i32*, i32** %16, align 8
  %249 = call i32 @ffio_read_varlen(i32* %248)
  %250 = load i32*, i32** %16, align 8
  %251 = call i32 @avio_r8(i32* %250)
  store i32 %251, i32* %21, align 4
  store i32 0, i32* %11, align 4
  br label %252

252:                                              ; preds = %277, %243
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* %21, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %280

256:                                              ; preds = %252
  %257 = load i32*, i32** %16, align 8
  %258 = call i32 @ffio_read_varlen(i32* %257)
  store i32 %258, i32* %26, align 4
  %259 = load i32, i32* %26, align 4
  %260 = load i32, i32* @INT_MAX, align 4
  %261 = sdiv i32 %260, 2
  %262 = load i32, i32* %22, align 4
  %263 = sub nsw i32 %261, %262
  %264 = icmp sgt i32 %259, %263
  br i1 %264, label %265, label %269

265:                                              ; preds = %256
  %266 = load i32*, i32** %16, align 8
  %267 = call i32 @av_free(i32* %266)
  %268 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %268, i32* %5, align 4
  br label %409

269:                                              ; preds = %256
  %270 = load i32, i32* %26, align 4
  %271 = load i32, i32* %11, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [256 x i32], [256 x i32]* %23, i64 0, i64 %272
  store i32 %270, i32* %273, align 4
  %274 = load i32, i32* %26, align 4
  %275 = load i32, i32* %22, align 4
  %276 = add nsw i32 %275, %274
  store i32 %276, i32* %22, align 4
  br label %277

277:                                              ; preds = %269
  %278 = load i32, i32* %11, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %11, align 4
  br label %252

280:                                              ; preds = %252
  %281 = load i32, i32* %22, align 4
  %282 = add nsw i32 64, %281
  %283 = load i32, i32* %22, align 4
  %284 = sdiv i32 %283, 255
  %285 = add nsw i32 %282, %284
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 0
  store i32 %285, i32* %289, align 8
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %291, align 8
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 1
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = call i64 @ff_alloc_extradata(%struct.TYPE_7__* %292, i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %280
  %301 = load i32*, i32** %16, align 8
  %302 = call i32 @av_free(i32* %301)
  %303 = load i32, i32* @ENOMEM, align 4
  %304 = call i32 @AVERROR(i32 %303)
  store i32 %304, i32* %5, align 4
  br label %409

305:                                              ; preds = %280
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 1
  %310 = load i32*, i32** %309, align 8
  store i32* %310, i32** %25, align 8
  %311 = load i32*, i32** %25, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 0
  store i32 2, i32* %312, align 4
  store i32 0, i32* %11, align 4
  br label %313

313:                                              ; preds = %342, %305
  %314 = load i32, i32* %11, align 4
  %315 = load i32, i32* %21, align 4
  %316 = sub nsw i32 %315, 1
  %317 = icmp slt i32 %314, %316
  br i1 %317, label %318, label %345

318:                                              ; preds = %313
  %319 = load i32*, i32** %25, align 8
  %320 = load i32, i32* %24, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %11, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [256 x i32], [256 x i32]* %23, i64 0, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @av_xiphlacing(i32* %322, i32 %326)
  store i32 %327, i32* %27, align 4
  %328 = load i32, i32* %27, align 4
  %329 = load i32, i32* %11, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [256 x i32], [256 x i32]* %23, i64 0, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = icmp ugt i32 %328, %332
  br i1 %333, label %334, label %338

334:                                              ; preds = %318
  %335 = load i32*, i32** %16, align 8
  %336 = call i32 @av_free(i32* %335)
  %337 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %337, i32* %5, align 4
  br label %409

338:                                              ; preds = %318
  %339 = load i32, i32* %27, align 4
  %340 = load i32, i32* %24, align 4
  %341 = add i32 %340, %339
  store i32 %341, i32* %24, align 4
  br label %342

342:                                              ; preds = %338
  %343 = load i32, i32* %11, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %11, align 4
  br label %313

345:                                              ; preds = %313
  store i32 0, i32* %11, align 4
  br label %346

346:                                              ; preds = %384, %345
  %347 = load i32, i32* %11, align 4
  %348 = load i32, i32* %21, align 4
  %349 = icmp slt i32 %347, %348
  br i1 %349, label %350, label %387

350:                                              ; preds = %346
  %351 = load i32*, i32** %16, align 8
  %352 = load i32*, i32** %25, align 8
  %353 = load i32, i32* %24, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %11, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [256 x i32], [256 x i32]* %23, i64 0, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @avio_read(i32* %351, i32* %355, i32 %359)
  store i32 %360, i32* %28, align 4
  %361 = load i32, i32* %28, align 4
  %362 = load i32, i32* %11, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [256 x i32], [256 x i32]* %23, i64 0, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = icmp slt i32 %361, %365
  br i1 %366, label %367, label %377

367:                                              ; preds = %350
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 1
  %370 = load %struct.TYPE_7__*, %struct.TYPE_7__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 0
  store i32 0, i32* %371, align 8
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 1
  %374 = load %struct.TYPE_7__*, %struct.TYPE_7__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 1
  %376 = call i32 @av_freep(i32** %375)
  br label %387

377:                                              ; preds = %350
  %378 = load i32, i32* %11, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [256 x i32], [256 x i32]* %23, i64 0, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* %24, align 4
  %383 = add nsw i32 %382, %381
  store i32 %383, i32* %24, align 4
  br label %384

384:                                              ; preds = %377
  %385 = load i32, i32* %11, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %11, align 4
  br label %346

387:                                              ; preds = %367, %346
  %388 = load i32, i32* %24, align 4
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 1
  %391 = load %struct.TYPE_7__*, %struct.TYPE_7__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = icmp slt i32 %388, %393
  br i1 %394, label %395, label %401

395:                                              ; preds = %387
  %396 = load i32, i32* %24, align 4
  %397 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 1
  %399 = load %struct.TYPE_7__*, %struct.TYPE_7__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 0
  store i32 %396, i32* %400, align 8
  br label %401

401:                                              ; preds = %395, %387
  br label %402

402:                                              ; preds = %401, %186
  br label %403

403:                                              ; preds = %402
  %404 = load i32, i32* %10, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %10, align 4
  br label %182

406:                                              ; preds = %182
  %407 = load i32*, i32** %16, align 8
  %408 = call i32 @av_free(i32* %407)
  store i32 0, i32* %5, align 4
  br label %409

409:                                              ; preds = %406, %334, %300, %265, %34
  %410 = load i32, i32* %5, align 4
  ret i32 %410
}

declare dso_local i32* @avio_alloc_context(i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ffio_read_varlen(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @avformat_new_stream(i32*, i32*) #1

declare dso_local i8* @avio_rl32(i32*) #1

declare dso_local i8* @avio_rl16(i32*) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i64 @ff_alloc_extradata(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @av_xiphlacing(i32*, i32) #1

declare dso_local i32 @avio_read(i32*, i32*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
