; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg_decode_a53_cc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg_decode_a53_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@FF_CODEC_PROPERTY_CLOSED_CAPTIONS = common dso_local global i32 0, align 4
@ff_reverse = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32)* @mpeg_decode_a53_cc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg_decode_a53_cc(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp sge i32 %24, 6
  br i1 %25, label %26, label %115

26:                                               ; preds = %3
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 71
  br i1 %31, label %32, label %115

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 65
  br i1 %37, label %38, label %115

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 57
  br i1 %43, label %44, label %115

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 52
  br i1 %49, label %50, label %115

50:                                               ; preds = %44
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %115

56:                                               ; preds = %50
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 5
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = and i32 %60, 64
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %115

63:                                               ; preds = %56
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 5
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = and i32 %67, 31
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %114

71:                                               ; preds = %63
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %9, align 4
  %74 = mul nsw i32 %73, 3
  %75 = add nsw i32 7, %74
  %76 = icmp sge i32 %72, %75
  br i1 %76, label %77, label %114

77:                                               ; preds = %71
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = call i32 @av_freep(i8** %79)
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 %81, 3
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @av_malloc(i32 %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %77
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i32 0, i32* %97, align 8
  br label %108

98:                                               ; preds = %77
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 7
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @memcpy(i8* %101, i8* %103, i32 %106)
  br label %108

108:                                              ; preds = %98, %95
  %109 = load i32, i32* @FF_CODEC_PROPERTY_CLOSED_CAPTIONS, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %108, %71, %63
  store i32 1, i32* %4, align 4
  br label %412

115:                                              ; preds = %56, %50, %44, %38, %32, %26, %3
  %116 = load i32, i32* %7, align 4
  %117 = icmp sge i32 %116, 2
  br i1 %117, label %118, label %247

118:                                              ; preds = %115
  %119 = load i8*, i8** %6, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 3
  br i1 %123, label %124, label %247

124:                                              ; preds = %118
  %125 = load i8*, i8** %6, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = and i32 %128, 127
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %247

131:                                              ; preds = %124
  store i32 0, i32* %11, align 4
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  %134 = load i32, i32* %7, align 4
  %135 = sub nsw i32 %134, 2
  %136 = call i32 @init_get_bits(i32* %10, i8* %133, i32 %135)
  %137 = call i8* @get_bits(i32* %10, i32 5)
  %138 = ptrtoint i8* %137 to i32
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %246

141:                                              ; preds = %131
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = call i32 @av_freep(i8** %143)
  %145 = load i32, i32* %11, align 4
  %146 = mul nsw i32 %145, 3
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i8* @av_mallocz(i32 %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %141
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  store i32 0, i32* %161, align 8
  br label %240

162:                                              ; preds = %141
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %16, align 8
  store i32 0, i32* %12, align 4
  br label %166

166:                                              ; preds = %236, %162
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = call i32 @get_bits_left(i32* %10)
  %172 = icmp sge i32 %171, 26
  br label %173

173:                                              ; preds = %170, %166
  %174 = phi i1 [ false, %166 ], [ %172, %170 ]
  br i1 %174, label %175, label %239

175:                                              ; preds = %173
  %176 = call i32 @skip_bits(i32* %10, i32 2)
  %177 = call i8* @get_bits(i32* %10, i32 2)
  %178 = ptrtoint i8* %177 to i8
  store i8 %178, i8* %13, align 1
  %179 = call i32 @skip_bits(i32* %10, i32 5)
  %180 = call i8* @get_bits(i32* %10, i32 8)
  %181 = ptrtoint i8* %180 to i8
  store i8 %181, i8* %14, align 1
  %182 = call i8* @get_bits(i32* %10, i32 8)
  %183 = ptrtoint i8* %182 to i8
  store i8 %183, i8* %15, align 1
  %184 = call i32 @skip_bits(i32* %10, i32 1)
  %185 = load i8, i8* %13, align 1
  %186 = icmp ne i8 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %175
  %188 = load i8*, i8** %16, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 2
  store i8 0, i8* %189, align 1
  %190 = load i8*, i8** %16, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  store i8 0, i8* %191, align 1
  %192 = load i8*, i8** %16, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 0
  store i8 0, i8* %193, align 1
  br label %233

194:                                              ; preds = %175
  %195 = load i8, i8* %13, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 2
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 1, i32 0
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %13, align 1
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %194
  %207 = load i8, i8* %13, align 1
  %208 = icmp ne i8 %207, 0
  %209 = xor i1 %208, true
  %210 = zext i1 %209 to i32
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %13, align 1
  br label %212

212:                                              ; preds = %206, %194
  %213 = load i8, i8* %13, align 1
  %214 = sext i8 %213 to i32
  %215 = or i32 4, %214
  %216 = trunc i32 %215 to i8
  %217 = load i8*, i8** %16, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  store i8 %216, i8* %218, align 1
  %219 = load i8*, i8** @ff_reverse, align 8
  %220 = load i8, i8* %14, align 1
  %221 = sext i8 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = load i8*, i8** %16, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  store i8 %223, i8* %225, align 1
  %226 = load i8*, i8** @ff_reverse, align 8
  %227 = load i8, i8* %15, align 1
  %228 = sext i8 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = load i8*, i8** %16, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 2
  store i8 %230, i8* %232, align 1
  br label %233

233:                                              ; preds = %212, %187
  %234 = load i8*, i8** %16, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 3
  store i8* %235, i8** %16, align 8
  br label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %12, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %12, align 4
  br label %166

239:                                              ; preds = %173
  br label %240

240:                                              ; preds = %239, %159
  %241 = load i32, i32* @FF_CODEC_PROPERTY_CLOSED_CAPTIONS, align 4
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %240, %131
  store i32 1, i32* %4, align 4
  br label %412

247:                                              ; preds = %124, %118, %115
  %248 = load i32, i32* %7, align 4
  %249 = icmp sge i32 %248, 11
  br i1 %249, label %250, label %409

250:                                              ; preds = %247
  %251 = load i8*, i8** %6, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 0
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 67
  br i1 %255, label %256, label %409

256:                                              ; preds = %250
  %257 = load i8*, i8** %6, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 1
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %260, 67
  br i1 %261, label %262, label %409

262:                                              ; preds = %256
  %263 = load i8*, i8** %6, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 2
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %268, label %409

268:                                              ; preds = %262
  %269 = load i8*, i8** %6, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 3
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp eq i32 %272, 248
  br i1 %273, label %274, label %409

274:                                              ; preds = %268
  store i32 0, i32* %17, align 4
  store i32 5, i32* %18, align 4
  br label %275

275:                                              ; preds = %294, %274
  %276 = load i32, i32* %18, align 4
  %277 = add nsw i32 %276, 6
  %278 = load i32, i32* %7, align 4
  %279 = icmp sle i32 %277, %278
  br i1 %279, label %280, label %289

280:                                              ; preds = %275
  %281 = load i8*, i8** %6, align 8
  %282 = load i32, i32* %18, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8, i8* %281, i64 %283
  %285 = load i8, i8* %284, align 1
  %286 = sext i8 %285 to i32
  %287 = and i32 %286, 254
  %288 = icmp eq i32 %287, 254
  br label %289

289:                                              ; preds = %280, %275
  %290 = phi i1 [ false, %275 ], [ %288, %280 ]
  br i1 %290, label %291, label %297

291:                                              ; preds = %289
  %292 = load i32, i32* %17, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %17, align 4
  br label %294

294:                                              ; preds = %291
  %295 = load i32, i32* %18, align 4
  %296 = add nsw i32 %295, 6
  store i32 %296, i32* %18, align 4
  br label %275

297:                                              ; preds = %289
  %298 = load i32, i32* %17, align 4
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %408

300:                                              ; preds = %297
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 0
  %303 = call i32 @av_freep(i8** %302)
  %304 = load i32, i32* %17, align 4
  %305 = mul nsw i32 %304, 6
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 1
  store i32 %305, i32* %307, align 8
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = call i8* @av_malloc(i32 %310)
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 0
  store i8* %311, i8** %313, align 8
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  %316 = load i8*, i8** %315, align 8
  %317 = icmp ne i8* %316, null
  br i1 %317, label %321, label %318

318:                                              ; preds = %300
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 1
  store i32 0, i32* %320, align 8
  br label %402

321:                                              ; preds = %300
  %322 = load i8*, i8** %6, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 4
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i32
  %326 = and i32 %325, 128
  %327 = icmp ne i32 %326, 0
  %328 = xor i1 %327, true
  %329 = xor i1 %328, true
  %330 = zext i1 %329 to i32
  %331 = trunc i32 %330 to i8
  store i8 %331, i8* %19, align 1
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 0
  %334 = load i8*, i8** %333, align 8
  store i8* %334, i8** %20, align 8
  %335 = load i8*, i8** %6, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 5
  store i8* %336, i8** %6, align 8
  store i32 0, i32* %18, align 4
  br label %337

337:                                              ; preds = %398, %321
  %338 = load i32, i32* %18, align 4
  %339 = load i32, i32* %17, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %401

341:                                              ; preds = %337
  %342 = load i8*, i8** %6, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 0
  %344 = load i8, i8* %343, align 1
  %345 = sext i8 %344 to i32
  %346 = icmp eq i32 %345, 255
  br i1 %346, label %347, label %351

347:                                              ; preds = %341
  %348 = load i8, i8* %19, align 1
  %349 = sext i8 %348 to i32
  %350 = icmp ne i32 %349, 0
  br label %351

351:                                              ; preds = %347, %341
  %352 = phi i1 [ false, %341 ], [ %350, %347 ]
  %353 = zext i1 %352 to i64
  %354 = select i1 %352, i32 252, i32 253
  %355 = trunc i32 %354 to i8
  %356 = load i8*, i8** %20, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 0
  store i8 %355, i8* %357, align 1
  %358 = load i8*, i8** %6, align 8
  %359 = getelementptr inbounds i8, i8* %358, i64 1
  %360 = load i8, i8* %359, align 1
  %361 = load i8*, i8** %20, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 1
  store i8 %360, i8* %362, align 1
  %363 = load i8*, i8** %6, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 2
  %365 = load i8, i8* %364, align 1
  %366 = load i8*, i8** %20, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 2
  store i8 %365, i8* %367, align 1
  %368 = load i8*, i8** %6, align 8
  %369 = getelementptr inbounds i8, i8* %368, i64 3
  %370 = load i8, i8* %369, align 1
  %371 = sext i8 %370 to i32
  %372 = icmp eq i32 %371, 255
  br i1 %372, label %373, label %377

373:                                              ; preds = %351
  %374 = load i8, i8* %19, align 1
  %375 = icmp ne i8 %374, 0
  %376 = xor i1 %375, true
  br label %377

377:                                              ; preds = %373, %351
  %378 = phi i1 [ false, %351 ], [ %376, %373 ]
  %379 = zext i1 %378 to i64
  %380 = select i1 %378, i32 252, i32 253
  %381 = trunc i32 %380 to i8
  %382 = load i8*, i8** %20, align 8
  %383 = getelementptr inbounds i8, i8* %382, i64 3
  store i8 %381, i8* %383, align 1
  %384 = load i8*, i8** %6, align 8
  %385 = getelementptr inbounds i8, i8* %384, i64 4
  %386 = load i8, i8* %385, align 1
  %387 = load i8*, i8** %20, align 8
  %388 = getelementptr inbounds i8, i8* %387, i64 4
  store i8 %386, i8* %388, align 1
  %389 = load i8*, i8** %6, align 8
  %390 = getelementptr inbounds i8, i8* %389, i64 5
  %391 = load i8, i8* %390, align 1
  %392 = load i8*, i8** %20, align 8
  %393 = getelementptr inbounds i8, i8* %392, i64 5
  store i8 %391, i8* %393, align 1
  %394 = load i8*, i8** %20, align 8
  %395 = getelementptr inbounds i8, i8* %394, i64 6
  store i8* %395, i8** %20, align 8
  %396 = load i8*, i8** %6, align 8
  %397 = getelementptr inbounds i8, i8* %396, i64 6
  store i8* %397, i8** %6, align 8
  br label %398

398:                                              ; preds = %377
  %399 = load i32, i32* %18, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %18, align 4
  br label %337

401:                                              ; preds = %337
  br label %402

402:                                              ; preds = %401, %318
  %403 = load i32, i32* @FF_CODEC_PROPERTY_CLOSED_CAPTIONS, align 4
  %404 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = or i32 %406, %403
  store i32 %407, i32* %405, align 8
  br label %408

408:                                              ; preds = %402, %297
  store i32 1, i32* %4, align 4
  br label %412

409:                                              ; preds = %268, %262, %256, %250, %247
  br label %410

410:                                              ; preds = %409
  br label %411

411:                                              ; preds = %410
  store i32 0, i32* %4, align 4
  br label %412

412:                                              ; preds = %411, %408, %246, %114
  %413 = load i32, i32* %4, align 4
  ret i32 %413
}

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @init_get_bits(i32*, i8*, i32) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
