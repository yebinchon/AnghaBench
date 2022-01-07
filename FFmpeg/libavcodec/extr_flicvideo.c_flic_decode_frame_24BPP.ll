; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flicvideo.c_flic_decode_frame_24BPP.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flicvideo.c_flic_decode_frame_24BPP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__*, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i8**, i32* }
%struct.TYPE_10__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Invalid chunk_size = %u > frame_size = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Unexpected Palette chunk %d in non-palettized FLC\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Unexpected FLI_LC chunk in non-palettized FLC\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"pixel_countdown < 0 (%d) (linea%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"pixel_countdown < 0 (%d) at line %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"pixel_countdown < 0 (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"In chunk FLI_COPY : source data (%d bytes) bigger than image, skipping chunk\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Unrecognized chunk type: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Chunk overread\0A\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"Processed FLI chunk where chunk size = %d and final chunk ptr = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32*, i32*, i32)* @flic_decode_frame_24BPP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flic_decode_frame_24BPP(%struct.TYPE_12__* %0, i8* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %12, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @bytestream2_init(i32* %13, i32* %37, i32 %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = call i32 @ff_reget_buffer(%struct.TYPE_12__* %40, %struct.TYPE_13__* %43, i32 0)
  store i32 %44, i32* %22, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %5
  %47 = load i32, i32* %22, align 4
  store i32 %47, i32* %6, align 4
  br label %671

48:                                               ; preds = %5
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %30, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = mul i32 %60, %67
  store i32 %68, i32* %32, align 4
  %69 = call i32 @bytestream2_get_le32(i32* %13)
  store i32 %69, i32* %16, align 4
  %70 = call i32 @bytestream2_skip(i32* %13, i32 2)
  %71 = call i8* @bytestream2_get_le16(i32* %13)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %17, align 4
  %73 = call i32 @bytestream2_skip(i32* %13, i32 8)
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %48
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %16, align 4
  br label %79

79:                                               ; preds = %77, %48
  %80 = load i32, i32* %16, align 4
  %81 = icmp ult i32 %80, 16
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %83, i32* %6, align 4
  br label %671

84:                                               ; preds = %79
  %85 = load i32, i32* %16, align 4
  %86 = sub i32 %85, 16
  store i32 %86, i32* %16, align 4
  br label %87

87:                                               ; preds = %641, %84
  %88 = load i32, i32* %16, align 4
  %89 = icmp ugt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i32, i32* %17, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = call i32 @bytestream2_get_bytes_left(i32* %13)
  %95 = icmp sge i32 %94, 4
  br label %96

96:                                               ; preds = %93, %90, %87
  %97 = phi i1 [ false, %90 ], [ false, %87 ], [ %95, %93 ]
  br i1 %97, label %98, label %647

98:                                               ; preds = %96
  %99 = call i32 @bytestream2_get_le32(i32* %13)
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp ugt i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %105 = load i32, i32* @AV_LOG_WARNING, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %16, align 4
  %108 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %104, i32 %105, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %18, align 4
  br label %110

110:                                              ; preds = %103, %98
  %111 = call i32 @bytestream2_tell(i32* %13)
  %112 = sub nsw i32 %111, 4
  %113 = load i32, i32* %18, align 4
  %114 = add i32 %112, %113
  store i32 %114, i32* %33, align 4
  %115 = call i8* @bytestream2_get_le16(i32* %13)
  %116 = ptrtoint i8* %115 to i32
  store i32 %116, i32* %19, align 4
  %117 = load i32, i32* %19, align 4
  switch i32 %117, label %622 [
    i32 138, label %118
    i32 135, label %118
    i32 133, label %125
    i32 130, label %125
    i32 129, label %280
    i32 137, label %287
    i32 136, label %303
    i32 132, label %421
    i32 134, label %541
    i32 131, label %541
    i32 128, label %618
  ]

118:                                              ; preds = %110, %110
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %120 = load i32, i32* %19, align 4
  %121 = call i32 @ff_dlog(%struct.TYPE_12__* %119, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %18, align 4
  %123 = sub i32 %122, 6
  %124 = call i32 @bytestream2_skip(i32* %13, i32 %123)
  br label %627

125:                                              ; preds = %110, %110
  store i32 0, i32* %26, align 4
  %126 = call i8* @bytestream2_get_le16(i32* %13)
  %127 = ptrtoint i8* %126 to i32
  store i32 %127, i32* %24, align 4
  br label %128

128:                                              ; preds = %278, %125
  %129 = load i32, i32* %24, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %279

131:                                              ; preds = %128
  %132 = call i32 @bytestream2_tell(i32* %13)
  %133 = add nsw i32 %132, 2
  %134 = load i32, i32* %33, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %279

137:                                              ; preds = %131
  %138 = load i32, i32* %26, align 4
  %139 = load i32, i32* %32, align 4
  %140 = icmp ugt i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %142, i32* %6, align 4
  br label %671

143:                                              ; preds = %137
  %144 = call i8* @bytestream2_get_le16(i32* %13)
  %145 = call i32 @sign_extend(i8* %144, i32 16)
  store i32 %145, i32* %25, align 4
  %146 = load i32, i32* %25, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %172

148:                                              ; preds = %143
  %149 = load i32, i32* %25, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %25, align 4
  %151 = load i32, i32* %25, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp ugt i32 %151, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %148
  %159 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %159, i32* %6, align 4
  br label %671

160:                                              ; preds = %148
  %161 = load i32, i32* %25, align 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = mul i32 %161, %168
  %170 = load i32, i32* %26, align 4
  %171 = add i32 %170, %169
  store i32 %171, i32* %26, align 4
  br label %278

172:                                              ; preds = %143
  %173 = load i32, i32* %24, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %24, align 4
  %175 = load i32, i32* %26, align 4
  store i32 %175, i32* %14, align 4
  %176 = call i32 @CHECK_PIXEL_PTR(i32 0)
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %29, align 4
  store i32 0, i32* %20, align 4
  br label %182

182:                                              ; preds = %265, %172
  %183 = load i32, i32* %20, align 4
  %184 = load i32, i32* %25, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %268

186:                                              ; preds = %182
  %187 = call i32 @bytestream2_tell(i32* %13)
  %188 = add nsw i32 %187, 2
  %189 = load i32, i32* %33, align 4
  %190 = icmp sgt i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %268

192:                                              ; preds = %186
  %193 = call i8* @bytestream2_get_byte(i32* %13)
  %194 = ptrtoint i8* %193 to i32
  store i32 %194, i32* %28, align 4
  %195 = load i32, i32* %28, align 4
  %196 = mul nsw i32 %195, 3
  %197 = load i32, i32* %14, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %14, align 4
  %199 = load i32, i32* %28, align 4
  %200 = load i32, i32* %29, align 4
  %201 = sub nsw i32 %200, %199
  store i32 %201, i32* %29, align 4
  %202 = call i8* @bytestream2_get_byte(i32* %13)
  %203 = call i32 @sign_extend(i8* %202, i32 8)
  store i32 %203, i32* %27, align 4
  %204 = load i32, i32* %27, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %232

206:                                              ; preds = %192
  %207 = load i32, i32* %27, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %27, align 4
  %209 = call i32 @bytestream2_get_le24(i32* %13)
  store i32 %209, i32* %31, align 4
  %210 = load i32, i32* %27, align 4
  %211 = mul nsw i32 3, %210
  %212 = call i32 @CHECK_PIXEL_PTR(i32 %211)
  store i32 0, i32* %21, align 4
  br label %213

213:                                              ; preds = %226, %206
  %214 = load i32, i32* %21, align 4
  %215 = load i32, i32* %27, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %231

217:                                              ; preds = %213
  %218 = load i8*, i8** %30, align 8
  %219 = load i32, i32* %14, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = load i32, i32* %31, align 4
  %223 = call i32 @AV_WL24(i8* %221, i32 %222)
  %224 = load i32, i32* %14, align 4
  %225 = add nsw i32 %224, 3
  store i32 %225, i32* %14, align 4
  br label %226

226:                                              ; preds = %217
  %227 = load i32, i32* %21, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %21, align 4
  %229 = load i32, i32* %29, align 4
  %230 = sub nsw i32 %229, 1
  store i32 %230, i32* %29, align 4
  br label %213

231:                                              ; preds = %213
  br label %264

232:                                              ; preds = %192
  %233 = call i32 @bytestream2_tell(i32* %13)
  %234 = load i32, i32* %27, align 4
  %235 = mul nsw i32 2, %234
  %236 = add nsw i32 %233, %235
  %237 = load i32, i32* %33, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %232
  br label %268

240:                                              ; preds = %232
  %241 = load i32, i32* %27, align 4
  %242 = mul nsw i32 3, %241
  %243 = call i32 @CHECK_PIXEL_PTR(i32 %242)
  store i32 0, i32* %21, align 4
  br label %244

244:                                              ; preds = %258, %240
  %245 = load i32, i32* %21, align 4
  %246 = load i32, i32* %27, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %263

248:                                              ; preds = %244
  %249 = call i32 @bytestream2_get_le24(i32* %13)
  store i32 %249, i32* %31, align 4
  %250 = load i8*, i8** %30, align 8
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  %254 = load i32, i32* %31, align 4
  %255 = call i32 @AV_WL24(i8* %253, i32 %254)
  %256 = load i32, i32* %14, align 4
  %257 = add nsw i32 %256, 3
  store i32 %257, i32* %14, align 4
  br label %258

258:                                              ; preds = %248
  %259 = load i32, i32* %21, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %21, align 4
  %261 = load i32, i32* %29, align 4
  %262 = add nsw i32 %261, -1
  store i32 %262, i32* %29, align 4
  br label %244

263:                                              ; preds = %244
  br label %264

264:                                              ; preds = %263, %231
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %20, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %20, align 4
  br label %182

268:                                              ; preds = %239, %191, %182
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %26, align 4
  %277 = add i32 %276, %275
  store i32 %277, i32* %26, align 4
  br label %278

278:                                              ; preds = %268, %160
  br label %128

279:                                              ; preds = %136, %128
  br label %627

280:                                              ; preds = %110
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %282 = load i32, i32* @AV_LOG_ERROR, align 4
  %283 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %281, i32 %282, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %284 = load i32, i32* %18, align 4
  %285 = sub i32 %284, 6
  %286 = call i32 @bytestream2_skip(i32* %13, i32 %285)
  br label %627

287:                                              ; preds = %110
  %288 = load i8*, i8** %30, align 8
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 1
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 0
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = mul i32 %295, %300
  %302 = call i32 @memset(i8* %288, i32 0, i32 %301)
  br label %627

303:                                              ; preds = %110
  store i32 0, i32* %26, align 4
  store i32 0, i32* %23, align 4
  br label %304

304:                                              ; preds = %417, %303
  %305 = load i32, i32* %23, align 4
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = icmp ult i32 %305, %310
  br i1 %311, label %312, label %420

312:                                              ; preds = %304
  %313 = load i32, i32* %26, align 4
  store i32 %313, i32* %14, align 4
  %314 = call i32 @bytestream2_skip(i32* %13, i32 1)
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = mul nsw i32 %319, 3
  store i32 %320, i32* %29, align 4
  br label %321

321:                                              ; preds = %406, %312
  %322 = load i32, i32* %29, align 4
  %323 = icmp sgt i32 %322, 0
  br i1 %323, label %324, label %407

324:                                              ; preds = %321
  %325 = call i32 @bytestream2_tell(i32* %13)
  %326 = add nsw i32 %325, 1
  %327 = load i32, i32* %33, align 4
  %328 = icmp sgt i32 %326, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %324
  br label %407

330:                                              ; preds = %324
  %331 = call i8* @bytestream2_get_byte(i32* %13)
  %332 = call i32 @sign_extend(i8* %331, i32 8)
  store i32 %332, i32* %27, align 4
  %333 = load i32, i32* %27, align 4
  %334 = icmp sgt i32 %333, 0
  br i1 %334, label %335, label %366

335:                                              ; preds = %330
  %336 = call i8* @bytestream2_get_byte(i32* %13)
  %337 = ptrtoint i8* %336 to i8
  store i8 %337, i8* %15, align 1
  %338 = load i32, i32* %27, align 4
  %339 = call i32 @CHECK_PIXEL_PTR(i32 %338)
  store i32 0, i32* %21, align 4
  br label %340

340:                                              ; preds = %362, %335
  %341 = load i32, i32* %21, align 4
  %342 = load i32, i32* %27, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %365

344:                                              ; preds = %340
  %345 = load i8, i8* %15, align 1
  %346 = load i8*, i8** %30, align 8
  %347 = load i32, i32* %14, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %14, align 4
  %349 = sext i32 %347 to i64
  %350 = getelementptr inbounds i8, i8* %346, i64 %349
  store i8 %345, i8* %350, align 1
  %351 = load i32, i32* %29, align 4
  %352 = add nsw i32 %351, -1
  store i32 %352, i32* %29, align 4
  %353 = load i32, i32* %29, align 4
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %344
  %356 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %357 = load i32, i32* @AV_LOG_ERROR, align 4
  %358 = load i32, i32* %29, align 4
  %359 = load i32, i32* %23, align 4
  %360 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %356, i32 %357, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %358, i32 %359)
  br label %361

361:                                              ; preds = %355, %344
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %21, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %21, align 4
  br label %340

365:                                              ; preds = %340
  br label %406

366:                                              ; preds = %330
  %367 = load i32, i32* %27, align 4
  %368 = sub nsw i32 0, %367
  store i32 %368, i32* %27, align 4
  %369 = call i32 @bytestream2_tell(i32* %13)
  %370 = load i32, i32* %27, align 4
  %371 = add nsw i32 %369, %370
  %372 = load i32, i32* %33, align 4
  %373 = icmp sgt i32 %371, %372
  br i1 %373, label %374, label %375

374:                                              ; preds = %366
  br label %407

375:                                              ; preds = %366
  %376 = load i32, i32* %27, align 4
  %377 = call i32 @CHECK_PIXEL_PTR(i32 %376)
  store i32 0, i32* %21, align 4
  br label %378

378:                                              ; preds = %402, %375
  %379 = load i32, i32* %21, align 4
  %380 = load i32, i32* %27, align 4
  %381 = icmp slt i32 %379, %380
  br i1 %381, label %382, label %405

382:                                              ; preds = %378
  %383 = call i8* @bytestream2_get_byte(i32* %13)
  %384 = ptrtoint i8* %383 to i8
  store i8 %384, i8* %15, align 1
  %385 = load i8, i8* %15, align 1
  %386 = load i8*, i8** %30, align 8
  %387 = load i32, i32* %14, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %14, align 4
  %389 = sext i32 %387 to i64
  %390 = getelementptr inbounds i8, i8* %386, i64 %389
  store i8 %385, i8* %390, align 1
  %391 = load i32, i32* %29, align 4
  %392 = add nsw i32 %391, -1
  store i32 %392, i32* %29, align 4
  %393 = load i32, i32* %29, align 4
  %394 = icmp slt i32 %393, 0
  br i1 %394, label %395, label %401

395:                                              ; preds = %382
  %396 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %397 = load i32, i32* @AV_LOG_ERROR, align 4
  %398 = load i32, i32* %29, align 4
  %399 = load i32, i32* %23, align 4
  %400 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %396, i32 %397, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %398, i32 %399)
  br label %401

401:                                              ; preds = %395, %382
  br label %402

402:                                              ; preds = %401
  %403 = load i32, i32* %21, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %21, align 4
  br label %378

405:                                              ; preds = %378
  br label %406

406:                                              ; preds = %405, %365
  br label %321

407:                                              ; preds = %374, %329, %321
  %408 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 0
  %410 = load %struct.TYPE_13__*, %struct.TYPE_13__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %410, i32 0, i32 1
  %412 = load i32*, i32** %411, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 0
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* %26, align 4
  %416 = add i32 %415, %414
  store i32 %416, i32* %26, align 4
  br label %417

417:                                              ; preds = %407
  %418 = load i32, i32* %23, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %23, align 4
  br label %304

420:                                              ; preds = %304
  br label %627

421:                                              ; preds = %110
  store i32 0, i32* %26, align 4
  store i32 0, i32* %23, align 4
  br label %422

422:                                              ; preds = %537, %421
  %423 = load i32, i32* %23, align 4
  %424 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %425 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %424, i32 0, i32 1
  %426 = load %struct.TYPE_10__*, %struct.TYPE_10__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  %429 = icmp ult i32 %423, %428
  br i1 %429, label %430, label %540

430:                                              ; preds = %422
  %431 = load i32, i32* %26, align 4
  store i32 %431, i32* %14, align 4
  %432 = call i32 @bytestream2_skip(i32* %13, i32 1)
  %433 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %433, i32 0, i32 1
  %435 = load %struct.TYPE_10__*, %struct.TYPE_10__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  store i32 %437, i32* %29, align 4
  br label %438

438:                                              ; preds = %526, %430
  %439 = load i32, i32* %29, align 4
  %440 = icmp sgt i32 %439, 0
  br i1 %440, label %441, label %527

441:                                              ; preds = %438
  %442 = call i32 @bytestream2_tell(i32* %13)
  %443 = add nsw i32 %442, 1
  %444 = load i32, i32* %33, align 4
  %445 = icmp sgt i32 %443, %444
  br i1 %445, label %446, label %447

446:                                              ; preds = %441
  br label %527

447:                                              ; preds = %441
  %448 = call i8* @bytestream2_get_byte(i32* %13)
  %449 = call i32 @sign_extend(i8* %448, i32 8)
  store i32 %449, i32* %27, align 4
  %450 = load i32, i32* %27, align 4
  %451 = icmp sgt i32 %450, 0
  br i1 %451, label %452, label %484

452:                                              ; preds = %447
  %453 = call i32 @bytestream2_get_le24(i32* %13)
  store i32 %453, i32* %31, align 4
  %454 = load i32, i32* %27, align 4
  %455 = mul nsw i32 3, %454
  %456 = call i32 @CHECK_PIXEL_PTR(i32 %455)
  store i32 0, i32* %21, align 4
  br label %457

457:                                              ; preds = %480, %452
  %458 = load i32, i32* %21, align 4
  %459 = load i32, i32* %27, align 4
  %460 = icmp slt i32 %458, %459
  br i1 %460, label %461, label %483

461:                                              ; preds = %457
  %462 = load i8*, i8** %30, align 8
  %463 = load i32, i32* %14, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i8, i8* %462, i64 %464
  %466 = load i32, i32* %31, align 4
  %467 = call i32 @AV_WL24(i8* %465, i32 %466)
  %468 = load i32, i32* %14, align 4
  %469 = add nsw i32 %468, 3
  store i32 %469, i32* %14, align 4
  %470 = load i32, i32* %29, align 4
  %471 = add nsw i32 %470, -1
  store i32 %471, i32* %29, align 4
  %472 = load i32, i32* %29, align 4
  %473 = icmp slt i32 %472, 0
  br i1 %473, label %474, label %479

474:                                              ; preds = %461
  %475 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %476 = load i32, i32* @AV_LOG_ERROR, align 4
  %477 = load i32, i32* %29, align 4
  %478 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %475, i32 %476, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %477)
  br label %479

479:                                              ; preds = %474, %461
  br label %480

480:                                              ; preds = %479
  %481 = load i32, i32* %21, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %21, align 4
  br label %457

483:                                              ; preds = %457
  br label %526

484:                                              ; preds = %447
  %485 = load i32, i32* %27, align 4
  %486 = sub nsw i32 0, %485
  store i32 %486, i32* %27, align 4
  %487 = call i32 @bytestream2_tell(i32* %13)
  %488 = load i32, i32* %27, align 4
  %489 = mul nsw i32 3, %488
  %490 = add nsw i32 %487, %489
  %491 = load i32, i32* %33, align 4
  %492 = icmp sgt i32 %490, %491
  br i1 %492, label %493, label %494

493:                                              ; preds = %484
  br label %527

494:                                              ; preds = %484
  %495 = load i32, i32* %27, align 4
  %496 = mul nsw i32 3, %495
  %497 = call i32 @CHECK_PIXEL_PTR(i32 %496)
  store i32 0, i32* %21, align 4
  br label %498

498:                                              ; preds = %522, %494
  %499 = load i32, i32* %21, align 4
  %500 = load i32, i32* %27, align 4
  %501 = icmp slt i32 %499, %500
  br i1 %501, label %502, label %525

502:                                              ; preds = %498
  %503 = call i32 @bytestream2_get_le24(i32* %13)
  store i32 %503, i32* %31, align 4
  %504 = load i8*, i8** %30, align 8
  %505 = load i32, i32* %14, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i8, i8* %504, i64 %506
  %508 = load i32, i32* %31, align 4
  %509 = call i32 @AV_WL24(i8* %507, i32 %508)
  %510 = load i32, i32* %14, align 4
  %511 = add nsw i32 %510, 3
  store i32 %511, i32* %14, align 4
  %512 = load i32, i32* %29, align 4
  %513 = add nsw i32 %512, -1
  store i32 %513, i32* %29, align 4
  %514 = load i32, i32* %29, align 4
  %515 = icmp slt i32 %514, 0
  br i1 %515, label %516, label %521

516:                                              ; preds = %502
  %517 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %518 = load i32, i32* @AV_LOG_ERROR, align 4
  %519 = load i32, i32* %29, align 4
  %520 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %517, i32 %518, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %519)
  br label %521

521:                                              ; preds = %516, %502
  br label %522

522:                                              ; preds = %521
  %523 = load i32, i32* %21, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %21, align 4
  br label %498

525:                                              ; preds = %498
  br label %526

526:                                              ; preds = %525, %483
  br label %438

527:                                              ; preds = %493, %446, %438
  %528 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %529 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %528, i32 0, i32 0
  %530 = load %struct.TYPE_13__*, %struct.TYPE_13__** %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %530, i32 0, i32 1
  %532 = load i32*, i32** %531, align 8
  %533 = getelementptr inbounds i32, i32* %532, i64 0
  %534 = load i32, i32* %533, align 4
  %535 = load i32, i32* %26, align 4
  %536 = add i32 %535, %534
  store i32 %536, i32* %26, align 4
  br label %537

537:                                              ; preds = %527
  %538 = load i32, i32* %23, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %23, align 4
  br label %422

540:                                              ; preds = %422
  br label %627

541:                                              ; preds = %110, %110
  %542 = load i32, i32* %18, align 4
  %543 = sub i32 %542, 6
  %544 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %545 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %544, i32 0, i32 1
  %546 = load %struct.TYPE_10__*, %struct.TYPE_10__** %545, align 8
  %547 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 4
  %549 = call i32 @FFALIGN(i32 %548, i32 2)
  %550 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %551 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %550, i32 0, i32 1
  %552 = load %struct.TYPE_10__*, %struct.TYPE_10__** %551, align 8
  %553 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 4
  %555 = mul i32 %549, %554
  %556 = mul i32 %555, 3
  %557 = icmp ugt i32 %543, %556
  br i1 %557, label %558, label %567

558:                                              ; preds = %541
  %559 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %560 = load i32, i32* @AV_LOG_ERROR, align 4
  %561 = load i32, i32* %18, align 4
  %562 = sub i32 %561, 6
  %563 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %559, i32 %560, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), i32 %562)
  %564 = load i32, i32* %18, align 4
  %565 = sub i32 %564, 6
  %566 = call i32 @bytestream2_skip(i32* %13, i32 %565)
  br label %617

567:                                              ; preds = %541
  store i32 0, i32* %26, align 4
  br label %568

568:                                              ; preds = %606, %567
  %569 = load i32, i32* %26, align 4
  %570 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %571 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %570, i32 0, i32 0
  %572 = load %struct.TYPE_13__*, %struct.TYPE_13__** %571, align 8
  %573 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %572, i32 0, i32 1
  %574 = load i32*, i32** %573, align 8
  %575 = getelementptr inbounds i32, i32* %574, i64 0
  %576 = load i32, i32* %575, align 4
  %577 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %578 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %577, i32 0, i32 1
  %579 = load %struct.TYPE_10__*, %struct.TYPE_10__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %579, i32 0, i32 0
  %581 = load i32, i32* %580, align 4
  %582 = mul i32 %576, %581
  %583 = icmp ult i32 %569, %582
  br i1 %583, label %584, label %616

584:                                              ; preds = %568
  %585 = load i8*, i8** %30, align 8
  %586 = load i32, i32* %26, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds i8, i8* %585, i64 %587
  %589 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %590 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %589, i32 0, i32 1
  %591 = load %struct.TYPE_10__*, %struct.TYPE_10__** %590, align 8
  %592 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %591, i32 0, i32 1
  %593 = load i32, i32* %592, align 4
  %594 = mul nsw i32 3, %593
  %595 = call i32 @bytestream2_get_buffer(i32* %13, i8* %588, i32 %594)
  %596 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %597 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %596, i32 0, i32 1
  %598 = load %struct.TYPE_10__*, %struct.TYPE_10__** %597, align 8
  %599 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %598, i32 0, i32 1
  %600 = load i32, i32* %599, align 4
  %601 = and i32 %600, 1
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %605

603:                                              ; preds = %584
  %604 = call i32 @bytestream2_skip(i32* %13, i32 3)
  br label %605

605:                                              ; preds = %603, %584
  br label %606

606:                                              ; preds = %605
  %607 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %608 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %607, i32 0, i32 0
  %609 = load %struct.TYPE_13__*, %struct.TYPE_13__** %608, align 8
  %610 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %609, i32 0, i32 1
  %611 = load i32*, i32** %610, align 8
  %612 = getelementptr inbounds i32, i32* %611, i64 0
  %613 = load i32, i32* %612, align 4
  %614 = load i32, i32* %26, align 4
  %615 = add i32 %614, %613
  store i32 %615, i32* %26, align 4
  br label %568

616:                                              ; preds = %568
  br label %617

617:                                              ; preds = %616, %558
  br label %627

618:                                              ; preds = %110
  %619 = load i32, i32* %18, align 4
  %620 = sub i32 %619, 6
  %621 = call i32 @bytestream2_skip(i32* %13, i32 %620)
  br label %627

622:                                              ; preds = %110
  %623 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %624 = load i32, i32* @AV_LOG_ERROR, align 4
  %625 = load i32, i32* %19, align 4
  %626 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %623, i32 %624, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %625)
  br label %627

627:                                              ; preds = %622, %618, %617, %540, %420, %287, %280, %279, %118
  %628 = load i32, i32* %33, align 4
  %629 = call i32 @bytestream2_tell(i32* %13)
  %630 = sub nsw i32 %628, %629
  %631 = icmp sge i32 %630, 0
  br i1 %631, label %632, label %637

632:                                              ; preds = %627
  %633 = load i32, i32* %33, align 4
  %634 = call i32 @bytestream2_tell(i32* %13)
  %635 = sub nsw i32 %633, %634
  %636 = call i32 @bytestream2_skip(i32* %13, i32 %635)
  br label %641

637:                                              ; preds = %627
  %638 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %639 = load i32, i32* @AV_LOG_ERROR, align 4
  %640 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %638, i32 %639, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %647

641:                                              ; preds = %632
  %642 = load i32, i32* %18, align 4
  %643 = load i32, i32* %16, align 4
  %644 = sub i32 %643, %642
  store i32 %644, i32* %16, align 4
  %645 = load i32, i32* %17, align 4
  %646 = add nsw i32 %645, -1
  store i32 %646, i32* %17, align 4
  br label %87

647:                                              ; preds = %637, %96
  %648 = call i32 @bytestream2_get_bytes_left(i32* %13)
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %650, label %659

650:                                              ; preds = %647
  %651 = call i32 @bytestream2_get_bytes_left(i32* %13)
  %652 = icmp ne i32 %651, 1
  br i1 %652, label %653, label %659

653:                                              ; preds = %650
  %654 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %655 = load i32, i32* @AV_LOG_ERROR, align 4
  %656 = load i32, i32* %11, align 4
  %657 = call i32 @bytestream2_tell(i32* %13)
  %658 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %654, i32 %655, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i32 %656, i32 %657)
  br label %659

659:                                              ; preds = %653, %650, %647
  %660 = load i8*, i8** %8, align 8
  %661 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %662 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %661, i32 0, i32 0
  %663 = load %struct.TYPE_13__*, %struct.TYPE_13__** %662, align 8
  %664 = call i32 @av_frame_ref(i8* %660, %struct.TYPE_13__* %663)
  store i32 %664, i32* %22, align 4
  %665 = icmp slt i32 %664, 0
  br i1 %665, label %666, label %668

666:                                              ; preds = %659
  %667 = load i32, i32* %22, align 4
  store i32 %667, i32* %6, align 4
  br label %671

668:                                              ; preds = %659
  %669 = load i32*, i32** %9, align 8
  store i32 1, i32* %669, align 4
  %670 = load i32, i32* %11, align 4
  store i32 %670, i32* %6, align 4
  br label %671

671:                                              ; preds = %668, %666, %158, %141, %82, %46
  %672 = load i32, i32* %6, align 4
  ret i32 %672
}

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i8* @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @sign_extend(i8*, i32) #1

declare dso_local i32 @CHECK_PIXEL_PTR(i32) #1

declare dso_local i8* @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_le24(i32*) #1

declare dso_local i32 @AV_WL24(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i8*, i32) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
