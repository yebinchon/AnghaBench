; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xxan.c_xan_decode_frame_type0.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xxan.c_xan_decode_frame_type0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32, i32*, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32**, i32* }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Ignoring invalid correction block position\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Luma decoding failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @xan_decode_frame_type0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xan_decode_frame_type0(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %4, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 4
  %24 = call i32 @bytestream2_get_le32(i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 4
  %27 = call i32 @bytestream2_get_le32(i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @xan_decode_chroma(%struct.TYPE_11__* %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %2, align 4
  br label %328

34:                                               ; preds = %1
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 4
  %38 = call i32 @bytestream2_size(i32* %37)
  %39 = icmp uge i32 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = load i32, i32* @AV_LOG_WARNING, align 4
  %43 = call i32 @av_log(%struct.TYPE_11__* %41, i32 %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  %47 = load i32, i32* @SEEK_SET, align 4
  %48 = call i32 @bytestream2_seek(i32* %46, i32 12, i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = ashr i32 %53, 1
  %55 = call i32 @xan_unpack_luma(%struct.TYPE_10__* %49, i32* %50, i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %44
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = load i32, i32* @AV_LOG_ERROR, align 4
  %61 = call i32 @av_log(%struct.TYPE_11__* %59, i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %2, align 4
  br label %328

63:                                               ; preds = %44
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %5, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %7, align 8
  %69 = load i32, i32* %67, align 4
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = shl i32 %70, 1
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %71, i32* %73, align 4
  store i32 1, i32* %13, align 4
  br label %74

74:                                               ; preds = %103, %63
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = icmp slt i32 %75, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %74
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %7, align 8
  %85 = load i32, i32* %83, align 4
  %86 = add nsw i32 %82, %85
  %87 = and i32 %86, 31
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* %10, align 4
  %96 = shl i32 %95, 1
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32 %96, i32* %101, align 4
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %81
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 2
  store i32 %105, i32* %13, align 4
  br label %74

106:                                              ; preds = %74
  %107 = load i32, i32* %11, align 4
  %108 = shl i32 %107, 1
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  %113 = load i32*, i32** %5, align 8
  store i32* %113, i32** %6, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %5, align 8
  store i32 1, i32* %12, align 4
  br label %120

120:                                              ; preds = %192, %106
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %195

126:                                              ; preds = %120
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 1
  %131 = load i32*, i32** %7, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %7, align 8
  %133 = load i32, i32* %131, align 4
  %134 = add nsw i32 %130, %133
  %135 = and i32 %134, 31
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = shl i32 %136, 1
  %138 = load i32*, i32** %5, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  store i32 %137, i32* %139, align 4
  store i32 1, i32* %13, align 4
  br label %140

140:                                              ; preds = %175, %126
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %144, 1
  %146 = icmp slt i32 %141, %145
  br i1 %146, label %147, label %178

147:                                              ; preds = %140
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = ashr i32 %153, 1
  %155 = load i32*, i32** %7, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %7, align 8
  %157 = load i32, i32* %155, align 4
  %158 = add nsw i32 %154, %157
  %159 = and i32 %158, 31
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %160, %161
  %163 = load i32*, i32** %5, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %162, i32* %166, align 4
  %167 = load i32, i32* %10, align 4
  %168 = shl i32 %167, 1
  %169 = load i32*, i32** %5, align 8
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  store i32 %168, i32* %173, align 4
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %147
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 2
  store i32 %177, i32* %13, align 4
  br label %140

178:                                              ; preds = %140
  %179 = load i32, i32* %11, align 4
  %180 = shl i32 %179, 1
  %181 = load i32*, i32** %5, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %180, i32* %184, align 4
  %185 = load i32*, i32** %5, align 8
  store i32* %185, i32** %6, align 8
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32*, i32** %5, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32* %191, i32** %5, align 8
  br label %192

192:                                              ; preds = %178
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %12, align 4
  br label %120

195:                                              ; preds = %120
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %262

198:                                              ; preds = %195
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 4
  %201 = load i32, i32* %9, align 4
  %202 = add i32 8, %201
  %203 = load i32, i32* @SEEK_SET, align 4
  %204 = call i32 @bytestream2_seek(i32* %200, i32 %202, i32 %203)
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = sdiv i32 %211, 2
  %213 = call i32 @xan_unpack(%struct.TYPE_10__* %205, i32* %208, i32 %212)
  store i32 %213, i32* %15, align 4
  %214 = load i32, i32* %15, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %198
  store i32 0, i32* %15, align 4
  br label %225

217:                                              ; preds = %198
  %218 = load i32, i32* %15, align 4
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = sdiv i32 %221, 2
  %223 = sub nsw i32 %222, 1
  %224 = call i32 @FFMIN(i32 %218, i32 %223)
  store i32 %224, i32* %15, align 4
  br label %225

225:                                              ; preds = %217, %216
  store i32 0, i32* %12, align 4
  br label %226

226:                                              ; preds = %258, %225
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* %15, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %261

230:                                              ; preds = %226
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %12, align 4
  %235 = mul nsw i32 %234, 2
  %236 = add nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %233, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %12, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = shl i32 %246, 1
  %248 = add nsw i32 %239, %247
  %249 = and i32 %248, 63
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 2
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %12, align 4
  %254 = mul nsw i32 %253, 2
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %252, i64 %256
  store i32 %249, i32* %257, align 4
  br label %258

258:                                              ; preds = %230
  %259 = load i32, i32* %12, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %12, align 4
  br label %226

261:                                              ; preds = %226
  br label %262

262:                                              ; preds = %261, %195
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 2
  %265 = load i32*, i32** %264, align 8
  store i32* %265, i32** %7, align 8
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 3
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 0
  %270 = load i32**, i32*** %269, align 8
  %271 = getelementptr inbounds i32*, i32** %270, i64 0
  %272 = load i32*, i32** %271, align 8
  store i32* %272, i32** %5, align 8
  store i32 0, i32* %13, align 4
  br label %273

273:                                              ; preds = %324, %262
  %274 = load i32, i32* %13, align 4
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = icmp slt i32 %274, %277
  br i1 %278, label %279, label %327

279:                                              ; preds = %273
  store i32 0, i32* %12, align 4
  br label %280

280:                                              ; preds = %304, %279
  %281 = load i32, i32* %12, align 4
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = icmp slt i32 %281, %284
  br i1 %285, label %286, label %307

286:                                              ; preds = %280
  %287 = load i32*, i32** %7, align 8
  %288 = load i32, i32* %12, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = shl i32 %291, 2
  %293 = load i32*, i32** %7, align 8
  %294 = load i32, i32* %12, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = ashr i32 %297, 3
  %299 = or i32 %292, %298
  %300 = load i32*, i32** %5, align 8
  %301 = load i32, i32* %12, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  store i32 %299, i32* %303, align 4
  br label %304

304:                                              ; preds = %286
  %305 = load i32, i32* %12, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %12, align 4
  br label %280

307:                                              ; preds = %280
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32*, i32** %7, align 8
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds i32, i32* %311, i64 %312
  store i32* %313, i32** %7, align 8
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 3
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 0
  %320 = load i32, i32* %319, align 4
  %321 = load i32*, i32** %5, align 8
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds i32, i32* %321, i64 %322
  store i32* %323, i32** %5, align 8
  br label %324

324:                                              ; preds = %307
  %325 = load i32, i32* %13, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %13, align 4
  br label %273

327:                                              ; preds = %273
  store i32 0, i32* %2, align 4
  br label %328

328:                                              ; preds = %327, %58, %32
  %329 = load i32, i32* %2, align 4
  ret i32 %329
}

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @xan_decode_chroma(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @bytestream2_size(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #1

declare dso_local i32 @xan_unpack_luma(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @xan_unpack(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
