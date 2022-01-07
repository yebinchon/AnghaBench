; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cyuv.c_cyuv_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cyuv.c_cyuv_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i8**, i32* }

@AV_CODEC_ID_AURA = common dso_local global i64 0, align 8
@AV_PIX_FMT_YUV411P = common dso_local global i32 0, align 4
@AV_PIX_FMT_UYVY422 = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"got a buffer with %d bytes when %d were expected\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32*, %struct.TYPE_11__*)* @cyuv_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyuv_decode_frame(%struct.TYPE_13__* %0, i8* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %10, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %12, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = bitcast i8* %41 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %13, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8* %44, i8** %20, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 16
  store i8* %46, i8** %21, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 32
  store i8* %48, i8** %22, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @FFALIGN(i32 %54, i32 2)
  %56 = mul nsw i32 %51, %55
  %57 = mul nsw i32 %56, 2
  store i32 %57, i32* %29, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AV_CODEC_ID_AURA, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %4
  %64 = load i8*, i8** %21, align 8
  store i8* %64, i8** %20, align 8
  %65 = load i8*, i8** %22, align 8
  store i8* %65, i8** %21, align 8
  br label %66

66:                                               ; preds = %63, %4
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %73, 3
  %75 = sdiv i32 %74, 4
  %76 = mul nsw i32 %70, %75
  %77 = add nsw i32 48, %76
  %78 = icmp eq i32 %67, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %66
  %80 = load i32, i32* @AV_PIX_FMT_YUV411P, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  br label %108

83:                                               ; preds = %66
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %29, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @AV_PIX_FMT_UYVY422, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  br label %107

91:                                               ; preds = %83
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %93 = load i32, i32* @AV_LOG_ERROR, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %100, 3
  %102 = sdiv i32 %101, 4
  %103 = mul nsw i32 %97, %102
  %104 = add nsw i32 48, %103
  %105 = call i32 @av_log(%struct.TYPE_13__* %92, i32 %93, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %104)
  %106 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %106, i32* %5, align 4
  br label %473

107:                                              ; preds = %87
  br label %108

108:                                              ; preds = %107, %79
  store i32 48, i32* %26, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %111 = call i32 @ff_get_buffer(%struct.TYPE_13__* %109, %struct.TYPE_12__* %110, i32 0)
  store i32 %111, i32* %30, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* %30, align 4
  store i32 %114, i32* %5, align 4
  br label %473

115:                                              ; preds = %108
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i8**, i8*** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 0
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %14, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %15, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i8**, i8*** %127, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 2
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %16, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %29, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %178

134:                                              ; preds = %115
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @FFALIGN(i32 %137, i32 2)
  %139 = mul nsw i32 %138, 2
  store i32 %139, i32* %31, align 4
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %144, %147
  %149 = load i8*, i8** %14, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8* %151, i8** %14, align 8
  store i32 0, i32* %26, align 4
  br label %152

152:                                              ; preds = %173, %134
  %153 = load i32, i32* %26, align 4
  %154 = load i32, i32* %29, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %177

156:                                              ; preds = %152
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = load i8*, i8** %14, align 8
  %163 = sext i32 %161 to i64
  %164 = sub i64 0, %163
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  store i8* %165, i8** %14, align 8
  %166 = load i8*, i8** %14, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = load i32, i32* %26, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i32, i32* %31, align 4
  %172 = call i32 @memcpy(i8* %166, i8* %170, i32 %171)
  br label %173

173:                                              ; preds = %156
  %174 = load i32, i32* %31, align 4
  %175 = load i32, i32* %26, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %26, align 4
  br label %152

177:                                              ; preds = %152
  br label %470

178:                                              ; preds = %115
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %179

179:                                              ; preds = %433, %178
  %180 = load i32, i32* %17, align 4
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 %183, %188
  %190 = icmp slt i32 %180, %189
  br i1 %190, label %191, label %469

191:                                              ; preds = %179
  %192 = load i8*, i8** %10, align 8
  %193 = load i32, i32* %26, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %26, align 4
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i8, i8* %192, i64 %195
  %197 = load i8, i8* %196, align 1
  store i8 %197, i8* %27, align 1
  %198 = load i8, i8* %27, align 1
  %199 = zext i8 %198 to i32
  %200 = and i32 %199, 240
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %24, align 1
  %202 = load i8*, i8** %15, align 8
  %203 = load i32, i32* %18, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %18, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  store i8 %201, i8* %206, align 1
  %207 = load i8, i8* %27, align 1
  %208 = zext i8 %207 to i32
  %209 = and i32 %208, 15
  %210 = shl i32 %209, 4
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %23, align 1
  %212 = load i8*, i8** %14, align 8
  %213 = load i32, i32* %17, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %17, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8, i8* %212, i64 %215
  store i8 %211, i8* %216, align 1
  %217 = load i8*, i8** %10, align 8
  %218 = load i32, i32* %26, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %26, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  %222 = load i8, i8* %221, align 1
  store i8 %222, i8* %27, align 1
  %223 = load i8, i8* %27, align 1
  %224 = zext i8 %223 to i32
  %225 = and i32 %224, 240
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %25, align 1
  %227 = load i8*, i8** %16, align 8
  %228 = load i32, i32* %19, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %19, align 4
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i8, i8* %227, i64 %230
  store i8 %226, i8* %231, align 1
  %232 = load i8*, i8** %20, align 8
  %233 = load i8, i8* %27, align 1
  %234 = zext i8 %233 to i32
  %235 = and i32 %234, 15
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %232, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = load i8, i8* %23, align 1
  %241 = zext i8 %240 to i32
  %242 = add nsw i32 %241, %239
  %243 = trunc i32 %242 to i8
  store i8 %243, i8* %23, align 1
  %244 = load i8, i8* %23, align 1
  %245 = load i8*, i8** %14, align 8
  %246 = load i32, i32* %17, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %17, align 4
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i8, i8* %245, i64 %248
  store i8 %244, i8* %249, align 1
  %250 = load i8*, i8** %10, align 8
  %251 = load i32, i32* %26, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %26, align 4
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i8, i8* %250, i64 %253
  %255 = load i8, i8* %254, align 1
  store i8 %255, i8* %27, align 1
  %256 = load i8*, i8** %20, align 8
  %257 = load i8, i8* %27, align 1
  %258 = zext i8 %257 to i32
  %259 = and i32 %258, 15
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %256, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = load i8, i8* %23, align 1
  %265 = zext i8 %264 to i32
  %266 = add nsw i32 %265, %263
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %23, align 1
  %268 = load i8, i8* %23, align 1
  %269 = load i8*, i8** %14, align 8
  %270 = load i32, i32* %17, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %17, align 4
  %272 = sext i32 %270 to i64
  %273 = getelementptr inbounds i8, i8* %269, i64 %272
  store i8 %268, i8* %273, align 1
  %274 = load i8*, i8** %20, align 8
  %275 = load i8, i8* %27, align 1
  %276 = zext i8 %275 to i32
  %277 = and i32 %276, 240
  %278 = ashr i32 %277, 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %274, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = load i8, i8* %23, align 1
  %284 = zext i8 %283 to i32
  %285 = add nsw i32 %284, %282
  %286 = trunc i32 %285 to i8
  store i8 %286, i8* %23, align 1
  %287 = load i8, i8* %23, align 1
  %288 = load i8*, i8** %14, align 8
  %289 = load i32, i32* %17, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %17, align 4
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds i8, i8* %288, i64 %291
  store i8 %287, i8* %292, align 1
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = sdiv i32 %295, 4
  %297 = sub nsw i32 %296, 1
  store i32 %297, i32* %28, align 4
  br label %298

298:                                              ; preds = %302, %191
  %299 = load i32, i32* %28, align 4
  %300 = add nsw i32 %299, -1
  store i32 %300, i32* %28, align 4
  %301 = icmp ne i32 %299, 0
  br i1 %301, label %302, label %432

302:                                              ; preds = %298
  %303 = load i8*, i8** %10, align 8
  %304 = load i32, i32* %26, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %26, align 4
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds i8, i8* %303, i64 %306
  %308 = load i8, i8* %307, align 1
  store i8 %308, i8* %27, align 1
  %309 = load i8*, i8** %21, align 8
  %310 = load i8, i8* %27, align 1
  %311 = zext i8 %310 to i32
  %312 = and i32 %311, 240
  %313 = ashr i32 %312, 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8, i8* %309, i64 %314
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = load i8, i8* %24, align 1
  %319 = zext i8 %318 to i32
  %320 = add nsw i32 %319, %317
  %321 = trunc i32 %320 to i8
  store i8 %321, i8* %24, align 1
  %322 = load i8, i8* %24, align 1
  %323 = load i8*, i8** %15, align 8
  %324 = load i32, i32* %18, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %18, align 4
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds i8, i8* %323, i64 %326
  store i8 %322, i8* %327, align 1
  %328 = load i8*, i8** %20, align 8
  %329 = load i8, i8* %27, align 1
  %330 = zext i8 %329 to i32
  %331 = and i32 %330, 15
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, i8* %328, i64 %332
  %334 = load i8, i8* %333, align 1
  %335 = sext i8 %334 to i32
  %336 = load i8, i8* %23, align 1
  %337 = zext i8 %336 to i32
  %338 = add nsw i32 %337, %335
  %339 = trunc i32 %338 to i8
  store i8 %339, i8* %23, align 1
  %340 = load i8, i8* %23, align 1
  %341 = load i8*, i8** %14, align 8
  %342 = load i32, i32* %17, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %17, align 4
  %344 = sext i32 %342 to i64
  %345 = getelementptr inbounds i8, i8* %341, i64 %344
  store i8 %340, i8* %345, align 1
  %346 = load i8*, i8** %10, align 8
  %347 = load i32, i32* %26, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %26, align 4
  %349 = sext i32 %347 to i64
  %350 = getelementptr inbounds i8, i8* %346, i64 %349
  %351 = load i8, i8* %350, align 1
  store i8 %351, i8* %27, align 1
  %352 = load i8*, i8** %22, align 8
  %353 = load i8, i8* %27, align 1
  %354 = zext i8 %353 to i32
  %355 = and i32 %354, 240
  %356 = ashr i32 %355, 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i8, i8* %352, i64 %357
  %359 = load i8, i8* %358, align 1
  %360 = sext i8 %359 to i32
  %361 = load i8, i8* %25, align 1
  %362 = zext i8 %361 to i32
  %363 = add nsw i32 %362, %360
  %364 = trunc i32 %363 to i8
  store i8 %364, i8* %25, align 1
  %365 = load i8, i8* %25, align 1
  %366 = load i8*, i8** %16, align 8
  %367 = load i32, i32* %19, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %19, align 4
  %369 = sext i32 %367 to i64
  %370 = getelementptr inbounds i8, i8* %366, i64 %369
  store i8 %365, i8* %370, align 1
  %371 = load i8*, i8** %20, align 8
  %372 = load i8, i8* %27, align 1
  %373 = zext i8 %372 to i32
  %374 = and i32 %373, 15
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i8, i8* %371, i64 %375
  %377 = load i8, i8* %376, align 1
  %378 = sext i8 %377 to i32
  %379 = load i8, i8* %23, align 1
  %380 = zext i8 %379 to i32
  %381 = add nsw i32 %380, %378
  %382 = trunc i32 %381 to i8
  store i8 %382, i8* %23, align 1
  %383 = load i8, i8* %23, align 1
  %384 = load i8*, i8** %14, align 8
  %385 = load i32, i32* %17, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %17, align 4
  %387 = sext i32 %385 to i64
  %388 = getelementptr inbounds i8, i8* %384, i64 %387
  store i8 %383, i8* %388, align 1
  %389 = load i8*, i8** %10, align 8
  %390 = load i32, i32* %26, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %26, align 4
  %392 = sext i32 %390 to i64
  %393 = getelementptr inbounds i8, i8* %389, i64 %392
  %394 = load i8, i8* %393, align 1
  store i8 %394, i8* %27, align 1
  %395 = load i8*, i8** %20, align 8
  %396 = load i8, i8* %27, align 1
  %397 = zext i8 %396 to i32
  %398 = and i32 %397, 15
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, i8* %395, i64 %399
  %401 = load i8, i8* %400, align 1
  %402 = sext i8 %401 to i32
  %403 = load i8, i8* %23, align 1
  %404 = zext i8 %403 to i32
  %405 = add nsw i32 %404, %402
  %406 = trunc i32 %405 to i8
  store i8 %406, i8* %23, align 1
  %407 = load i8, i8* %23, align 1
  %408 = load i8*, i8** %14, align 8
  %409 = load i32, i32* %17, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %17, align 4
  %411 = sext i32 %409 to i64
  %412 = getelementptr inbounds i8, i8* %408, i64 %411
  store i8 %407, i8* %412, align 1
  %413 = load i8*, i8** %20, align 8
  %414 = load i8, i8* %27, align 1
  %415 = zext i8 %414 to i32
  %416 = and i32 %415, 240
  %417 = ashr i32 %416, 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i8, i8* %413, i64 %418
  %420 = load i8, i8* %419, align 1
  %421 = sext i8 %420 to i32
  %422 = load i8, i8* %23, align 1
  %423 = zext i8 %422 to i32
  %424 = add nsw i32 %423, %421
  %425 = trunc i32 %424 to i8
  store i8 %425, i8* %23, align 1
  %426 = load i8, i8* %23, align 1
  %427 = load i8*, i8** %14, align 8
  %428 = load i32, i32* %17, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %17, align 4
  %430 = sext i32 %428 to i64
  %431 = getelementptr inbounds i8, i8* %427, i64 %430
  store i8 %426, i8* %431, align 1
  br label %298

432:                                              ; preds = %298
  br label %433

433:                                              ; preds = %432
  %434 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 1
  %436 = load i32*, i32** %435, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 0
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %440 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = sub nsw i32 %438, %441
  %443 = load i32, i32* %17, align 4
  %444 = add nsw i32 %443, %442
  store i32 %444, i32* %17, align 4
  %445 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %446 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %445, i32 0, i32 1
  %447 = load i32*, i32** %446, align 8
  %448 = getelementptr inbounds i32, i32* %447, i64 1
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %451 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = sdiv i32 %452, 4
  %454 = sub nsw i32 %449, %453
  %455 = load i32, i32* %18, align 4
  %456 = add nsw i32 %455, %454
  store i32 %456, i32* %18, align 4
  %457 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %458 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %457, i32 0, i32 1
  %459 = load i32*, i32** %458, align 8
  %460 = getelementptr inbounds i32, i32* %459, i64 2
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %463 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = sdiv i32 %464, 4
  %466 = sub nsw i32 %461, %465
  %467 = load i32, i32* %19, align 4
  %468 = add nsw i32 %467, %466
  store i32 %468, i32* %19, align 4
  br label %179

469:                                              ; preds = %179
  br label %470

470:                                              ; preds = %469, %177
  %471 = load i32*, i32** %8, align 8
  store i32 1, i32* %471, align 4
  %472 = load i32, i32* %11, align 4
  store i32 %472, i32* %5, align 4
  br label %473

473:                                              ; preds = %470, %113, %91
  %474 = load i32, i32* %5, align 4
  ret i32 %474
}

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
