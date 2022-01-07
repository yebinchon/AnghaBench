; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msrledec.c_msrle_decode_pal4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msrledec.c_msrle_decode_pal4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8**, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"MS RLE: bytestream overrun, %dx%d left\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"MS RLE: frame/stream ptr just went out of bounds (copy)\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"MS RLE: frame ptr just went out of bounds (run) %d %d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"MS RLE: ended frame decode with %d bytes left over\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, i32*)* @msrle_decode_pal4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msrle_decode_pal4(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %13, align 4
  br label %19

19:                                               ; preds = %301, %3
  %20 = load i32, i32* %13, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %23, %26
  br label %28

28:                                               ; preds = %22, %19
  %29 = phi i1 [ false, %19 ], [ %27, %22 ]
  br i1 %29, label %30, label %302

30:                                               ; preds = %28
  %31 = load i32*, i32** %7, align 8
  %32 = call signext i8 @bytestream2_get_bytes_left(i32* %31)
  %33 = sext i8 %32 to i32
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32, i32* %13, align 4
  %44 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %36, i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %45, i32* %4, align 4
  br label %315

46:                                               ; preds = %30
  %47 = load i32*, i32** %7, align 8
  %48 = call zeroext i8 @bytestream2_get_byteu(i32* %47)
  store i8 %48, i8* %11, align 1
  store i8 %48, i8* %8, align 1
  %49 = load i8, i8* %8, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %212

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  %54 = call zeroext i8 @bytestream2_get_byte(i32* %53)
  store i8 %54, i8* %11, align 1
  %55 = load i8, i8* %11, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %211

61:                                               ; preds = %52
  %62 = load i8, i8* %11, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %315

66:                                               ; preds = %61
  %67 = load i8, i8* %11, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i32*, i32** %7, align 8
  %72 = call zeroext i8 @bytestream2_get_byte(i32* %71)
  store i8 %72, i8* %11, align 1
  %73 = load i8, i8* %11, align 1
  %74 = zext i8 %73 to i32
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %12, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = call zeroext i8 @bytestream2_get_byte(i32* %77)
  store i8 %78, i8* %11, align 1
  %79 = load i8, i8* %11, align 1
  %80 = zext i8 %79 to i32
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %13, align 4
  br label %209

83:                                               ; preds = %66
  %84 = load i8, i8* %11, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 1
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %10, align 1
  %88 = load i8, i8* %11, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 %89, 1
  %91 = sdiv i32 %90, 2
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %8, align 1
  %93 = load i8, i8* %8, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 1
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %9, align 1
  %97 = load i32, i32* %12, align 4
  %98 = load i8, i8* %8, align 1
  %99 = zext i8 %98 to i32
  %100 = mul nsw i32 2, %99
  %101 = add nsw i32 %97, %100
  %102 = load i8, i8* %10, align 1
  %103 = zext i8 %102 to i32
  %104 = sub nsw i32 %101, %103
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %104, %107
  br i1 %108, label %116, label %109

109:                                              ; preds = %83
  %110 = load i32*, i32** %7, align 8
  %111 = call signext i8 @bytestream2_get_bytes_left(i32* %110)
  %112 = sext i8 %111 to i32
  %113 = load i8, i8* %8, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %109, %83
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = load i32, i32* @AV_LOG_ERROR, align 4
  %119 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %117, i32 %118, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %120, i32* %4, align 4
  br label %315

121:                                              ; preds = %109
  store i32 0, i32* %14, align 4
  br label %122

122:                                              ; preds = %199, %121
  %123 = load i32, i32* %14, align 4
  %124 = load i8, i8* %8, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %202

127:                                              ; preds = %122
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp sge i32 %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %202

134:                                              ; preds = %127
  %135 = load i32*, i32** %7, align 8
  %136 = call zeroext i8 @bytestream2_get_byteu(i32* %135)
  store i8 %136, i8* %11, align 1
  %137 = load i8, i8* %11, align 1
  %138 = zext i8 %137 to i32
  %139 = ashr i32 %138, 4
  %140 = trunc i32 %139 to i8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i8**, i8*** %142, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %146, %151
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %145, i64 %155
  store i8 %140, i8* %156, align 1
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %14, align 4
  %160 = add nsw i32 %159, 1
  %161 = load i8, i8* %8, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp eq i32 %160, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %134
  %165 = load i8, i8* %10, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %202

169:                                              ; preds = %164, %134
  %170 = load i32, i32* %12, align 4
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp sge i32 %170, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %202

176:                                              ; preds = %169
  %177 = load i8, i8* %11, align 1
  %178 = zext i8 %177 to i32
  %179 = and i32 %178, 15
  %180 = trunc i32 %179 to i8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i8**, i8*** %182, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 0
  %185 = load i8*, i8** %184, align 8
  %186 = load i32, i32* %13, align 4
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = mul nsw i32 %186, %191
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %185, i64 %195
  store i8 %180, i8* %196, align 1
  %197 = load i32, i32* %12, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %12, align 4
  br label %199

199:                                              ; preds = %176
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %14, align 4
  br label %122

202:                                              ; preds = %175, %168, %133, %122
  %203 = load i8, i8* %9, align 1
  %204 = icmp ne i8 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i32*, i32** %7, align 8
  %207 = call i32 @bytestream2_skip(i32* %206, i32 1)
  br label %208

208:                                              ; preds = %205, %202
  br label %209

209:                                              ; preds = %208, %70
  br label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %210, %58
  br label %301

212:                                              ; preds = %46
  %213 = load i32, i32* %12, align 4
  %214 = load i8, i8* %8, align 1
  %215 = zext i8 %214 to i32
  %216 = add nsw i32 %213, %215
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  %221 = icmp sgt i32 %216, %220
  br i1 %221, label %222, label %233

222:                                              ; preds = %212
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %224 = load i32, i32* @AV_LOG_ERROR, align 4
  %225 = load i32, i32* %12, align 4
  %226 = load i8, i8* %8, align 1
  %227 = zext i8 %226 to i32
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %223, i32 %224, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %225, i32 %227, i32 %230)
  %232 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %232, i32* %4, align 4
  br label %315

233:                                              ; preds = %212
  %234 = load i32*, i32** %7, align 8
  %235 = call zeroext i8 @bytestream2_get_byte(i32* %234)
  store i8 %235, i8* %11, align 1
  store i32 0, i32* %14, align 4
  br label %236

236:                                              ; preds = %297, %233
  %237 = load i32, i32* %14, align 4
  %238 = load i8, i8* %8, align 1
  %239 = zext i8 %238 to i32
  %240 = icmp slt i32 %237, %239
  br i1 %240, label %241, label %300

241:                                              ; preds = %236
  %242 = load i32, i32* %12, align 4
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = icmp sge i32 %242, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %241
  br label %300

248:                                              ; preds = %241
  %249 = load i32, i32* %14, align 4
  %250 = and i32 %249, 1
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %273

252:                                              ; preds = %248
  %253 = load i8, i8* %11, align 1
  %254 = zext i8 %253 to i32
  %255 = ashr i32 %254, 4
  %256 = trunc i32 %255 to i8
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = load i8**, i8*** %258, align 8
  %260 = getelementptr inbounds i8*, i8** %259, i64 0
  %261 = load i8*, i8** %260, align 8
  %262 = load i32, i32* %13, align 4
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  %267 = load i32, i32* %266, align 4
  %268 = mul nsw i32 %262, %267
  %269 = load i32, i32* %12, align 4
  %270 = add nsw i32 %268, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %261, i64 %271
  store i8 %256, i8* %272, align 1
  br label %294

273:                                              ; preds = %248
  %274 = load i8, i8* %11, align 1
  %275 = zext i8 %274 to i32
  %276 = and i32 %275, 15
  %277 = trunc i32 %276 to i8
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  %280 = load i8**, i8*** %279, align 8
  %281 = getelementptr inbounds i8*, i8** %280, i64 0
  %282 = load i8*, i8** %281, align 8
  %283 = load i32, i32* %13, align 4
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = mul nsw i32 %283, %288
  %290 = load i32, i32* %12, align 4
  %291 = add nsw i32 %289, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %282, i64 %292
  store i8 %277, i8* %293, align 1
  br label %294

294:                                              ; preds = %273, %252
  %295 = load i32, i32* %12, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %12, align 4
  br label %297

297:                                              ; preds = %294
  %298 = load i32, i32* %14, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %14, align 4
  br label %236

300:                                              ; preds = %247, %236
  br label %301

301:                                              ; preds = %300, %211
  br label %19

302:                                              ; preds = %28
  %303 = load i32*, i32** %7, align 8
  %304 = call signext i8 @bytestream2_get_bytes_left(i32* %303)
  %305 = icmp ne i8 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %302
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %308 = load i32, i32* @AV_LOG_ERROR, align 4
  %309 = load i32*, i32** %7, align 8
  %310 = call signext i8 @bytestream2_get_bytes_left(i32* %309)
  %311 = sext i8 %310 to i32
  %312 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %307, i32 %308, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %311)
  %313 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %313, i32* %4, align 4
  br label %315

314:                                              ; preds = %302
  store i32 0, i32* %4, align 4
  br label %315

315:                                              ; preds = %314, %306, %222, %116, %65, %35
  %316 = load i32, i32* %4, align 4
  ret i32 %316
}

declare dso_local signext i8 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, ...) #1

declare dso_local zeroext i8 @bytestream2_get_byteu(i32*) #1

declare dso_local zeroext i8 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
