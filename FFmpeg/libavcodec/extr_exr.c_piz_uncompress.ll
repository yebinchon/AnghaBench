; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_piz_uncompress.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_piz_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32 (i64*, i64*, i32)* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i32, i32, i64, i64 }

@BITMAP_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@EXR_HALF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32, i32, %struct.TYPE_8__*)* @piz_uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @piz_uncompress(%struct.TYPE_9__* %0, i32* %1, i32 %2, i32 %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_10__*, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %11, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i64*
  store i64* %29, i64** %17, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %5
  %35 = load i64, i64* @BITMAP_SIZE, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i8* @av_malloc(i32 %36)
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %34, %5
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = call i8* @av_malloc(i32 131072)
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = call i32 @av_freep(i64* %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = call i32 @av_freep(i64* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = call i32 @AVERROR(i32 %68)
  store i32 %69, i32* %6, align 4
  br label %288

70:                                               ; preds = %56
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @bytestream2_init(i32* %12, i32* %71, i32 %72)
  %74 = call i64 @bytestream2_get_le16(i32* %12)
  store i64 %74, i64* %14, align 8
  %75 = call i64 @bytestream2_get_le16(i32* %12)
  store i64 %75, i64* %15, align 8
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* @BITMAP_SIZE, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %80, i32* %6, align 4
  br label %288

81:                                               ; preds = %70
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* @BITMAP_SIZE, align 8
  %87 = call i64 @FFMIN(i64 %85, i64 %86)
  %88 = call i32 @memset(i64 %84, i32 0, i64 %87)
  %89 = load i64, i64* %14, align 8
  %90 = load i64, i64* %15, align 8
  %91 = icmp sle i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %81
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %14, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i64, i64* %15, align 8
  %99 = load i64, i64* %14, align 8
  %100 = sub nsw i64 %98, %99
  %101 = add nsw i64 %100, 1
  %102 = call i32 @bytestream2_get_buffer(i32* %12, i64 %97, i64 %101)
  br label %103

103:                                              ; preds = %92, %81
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %15, align 8
  %108 = add nsw i64 %106, %107
  %109 = add nsw i64 %108, 1
  %110 = load i64, i64* @BITMAP_SIZE, align 8
  %111 = load i64, i64* %15, align 8
  %112 = sub nsw i64 %110, %111
  %113 = sub nsw i64 %112, 1
  %114 = call i32 @memset(i64 %109, i32 0, i64 %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @reverse_lut(i64 %117, i64 %120)
  store i64 %121, i64* %13, align 8
  %122 = load i64*, i64** %17, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = udiv i64 %124, 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @huf_uncompress(i32* %12, i64* %122, i32 %126)
  store i32 %127, i32* %20, align 4
  %128 = load i32, i32* %20, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %103
  %131 = load i32, i32* %20, align 4
  store i32 %131, i32* %6, align 4
  br label %288

132:                                              ; preds = %103
  %133 = load i64*, i64** %17, align 8
  store i64* %133, i64** %16, align 8
  store i32 0, i32* %21, align 4
  br label %134

134:                                              ; preds = %194, %132
  %135 = load i32, i32* %21, align 4
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %197

140:                                              ; preds = %134
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = load i32, i32* %21, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i64 %145
  store %struct.TYPE_10__* %146, %struct.TYPE_10__** %24, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @EXR_HALF, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %140
  store i32 1, i32* %23, align 4
  br label %154

153:                                              ; preds = %140
  store i32 2, i32* %23, align 4
  br label %154

154:                                              ; preds = %153, %152
  store i32 0, i32* %22, align 4
  br label %155

155:                                              ; preds = %178, %154
  %156 = load i32, i32* %22, align 4
  %157 = load i32, i32* %23, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %181

159:                                              ; preds = %155
  %160 = load i64*, i64** %16, align 8
  %161 = load i32, i32* %22, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %23, align 4
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %23, align 4
  %175 = mul nsw i32 %173, %174
  %176 = load i64, i64* %13, align 8
  %177 = call i32 @wav_decode(i64* %163, i32 %166, i32 %167, i32 %170, i32 %175, i64 %176)
  br label %178

178:                                              ; preds = %159
  %179 = load i32, i32* %22, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %22, align 4
  br label %155

181:                                              ; preds = %155
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %184, %187
  %189 = load i32, i32* %23, align 4
  %190 = mul nsw i32 %188, %189
  %191 = load i64*, i64** %16, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  store i64* %193, i64** %16, align 8
  br label %194

194:                                              ; preds = %181
  %195 = load i32, i32* %21, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %21, align 4
  br label %134

197:                                              ; preds = %134
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64*, i64** %17, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = udiv i64 %203, 8
  %205 = trunc i64 %204 to i32
  %206 = call i32 @apply_lut(i64 %200, i64* %201, i32 %205)
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to i64*
  store i64* %210, i64** %18, align 8
  store i32 0, i32* %21, align 4
  br label %211

211:                                              ; preds = %284, %197
  %212 = load i32, i32* %21, align 4
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %287

217:                                              ; preds = %211
  store i32 0, i32* %25, align 4
  store i32 0, i32* %22, align 4
  br label %218

218:                                              ; preds = %280, %217
  %219 = load i32, i32* %22, align 4
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %283

224:                                              ; preds = %218
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = load i32, i32* %22, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i64 %229
  store %struct.TYPE_10__* %230, %struct.TYPE_10__** %24, align 8
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @EXR_HALF, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %224
  store i32 1, i32* %23, align 4
  br label %238

237:                                              ; preds = %224
  store i32 2, i32* %23, align 4
  br label %238

238:                                              ; preds = %237, %236
  %239 = load i64*, i64** %17, align 8
  %240 = load i32, i32* %25, align 4
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = mul nsw i32 %240, %243
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = mul nsw i32 %244, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %239, i64 %249
  %251 = load i32, i32* %21, align 4
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = mul nsw i32 %251, %254
  %256 = load i32, i32* %23, align 4
  %257 = mul nsw i32 %255, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %250, i64 %258
  store i64* %259, i64** %19, align 8
  %260 = load i32, i32* %23, align 4
  %261 = load i32, i32* %25, align 4
  %262 = add nsw i32 %261, %260
  store i32 %262, i32* %25, align 4
  %263 = load i64*, i64** %18, align 8
  %264 = load i64*, i64** %19, align 8
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = mul nsw i32 %267, 2
  %269 = load i32, i32* %23, align 4
  %270 = mul nsw i32 %268, %269
  %271 = call i32 @memcpy(i64* %263, i64* %264, i32 %270)
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* %23, align 4
  %276 = mul nsw i32 %274, %275
  %277 = load i64*, i64** %18, align 8
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i64, i64* %277, i64 %278
  store i64* %279, i64** %18, align 8
  br label %280

280:                                              ; preds = %238
  %281 = load i32, i32* %22, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %22, align 4
  br label %218

283:                                              ; preds = %218
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %21, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %21, align 4
  br label %211

287:                                              ; preds = %211
  store i32 0, i32* %6, align 4
  br label %288

288:                                              ; preds = %287, %130, %79, %61
  %289 = load i32, i32* %6, align 4
  ret i32 %289
}

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @av_freep(i64*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i64 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i64 @FFMIN(i64, i64) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i64, i64) #1

declare dso_local i64 @reverse_lut(i64, i64) #1

declare dso_local i32 @huf_uncompress(i32*, i64*, i32) #1

declare dso_local i32 @wav_decode(i64*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @apply_lut(i64, i64*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
