; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_avrndec.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_avrndec.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, i32, i32*, i32, i64*, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"packet too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_13__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %11, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %12, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %150

35:                                               ; preds = %4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %42 = call i32 @avcodec_decode_video2(%struct.TYPE_16__* %38, i8* %39, i32* %40, %struct.TYPE_13__* %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %141

45:                                               ; preds = %35
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %141

49:                                               ; preds = %45
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sle i32 %52, %55
  br i1 %56, label %57, label %141

57:                                               ; preds = %49
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sle i32 %60, %63
  br i1 %64, label %65, label %141

65:                                               ; preds = %57
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %17, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @av_pix_fmt_get_chroma_sub_sample(i32 %75, i32* %18, i32* %19)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %17, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 4
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, %84
  store i64 %90, i64* %88, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 4
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %130

97:                                               ; preds = %65
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %19, align 4
  %105 = ashr i32 %103, %104
  %106 = mul nsw i32 %102, %105
  %107 = sext i32 %106 to i64
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 4
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, %107
  store i64 %113, i64* %111, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %19, align 4
  %121 = ashr i32 %119, %120
  %122 = mul nsw i32 %118, %121
  %123 = sext i32 %122 to i64
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 4
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 2
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, %123
  store i64 %129, i64* %127, align 8
  br label %130

130:                                              ; preds = %97, %65
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %130, %57, %49, %45, %35
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %15, align 4
  store i32 %149, i32* %5, align 4
  br label %335

150:                                              ; preds = %4
  %151 = load i32, i32* %13, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 2, %154
  %156 = sdiv i32 %151, %155
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 2, %160
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %161, %164
  %166 = icmp slt i32 %157, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %150
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %169 = load i32, i32* @AV_LOG_ERROR, align 4
  %170 = call i32 @av_log(%struct.TYPE_15__* %168, i32 %169, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %171 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %171, i32* %5, align 4
  br label %335

172:                                              ; preds = %150
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %175 = call i32 @ff_get_buffer(%struct.TYPE_15__* %173, %struct.TYPE_14__* %174, i32 0)
  store i32 %175, i32* %15, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = load i32, i32* %15, align 4
  store i32 %178, i32* %5, align 4
  br label %335

179:                                              ; preds = %172
  %180 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 5
  store i32 %180, i32* %182, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 3
  store i32 1, i32* %184, align 8
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %280

189:                                              ; preds = %179
  %190 = load i32, i32* %16, align 4
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sub nsw i32 %190, %193
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = mul nsw i32 %194, %197
  %199 = load i32*, i32** %12, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32* %201, i32** %12, align 8
  store i32 0, i32* %14, align 4
  br label %202

202:                                              ; preds = %276, %189
  %203 = load i32, i32* %14, align 4
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %206, 1
  %208 = icmp slt i32 %203, %207
  br i1 %208, label %209, label %279

209:                                              ; preds = %202
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 4
  %212 = load i64*, i64** %211, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 0
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* %14, align 4
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %215, %218
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = mul nsw i32 %219, %224
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %214, %226
  %228 = load i32*, i32** %12, align 8
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = mul nsw i32 2, %231
  %233 = call i32 @memcpy(i64 %227, i32* %228, i32 %232)
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 4
  %236 = load i64*, i64** %235, align 8
  %237 = getelementptr inbounds i64, i64* %236, i64 0
  %238 = load i64, i64* %237, align 8
  %239 = load i32, i32* %14, align 4
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 0
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  %246 = add nsw i32 %239, %245
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = mul nsw i32 %246, %251
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %238, %253
  %255 = load i32*, i32** %12, align 8
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %16, align 4
  %260 = mul nsw i32 %258, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %255, i64 %261
  %263 = getelementptr inbounds i32, i32* %262, i64 4
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = mul nsw i32 2, %266
  %268 = call i32 @memcpy(i64 %254, i32* %263, i32 %267)
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = mul nsw i32 2, %271
  %273 = load i32*, i32** %12, align 8
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32* %275, i32** %12, align 8
  br label %276

276:                                              ; preds = %209
  %277 = load i32, i32* %14, align 4
  %278 = add nsw i32 %277, 2
  store i32 %278, i32* %14, align 4
  br label %202

279:                                              ; preds = %202
  br label %332

280:                                              ; preds = %179
  %281 = load i32, i32* %16, align 4
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = sub nsw i32 %281, %284
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = mul nsw i32 %285, %288
  %290 = mul nsw i32 %289, 2
  %291 = load i32*, i32** %12, align 8
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  store i32* %293, i32** %12, align 8
  store i32 0, i32* %14, align 4
  br label %294

294:                                              ; preds = %328, %280
  %295 = load i32, i32* %14, align 4
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = icmp slt i32 %295, %298
  br i1 %299, label %300, label %331

300:                                              ; preds = %294
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 4
  %303 = load i64*, i64** %302, align 8
  %304 = getelementptr inbounds i64, i64* %303, i64 0
  %305 = load i64, i64* %304, align 8
  %306 = load i32, i32* %14, align 4
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 2
  %309 = load i32*, i32** %308, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 0
  %311 = load i32, i32* %310, align 4
  %312 = mul nsw i32 %306, %311
  %313 = sext i32 %312 to i64
  %314 = add nsw i64 %305, %313
  %315 = load i32*, i32** %12, align 8
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = mul nsw i32 2, %318
  %320 = call i32 @memcpy(i64 %314, i32* %315, i32 %319)
  %321 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = mul nsw i32 2, %323
  %325 = load i32*, i32** %12, align 8
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds i32, i32* %325, i64 %326
  store i32* %327, i32** %12, align 8
  br label %328

328:                                              ; preds = %300
  %329 = load i32, i32* %14, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %14, align 4
  br label %294

331:                                              ; preds = %294
  br label %332

332:                                              ; preds = %331, %279
  %333 = load i32*, i32** %8, align 8
  store i32 1, i32* %333, align 4
  %334 = load i32, i32* %13, align 4
  store i32 %334, i32* %5, align 4
  br label %335

335:                                              ; preds = %332, %177, %167, %141
  %336 = load i32, i32* %5, align 4
  ret i32 %336
}

declare dso_local i32 @avcodec_decode_video2(%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @av_pix_fmt_get_chroma_sub_sample(i32, i32*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
