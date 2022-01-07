; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hnm4video.c_decode_interframe_v4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hnm4video.c_decode_interframe_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32*, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"writeoffset out of bounds\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Attempting to read out of bounds\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Attempting to write out of bounds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32)* @decode_interframe_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_interframe_v4(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %8, align 8
  store i32 0, i32* %10, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @bytestream2_init(i32* %9, i32* %22, i32 %23)
  br label %25

25:                                               ; preds = %500, %3
  %26 = call i32 @bytestream2_tell(i32* %9)
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %501

29:                                               ; preds = %25
  %30 = call i32 @bytestream2_peek_byte(i32* %9)
  %31 = and i32 %30, 31
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %151

34:                                               ; preds = %29
  %35 = call i32 @bytestream2_get_byte(i32* %9)
  %36 = and i32 %35, 224
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = ashr i32 %37, 5
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = icmp sgt i32 %43, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = load i32, i32* @AV_LOG_ERROR, align 4
  %55 = call i32 @av_log(%struct.TYPE_6__* %53, i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %56, i32* %4, align 4
  br label %502

57:                                               ; preds = %41
  %58 = call i32 @bytestream2_get_byte(i32* %9)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 %58, i32* %65, align 4
  %66 = call i32 @bytestream2_get_byte(i32* %9)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32 %66, i32* %73, align 4
  br label %135

74:                                               ; preds = %34
  %75 = load i32, i32* %14, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = call i32 @bytestream2_get_byte(i32* %9)
  %79 = mul nsw i32 %78, 2
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %134

82:                                               ; preds = %74
  %83 = load i32, i32* %14, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = call i32 @bytestream2_get_le16(i32* %9)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = mul nsw i32 %87, 2
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %10, align 4
  br label %133

92:                                               ; preds = %82
  %93 = load i32, i32* %14, align 4
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %131

95:                                               ; preds = %92
  %96 = call i32 @bytestream2_get_byte(i32* %9)
  %97 = mul nsw i32 %96, 2
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %98, %99
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %103, %106
  %108 = icmp sgt i32 %100, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %95
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = load i32, i32* @AV_LOG_ERROR, align 4
  %112 = call i32 @av_log(%struct.TYPE_6__* %110, i32 %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %113 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %113, i32* %4, align 4
  br label %502

114:                                              ; preds = %95
  br label %115

115:                                              ; preds = %118, %114
  %116 = load i32, i32* %11, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = call i32 @bytestream2_peek_byte(i32* %9)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  store i32 %119, i32* %126, align 4
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %11, align 4
  br label %115

129:                                              ; preds = %115
  %130 = call i32 @bytestream2_skip(i32* %9, i32 1)
  br label %132

131:                                              ; preds = %92
  br label %501

132:                                              ; preds = %129
  br label %133

133:                                              ; preds = %132, %85
  br label %134

134:                                              ; preds = %133, %77
  br label %135

135:                                              ; preds = %134, %57
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %139, %142
  %144 = icmp sgt i32 %136, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %135
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = load i32, i32* @AV_LOG_ERROR, align 4
  %148 = call i32 @av_log(%struct.TYPE_6__* %146, i32 %147, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %149 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %149, i32* %4, align 4
  br label %502

150:                                              ; preds = %135
  br label %500

151:                                              ; preds = %29
  %152 = call i32 @bytestream2_peek_byte(i32* %9)
  %153 = and i32 %152, 32
  store i32 %153, i32* %15, align 4
  %154 = call i32 @bytestream2_peek_byte(i32* %9)
  %155 = and i32 %154, 64
  store i32 %155, i32* %16, align 4
  %156 = call i32 @bytestream2_peek_byte(i32* %9)
  %157 = and i32 %156, 128
  store i32 %157, i32* %17, align 4
  %158 = call i32 @bytestream2_skip(i32* %9, i32 1)
  %159 = call i32 @bytestream2_peek_byte(i32* %9)
  %160 = and i32 %159, 1
  store i32 %160, i32* %18, align 4
  %161 = call i32 @bytestream2_get_le16(i32* %9)
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %13, align 4
  %163 = ashr i32 %162, 1
  %164 = and i32 %163, 32767
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %13, align 4
  %167 = mul nsw i32 %166, 2
  %168 = add nsw i32 %165, %167
  %169 = sub nsw i32 %168, 32768
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %11, align 4
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %17, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %191, label %173

173:                                              ; preds = %151
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %11, align 4
  %176 = mul nsw i32 2, %175
  %177 = add nsw i32 %174, %176
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %180, %183
  %185 = icmp sgt i32 %177, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %173
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %188 = load i32, i32* @AV_LOG_ERROR, align 4
  %189 = call i32 @av_log(%struct.TYPE_6__* %187, i32 %188, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %190 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %190, i32* %4, align 4
  br label %502

191:                                              ; preds = %173, %151
  %192 = load i32, i32* %17, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %210

194:                                              ; preds = %191
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, 1
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %199, %202
  %204 = icmp sge i32 %196, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %194
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %207 = load i32, i32* @AV_LOG_ERROR, align 4
  %208 = call i32 @av_log(%struct.TYPE_6__* %206, i32 %207, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %209 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %209, i32* %4, align 4
  br label %502

210:                                              ; preds = %194, %191
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %11, align 4
  %213 = mul nsw i32 2, %212
  %214 = add nsw i32 %211, %213
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %217, %220
  %222 = icmp sgt i32 %214, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %210
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %225 = load i32, i32* @AV_LOG_ERROR, align 4
  %226 = call i32 @av_log(%struct.TYPE_6__* %224, i32 %225, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %227 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %227, i32* %4, align 4
  br label %502

228:                                              ; preds = %210
  br label %229

229:                                              ; preds = %228
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %17, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %257

233:                                              ; preds = %230
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* %16, align 4
  %236 = icmp ne i32 %235, 0
  %237 = xor i1 %236, true
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = mul nsw i32 2, %242
  %244 = sub nsw i32 %243, 1
  %245 = mul nsw i32 %239, %244
  %246 = load i32, i32* %12, align 4
  %247 = sub nsw i32 %246, 1
  %248 = mul nsw i32 2, %247
  %249 = add nsw i32 %245, %248
  %250 = icmp slt i32 %234, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %233
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %253 = load i32, i32* @AV_LOG_ERROR, align 4
  %254 = call i32 @av_log(%struct.TYPE_6__* %252, i32 %253, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %255 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %255, i32* %4, align 4
  br label %502

256:                                              ; preds = %233
  br label %277

257:                                              ; preds = %230
  %258 = load i32, i32* %13, align 4
  %259 = load i32, i32* %16, align 4
  %260 = icmp ne i32 %259, 0
  %261 = xor i1 %260, true
  %262 = xor i1 %261, true
  %263 = zext i1 %262 to i32
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = mul nsw i32 2, %266
  %268 = sub nsw i32 %267, 1
  %269 = mul nsw i32 %263, %268
  %270 = icmp slt i32 %258, %269
  br i1 %270, label %271, label %276

271:                                              ; preds = %257
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %273 = load i32, i32* @AV_LOG_ERROR, align 4
  %274 = call i32 @av_log(%struct.TYPE_6__* %272, i32 %273, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %275 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %275, i32* %4, align 4
  br label %502

276:                                              ; preds = %257
  br label %277

277:                                              ; preds = %276, %256
  %278 = load i32, i32* %15, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %366

280:                                              ; preds = %277
  br label %281

281:                                              ; preds = %362, %280
  %282 = load i32, i32* %12, align 4
  %283 = icmp sgt i32 %282, 0
  br i1 %283, label %284, label %365

284:                                              ; preds = %281
  %285 = load i32, i32* %16, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %325

287:                                              ; preds = %284
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 3
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %13, align 4
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = mul nsw i32 2, %294
  %296 = sub nsw i32 %291, %295
  %297 = add nsw i32 %296, 1
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %290, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %10, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %10, align 4
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds i32, i32* %303, i64 %306
  store i32 %300, i32* %307, align 4
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 3
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %13, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %13, align 4
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds i32, i32* %310, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 2
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %10, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %10, align 4
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds i32, i32* %318, i64 %321
  store i32 %315, i32* %322, align 4
  %323 = load i32, i32* %13, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %13, align 4
  br label %356

325:                                              ; preds = %284
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 3
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %13, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %13, align 4
  %331 = sext i32 %329 to i64
  %332 = getelementptr inbounds i32, i32* %328, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 2
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %10, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %10, align 4
  %339 = sext i32 %337 to i64
  %340 = getelementptr inbounds i32, i32* %336, i64 %339
  store i32 %333, i32* %340, align 4
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 3
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %13, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %13, align 4
  %346 = sext i32 %344 to i64
  %347 = getelementptr inbounds i32, i32* %343, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 2
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* %10, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %10, align 4
  %354 = sext i32 %352 to i64
  %355 = getelementptr inbounds i32, i32* %351, i64 %354
  store i32 %348, i32* %355, align 4
  br label %356

356:                                              ; preds = %325, %287
  %357 = load i32, i32* %17, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %356
  %360 = load i32, i32* %13, align 4
  %361 = sub nsw i32 %360, 4
  store i32 %361, i32* %13, align 4
  br label %362

362:                                              ; preds = %359, %356
  %363 = load i32, i32* %12, align 4
  %364 = add nsw i32 %363, -1
  store i32 %364, i32* %12, align 4
  br label %281

365:                                              ; preds = %281
  br label %452

366:                                              ; preds = %277
  br label %367

367:                                              ; preds = %448, %366
  %368 = load i32, i32* %12, align 4
  %369 = icmp sgt i32 %368, 0
  br i1 %369, label %370, label %451

370:                                              ; preds = %367
  %371 = load i32, i32* %16, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %411

373:                                              ; preds = %370
  %374 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %375 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %374, i32 0, i32 2
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %13, align 4
  %378 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = mul nsw i32 2, %380
  %382 = sub nsw i32 %377, %381
  %383 = add nsw i32 %382, 1
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %376, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 2
  %389 = load i32*, i32** %388, align 8
  %390 = load i32, i32* %10, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %10, align 4
  %392 = sext i32 %390 to i64
  %393 = getelementptr inbounds i32, i32* %389, i64 %392
  store i32 %386, i32* %393, align 4
  %394 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %395 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %394, i32 0, i32 2
  %396 = load i32*, i32** %395, align 8
  %397 = load i32, i32* %13, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %13, align 4
  %399 = sext i32 %397 to i64
  %400 = getelementptr inbounds i32, i32* %396, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 2
  %404 = load i32*, i32** %403, align 8
  %405 = load i32, i32* %10, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %10, align 4
  %407 = sext i32 %405 to i64
  %408 = getelementptr inbounds i32, i32* %404, i64 %407
  store i32 %401, i32* %408, align 4
  %409 = load i32, i32* %13, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %13, align 4
  br label %442

411:                                              ; preds = %370
  %412 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %413 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %412, i32 0, i32 2
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %13, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %13, align 4
  %417 = sext i32 %415 to i64
  %418 = getelementptr inbounds i32, i32* %414, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %420, i32 0, i32 2
  %422 = load i32*, i32** %421, align 8
  %423 = load i32, i32* %10, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %10, align 4
  %425 = sext i32 %423 to i64
  %426 = getelementptr inbounds i32, i32* %422, i64 %425
  store i32 %419, i32* %426, align 4
  %427 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %428 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %427, i32 0, i32 2
  %429 = load i32*, i32** %428, align 8
  %430 = load i32, i32* %13, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %13, align 4
  %432 = sext i32 %430 to i64
  %433 = getelementptr inbounds i32, i32* %429, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %436 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %435, i32 0, i32 2
  %437 = load i32*, i32** %436, align 8
  %438 = load i32, i32* %10, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %10, align 4
  %440 = sext i32 %438 to i64
  %441 = getelementptr inbounds i32, i32* %437, i64 %440
  store i32 %434, i32* %441, align 4
  br label %442

442:                                              ; preds = %411, %373
  %443 = load i32, i32* %17, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %448

445:                                              ; preds = %442
  %446 = load i32, i32* %13, align 4
  %447 = sub nsw i32 %446, 4
  store i32 %447, i32* %13, align 4
  br label %448

448:                                              ; preds = %445, %442
  %449 = load i32, i32* %12, align 4
  %450 = add nsw i32 %449, -1
  store i32 %450, i32* %12, align 4
  br label %367

451:                                              ; preds = %367
  br label %452

452:                                              ; preds = %451, %365
  %453 = load i32, i32* %18, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %499

455:                                              ; preds = %452
  %456 = load i32, i32* %11, align 4
  store i32 %456, i32* %12, align 4
  %457 = load i32, i32* %11, align 4
  %458 = mul nsw i32 %457, 2
  %459 = load i32, i32* %10, align 4
  %460 = sub nsw i32 %459, %458
  store i32 %460, i32* %10, align 4
  br label %461

461:                                              ; preds = %464, %455
  %462 = load i32, i32* %12, align 4
  %463 = icmp sgt i32 %462, 0
  br i1 %463, label %464, label %498

464:                                              ; preds = %461
  %465 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %466 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %465, i32 0, i32 2
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %10, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  %471 = load i32, i32* %470, align 4
  store i32 %471, i32* %18, align 4
  %472 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %473 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %472, i32 0, i32 2
  %474 = load i32*, i32** %473, align 8
  %475 = load i32, i32* %10, align 4
  %476 = add nsw i32 %475, 1
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %474, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %481 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %480, i32 0, i32 2
  %482 = load i32*, i32** %481, align 8
  %483 = load i32, i32* %10, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %482, i64 %484
  store i32 %479, i32* %485, align 4
  %486 = load i32, i32* %18, align 4
  %487 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %488 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %487, i32 0, i32 2
  %489 = load i32*, i32** %488, align 8
  %490 = load i32, i32* %10, align 4
  %491 = add nsw i32 %490, 1
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %489, i64 %492
  store i32 %486, i32* %493, align 4
  %494 = load i32, i32* %12, align 4
  %495 = add nsw i32 %494, -1
  store i32 %495, i32* %12, align 4
  %496 = load i32, i32* %10, align 4
  %497 = add nsw i32 %496, 2
  store i32 %497, i32* %10, align 4
  br label %461

498:                                              ; preds = %461
  br label %499

499:                                              ; preds = %498, %452
  br label %500

500:                                              ; preds = %499, %150
  br label %25

501:                                              ; preds = %131, %25
  store i32 0, i32* %4, align 4
  br label %502

502:                                              ; preds = %501, %271, %251, %223, %205, %186, %145, %109, %52
  %503 = load i32, i32* %4, align 4
  ret i32 %503
}

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @bytestream2_peek_byte(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
