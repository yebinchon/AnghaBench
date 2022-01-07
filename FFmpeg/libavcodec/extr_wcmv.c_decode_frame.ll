; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wcmv.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wcmv.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_15__, i32* }
%struct.TYPE_16__ = type { i32*, i32, i32, i32** }
%struct.TYPE_15__ = type { i32, i32, i32*, i64 }
%struct.TYPE_13__ = type { i32, i32* }

@Z_OK = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Inflate reset error: %d\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@FF_REGET_BUFFER_FLAG_READONLY = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Inflate failed with return code: %d.\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*, %struct.TYPE_13__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_14__* %0, i8* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca [4 x i32], align 16
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %10, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** %11, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %18, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = call i32 @inflateReset(%struct.TYPE_15__* %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @Z_OK, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = load i32, i32* @AV_LOG_ERROR, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @av_log(%struct.TYPE_14__* %53, i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %57, i32* %5, align 4
  br label %527

58:                                               ; preds = %4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @bytestream2_init(i32* %19, i32* %61, i32 %64)
  %66 = call i32 @bytestream2_get_le16(i32* %19)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* @FF_REGET_BUFFER_FLAG_READONLY, align 4
  %71 = load i32, i32* %17, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %17, align 4
  br label %73

73:                                               ; preds = %69, %58
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = load i32, i32* %17, align 4
  %79 = call i32 @ff_reget_buffer(%struct.TYPE_14__* %74, %struct.TYPE_16__* %77, i32 %78)
  store i32 %79, i32* %15, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %15, align 4
  store i32 %82, i32* %5, align 4
  br label %527

83:                                               ; preds = %73
  %84 = load i32, i32* %13, align 4
  %85 = icmp sgt i32 %84, 5
  br i1 %85, label %86, label %240

86:                                               ; preds = %83
  store i32 0, i32* %22, align 4
  %87 = load i32, i32* %13, align 4
  %88 = mul nsw i32 %87, 8
  %89 = icmp sge i32 %88, 65535
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 @bytestream2_get_le24(i32* %19)
  store i32 %91, i32* %23, align 4
  br label %101

92:                                               ; preds = %86
  %93 = load i32, i32* %13, align 4
  %94 = mul nsw i32 %93, 8
  %95 = icmp sge i32 %94, 255
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 @bytestream2_get_le16(i32* %19)
  store i32 %97, i32* %23, align 4
  br label %100

98:                                               ; preds = %92
  %99 = call i32 @bytestream2_get_byte(i32* %19)
  store i32 %99, i32* %23, align 4
  br label %100

100:                                              ; preds = %98, %96
  br label %101

101:                                              ; preds = %100, %90
  %102 = call i32 @bytestream2_tell(i32* %19)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %23, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sub nsw i32 %106, %107
  %109 = icmp sgt i32 %103, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %111, i32* %5, align 4
  br label %527

112:                                              ; preds = %101
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = ptrtoint i32* %118 to i64
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 3
  store i64 %119, i64* %122, align 8
  %123 = load i32, i32* %23, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 2
  store i32* %129, i32** %132, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  store i32 8, i32* %135, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = load i32, i32* @Z_FINISH, align 4
  %139 = call i32 @inflate(%struct.TYPE_15__* %137, i32 %138)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @Z_STREAM_END, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %112
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %145 = load i32, i32* @AV_LOG_ERROR, align 4
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @av_log(%struct.TYPE_14__* %144, i32 %145, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %148, i32* %5, align 4
  br label %527

149:                                              ; preds = %112
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = call i32 @inflateReset(%struct.TYPE_15__* %151)
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* @Z_OK, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %149
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %158 = load i32, i32* @AV_LOG_ERROR, align 4
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @av_log(%struct.TYPE_14__* %157, i32 %158, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %161, i32* %5, align 4
  br label %527

162:                                              ; preds = %149
  %163 = load i32, i32* %23, align 4
  %164 = call i32 @bytestream2_skip(i32* %19, i32 %163)
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %13, align 4
  %169 = mul nsw i32 %168, 8
  %170 = call i32 @bytestream2_init(i32* %21, i32* %167, i32 %169)
  store i32 0, i32* %24, align 4
  br label %171

171:                                              ; preds = %198, %162
  %172 = load i32, i32* %24, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %201

175:                                              ; preds = %171
  %176 = call i32 @bytestream2_skip(i32* %21, i32 4)
  %177 = call i32 @bytestream2_get_le16(i32* %21)
  store i32 %177, i32* %25, align 4
  %178 = call i32 @bytestream2_get_le16(i32* %21)
  store i32 %178, i32* %26, align 4
  %179 = load i32, i32* %22, align 4
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* %25, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load i32, i32* %26, align 4
  %184 = mul nsw i32 %182, %183
  %185 = add nsw i32 %179, %184
  %186 = load i32, i32* @INT_MAX, align 4
  %187 = icmp sgt i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %175
  %189 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %189, i32* %5, align 4
  br label %527

190:                                              ; preds = %175
  %191 = load i32, i32* %18, align 4
  %192 = load i32, i32* %25, align 4
  %193 = mul nsw i32 %191, %192
  %194 = load i32, i32* %26, align 4
  %195 = mul nsw i32 %193, %194
  %196 = load i32, i32* %22, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %22, align 4
  br label %198

198:                                              ; preds = %190
  %199 = load i32, i32* %24, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %24, align 4
  br label %171

201:                                              ; preds = %171
  %202 = load i32, i32* %22, align 4
  %203 = icmp sge i32 %202, 65535
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = call i32 @bytestream2_skip(i32* %19, i32 3)
  br label %214

206:                                              ; preds = %201
  %207 = load i32, i32* %22, align 4
  %208 = icmp sge i32 %207, 255
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = call i32 @bytestream2_skip(i32* %19, i32 2)
  br label %213

211:                                              ; preds = %206
  %212 = call i32 @bytestream2_skip(i32* %19, i32 1)
  br label %213

213:                                              ; preds = %211, %209
  br label %214

214:                                              ; preds = %213, %204
  %215 = call i32 @bytestream2_tell(i32* %19)
  store i32 %215, i32* %12, align 4
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = ptrtoint i32* %221 to i64
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 3
  store i64 %222, i64* %225, align 8
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sub nsw i32 %228, %229
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 8
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 3
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %13, align 4
  %238 = mul nsw i32 %237, 8
  %239 = call i32 @bytestream2_init(i32* %19, i32* %236, i32 %238)
  br label %312

240:                                              ; preds = %83
  %241 = load i32, i32* %13, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %311

243:                                              ; preds = %240
  store i32 0, i32* %27, align 4
  %244 = load i32, i32* @SEEK_SET, align 4
  %245 = call i32 @bytestream2_seek(i32* %19, i32 2, i32 %244)
  store i32 0, i32* %28, align 4
  br label %246

246:                                              ; preds = %273, %243
  %247 = load i32, i32* %28, align 4
  %248 = load i32, i32* %13, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %276

250:                                              ; preds = %246
  %251 = call i32 @bytestream2_skip(i32* %19, i32 4)
  %252 = call i32 @bytestream2_get_le16(i32* %19)
  store i32 %252, i32* %29, align 4
  %253 = call i32 @bytestream2_get_le16(i32* %19)
  store i32 %253, i32* %30, align 4
  %254 = load i32, i32* %27, align 4
  %255 = load i32, i32* %18, align 4
  %256 = load i32, i32* %29, align 4
  %257 = mul nsw i32 %255, %256
  %258 = load i32, i32* %30, align 4
  %259 = mul nsw i32 %257, %258
  %260 = add nsw i32 %254, %259
  %261 = load i32, i32* @INT_MAX, align 4
  %262 = icmp sgt i32 %260, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %250
  %264 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %264, i32* %5, align 4
  br label %527

265:                                              ; preds = %250
  %266 = load i32, i32* %18, align 4
  %267 = load i32, i32* %29, align 4
  %268 = mul nsw i32 %266, %267
  %269 = load i32, i32* %30, align 4
  %270 = mul nsw i32 %268, %269
  %271 = load i32, i32* %27, align 4
  %272 = add nsw i32 %271, %270
  store i32 %272, i32* %27, align 4
  br label %273

273:                                              ; preds = %265
  %274 = load i32, i32* %28, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %28, align 4
  br label %246

276:                                              ; preds = %246
  %277 = load i32, i32* %27, align 4
  %278 = icmp sge i32 %277, 65535
  br i1 %278, label %279, label %281

279:                                              ; preds = %276
  %280 = call i32 @bytestream2_skip(i32* %19, i32 3)
  br label %289

281:                                              ; preds = %276
  %282 = load i32, i32* %27, align 4
  %283 = icmp sge i32 %282, 255
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = call i32 @bytestream2_skip(i32* %19, i32 2)
  br label %288

286:                                              ; preds = %281
  %287 = call i32 @bytestream2_skip(i32* %19, i32 1)
  br label %288

288:                                              ; preds = %286, %284
  br label %289

289:                                              ; preds = %288, %279
  %290 = call i32 @bytestream2_tell(i32* %19)
  store i32 %290, i32* %12, align 4
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 1
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %12, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = ptrtoint i32* %296 to i64
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 3
  store i64 %297, i64* %300, align 8
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* %12, align 4
  %305 = sub nsw i32 %303, %304
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 0
  store i32 %305, i32* %308, align 8
  %309 = load i32, i32* @SEEK_SET, align 4
  %310 = call i32 @bytestream2_seek(i32* %19, i32 2, i32 %309)
  br label %311

311:                                              ; preds = %289, %240
  br label %312

312:                                              ; preds = %311, %214
  %313 = call i64 @bytestream2_get_bytes_left(i32* %19)
  %314 = load i32, i32* %13, align 4
  %315 = sext i32 %314 to i64
  %316 = mul nsw i64 8, %315
  %317 = icmp slt i64 %313, %316
  br i1 %317, label %318, label %320

318:                                              ; preds = %312
  %319 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %319, i32* %5, align 4
  br label %527

320:                                              ; preds = %312
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %353, label %325

325:                                              ; preds = %320
  %326 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i64 0, i64 0
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 0
  %333 = load i32, i32* %332, align 4
  store i32 %333, i32* %326, align 4
  %334 = getelementptr inbounds i32, i32* %326, i64 1
  store i32 0, i32* %334, align 4
  %335 = getelementptr inbounds i32, i32* %334, i64 1
  store i32 0, i32* %335, align 4
  %336 = getelementptr inbounds i32, i32* %335, i64 1
  store i32 0, i32* %336, align 4
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 3
  %341 = load i32**, i32*** %340, align 8
  %342 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i64 0, i64 0
  %343 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @av_image_fill_black(i32** %341, i32* %342, i32 %345, i32 0, i32 %348, i32 %351)
  br label %353

353:                                              ; preds = %325, %320
  store i32 0, i32* %32, align 4
  br label %354

354:                                              ; preds = %493, %353
  %355 = load i32, i32* %32, align 4
  %356 = load i32, i32* %13, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %358, label %496

358:                                              ; preds = %354
  %359 = call i32 @bytestream2_get_le16(i32* %19)
  store i32 %359, i32* %33, align 4
  %360 = call i32 @bytestream2_get_le16(i32* %19)
  store i32 %360, i32* %34, align 4
  %361 = call i32 @bytestream2_get_le16(i32* %19)
  store i32 %361, i32* %35, align 4
  %362 = call i32 @bytestream2_get_le16(i32* %19)
  store i32 %362, i32* %36, align 4
  %363 = load i32, i32* %13, align 4
  %364 = icmp eq i32 %363, 1
  br i1 %364, label %365, label %384

365:                                              ; preds = %358
  %366 = load i32, i32* %33, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %384

368:                                              ; preds = %365
  %369 = load i32, i32* %34, align 4
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %384

371:                                              ; preds = %368
  %372 = load i32, i32* %35, align 4
  %373 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %374 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = icmp eq i32 %372, %375
  br i1 %376, label %377, label %384

377:                                              ; preds = %371
  %378 = load i32, i32* %36, align 4
  %379 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = icmp eq i32 %378, %381
  br i1 %382, label %383, label %384

383:                                              ; preds = %377
  store i32 1, i32* %16, align 4
  br label %384

384:                                              ; preds = %383, %377, %371, %368, %365, %358
  %385 = load i32, i32* %33, align 4
  %386 = load i32, i32* %35, align 4
  %387 = add nsw i32 %385, %386
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = icmp sgt i32 %387, %390
  br i1 %391, label %400, label %392

392:                                              ; preds = %384
  %393 = load i32, i32* %34, align 4
  %394 = load i32, i32* %36, align 4
  %395 = add nsw i32 %393, %394
  %396 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = icmp sgt i32 %395, %398
  br i1 %399, label %400, label %402

400:                                              ; preds = %392, %384
  %401 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %401, i32* %5, align 4
  br label %527

402:                                              ; preds = %392
  %403 = load i32, i32* %35, align 4
  %404 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = icmp sgt i32 %403, %406
  br i1 %407, label %414, label %408

408:                                              ; preds = %402
  %409 = load i32, i32* %36, align 4
  %410 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = icmp sgt i32 %409, %412
  br i1 %413, label %414, label %416

414:                                              ; preds = %408, %402
  %415 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %415, i32* %5, align 4
  br label %527

416:                                              ; preds = %408
  %417 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %418 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %417, i32 0, i32 1
  %419 = load %struct.TYPE_16__*, %struct.TYPE_16__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %419, i32 0, i32 3
  %421 = load i32**, i32*** %420, align 8
  %422 = getelementptr inbounds i32*, i32** %421, i64 0
  %423 = load i32*, i32** %422, align 8
  %424 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %425 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* %34, align 4
  %428 = sub nsw i32 %426, %427
  %429 = sub nsw i32 %428, 1
  %430 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %430, i32 0, i32 1
  %432 = load %struct.TYPE_16__*, %struct.TYPE_16__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %432, i32 0, i32 0
  %434 = load i32*, i32** %433, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 0
  %436 = load i32, i32* %435, align 4
  %437 = mul nsw i32 %429, %436
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %423, i64 %438
  %440 = load i32, i32* %33, align 4
  %441 = load i32, i32* %18, align 4
  %442 = mul nsw i32 %440, %441
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %439, i64 %443
  store i32* %444, i32** %20, align 8
  store i32 0, i32* %37, align 4
  br label %445

445:                                              ; preds = %489, %416
  %446 = load i32, i32* %37, align 4
  %447 = load i32, i32* %36, align 4
  %448 = icmp slt i32 %446, %447
  br i1 %448, label %449, label %492

449:                                              ; preds = %445
  %450 = load i32*, i32** %20, align 8
  %451 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %452 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %452, i32 0, i32 2
  store i32* %450, i32** %453, align 8
  %454 = load i32, i32* %35, align 4
  %455 = load i32, i32* %18, align 4
  %456 = mul nsw i32 %454, %455
  %457 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %458 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %457, i32 0, i32 2
  %459 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %458, i32 0, i32 1
  store i32 %456, i32* %459, align 4
  %460 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %461 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %460, i32 0, i32 2
  %462 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %463 = call i32 @inflate(%struct.TYPE_15__* %461, i32 %462)
  store i32 %463, i32* %14, align 4
  %464 = load i32, i32* %14, align 4
  %465 = load i32, i32* @Z_OK, align 4
  %466 = icmp ne i32 %464, %465
  br i1 %466, label %467, label %477

467:                                              ; preds = %449
  %468 = load i32, i32* %14, align 4
  %469 = load i32, i32* @Z_STREAM_END, align 4
  %470 = icmp ne i32 %468, %469
  br i1 %470, label %471, label %477

471:                                              ; preds = %467
  %472 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %473 = load i32, i32* @AV_LOG_ERROR, align 4
  %474 = load i32, i32* %14, align 4
  %475 = call i32 @av_log(%struct.TYPE_14__* %472, i32 %473, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %474)
  %476 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %476, i32* %5, align 4
  br label %527

477:                                              ; preds = %467, %449
  %478 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %479 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %478, i32 0, i32 1
  %480 = load %struct.TYPE_16__*, %struct.TYPE_16__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %480, i32 0, i32 0
  %482 = load i32*, i32** %481, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 0
  %484 = load i32, i32* %483, align 4
  %485 = load i32*, i32** %20, align 8
  %486 = sext i32 %484 to i64
  %487 = sub i64 0, %486
  %488 = getelementptr inbounds i32, i32* %485, i64 %487
  store i32* %488, i32** %20, align 8
  br label %489

489:                                              ; preds = %477
  %490 = load i32, i32* %37, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %37, align 4
  br label %445

492:                                              ; preds = %445
  br label %493

493:                                              ; preds = %492
  %494 = load i32, i32* %32, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %32, align 4
  br label %354

496:                                              ; preds = %354
  %497 = load i32, i32* %16, align 4
  %498 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %499 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %498, i32 0, i32 1
  %500 = load %struct.TYPE_16__*, %struct.TYPE_16__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %500, i32 0, i32 1
  store i32 %497, i32* %501, align 8
  %502 = load i32, i32* %16, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %506

504:                                              ; preds = %496
  %505 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  br label %508

506:                                              ; preds = %496
  %507 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  br label %508

508:                                              ; preds = %506, %504
  %509 = phi i32 [ %505, %504 ], [ %507, %506 ]
  %510 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %511 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %510, i32 0, i32 1
  %512 = load %struct.TYPE_16__*, %struct.TYPE_16__** %511, align 8
  %513 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %512, i32 0, i32 2
  store i32 %509, i32* %513, align 4
  %514 = load i32*, i32** %11, align 8
  %515 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %516 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %515, i32 0, i32 1
  %517 = load %struct.TYPE_16__*, %struct.TYPE_16__** %516, align 8
  %518 = call i32 @av_frame_ref(i32* %514, %struct.TYPE_16__* %517)
  store i32 %518, i32* %15, align 4
  %519 = icmp slt i32 %518, 0
  br i1 %519, label %520, label %522

520:                                              ; preds = %508
  %521 = load i32, i32* %15, align 4
  store i32 %521, i32* %5, align 4
  br label %527

522:                                              ; preds = %508
  %523 = load i32*, i32** %8, align 8
  store i32 1, i32* %523, align 4
  %524 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %525 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  store i32 %526, i32* %5, align 4
  br label %527

527:                                              ; preds = %522, %520, %471, %414, %400, %318, %263, %188, %156, %143, %110, %81, %52
  %528 = load i32, i32* %5, align 4
  ret i32 %528
}

declare dso_local i32 @inflateReset(%struct.TYPE_15__*) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_14__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @bytestream2_get_le24(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @inflate(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #1

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_image_fill_black(i32**, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @av_frame_ref(i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
