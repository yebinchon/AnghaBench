; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_encode_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_encode_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32**, i32**, i32*, i32*, i32*, i32*, i32, i32, i32*, i32, i32, i64 }
%struct.TYPE_12__ = type { i32*, i64*, i32 }

@MAX_STORED_Q = common dso_local global i32 0, align 4
@CFACTOR_Y444 = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Underestimated required buffer size.\0A\00", align 1
@AVERROR_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i32*, i32*, i32, i32, i32, i32)* @encode_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_slice(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %18, align 8
  store i32 0, i32* %22, align 4
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @av_log2(i32 %36)
  store i32 %37, i32* %24, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %8
  store i32 0, i32* %27, align 4
  br label %54

43:                                               ; preds = %8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = xor i32 %46, %52
  store i32 %53, i32* %27, align 4
  br label %54

54:                                               ; preds = %43, %42
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 13
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load i32**, i32*** %61, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %31, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 0
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %32, align 8
  br label %131

70:                                               ; preds = %54
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* @MAX_STORED_Q, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %31, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %32, align 8
  br label %130

89:                                               ; preds = %70
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %31, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %32, align 8
  store i32 0, i32* %19, align 4
  br label %96

96:                                               ; preds = %126, %89
  %97 = load i32, i32* %19, align 4
  %98 = icmp slt i32 %97, 64
  br i1 %98, label %99, label %129

99:                                               ; preds = %96
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %19, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %16, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32*, i32** %31, align 8
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 7
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %19, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %16, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32*, i32** %32, align 8
  %123 = load i32, i32* %19, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %121, i32* %125, align 4
  br label %126

126:                                              ; preds = %99
  %127 = load i32, i32* %19, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %19, align 4
  br label %96

129:                                              ; preds = %96
  br label %130

130:                                              ; preds = %129, %74
  br label %131

131:                                              ; preds = %130, %59
  store i32 0, i32* %19, align 4
  br label %132

132:                                              ; preds = %347, %131
  %133 = load i32, i32* %19, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %350

138:                                              ; preds = %132
  %139 = load i32, i32* %19, align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %19, align 4
  %143 = icmp eq i32 %142, 2
  br label %144

144:                                              ; preds = %141, %138
  %145 = phi i1 [ true, %138 ], [ %143, %141 ]
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %30, align 4
  %147 = load i32, i32* %24, align 4
  %148 = add nsw i32 %147, 2
  store i32 %148, i32* %29, align 4
  %149 = load i32, i32* %30, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 9
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %154, 3
  %156 = load i32, i32* %29, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %29, align 4
  br label %158

158:                                              ; preds = %151, %144
  %159 = load i32, i32* %30, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 9
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @CFACTOR_Y444, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %161, %158
  %168 = load i32, i32* %14, align 4
  %169 = shl i32 %168, 4
  store i32 %169, i32* %20, align 4
  %170 = load i32, i32* %15, align 4
  %171 = shl i32 %170, 4
  store i32 %171, i32* %21, align 4
  store i32 4, i32* %25, align 4
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %26, align 4
  br label %184

175:                                              ; preds = %161
  %176 = load i32, i32* %14, align 4
  %177 = shl i32 %176, 3
  store i32 %177, i32* %20, align 4
  %178 = load i32, i32* %15, align 4
  %179 = shl i32 %178, 4
  store i32 %179, i32* %21, align 4
  store i32 2, i32* %25, align 4
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = ashr i32 %182, 1
  store i32 %183, i32* %26, align 4
  br label %184

184:                                              ; preds = %175, %167
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %19, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = mul nsw i32 %191, %194
  store i32 %195, i32* %28, align 4
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %19, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* %21, align 4
  %204 = load i32, i32* %28, align 4
  %205 = mul nsw i32 %203, %204
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %202, %206
  %208 = load i32, i32* %27, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %19, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %208, %215
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %207, %217
  %219 = inttoptr i64 %218 to i32*
  %220 = load i32, i32* %20, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32* %222, i32** %23, align 8
  %223 = load i32, i32* %19, align 4
  %224 = icmp slt i32 %223, 3
  br i1 %224, label %225, label %292

225:                                              ; preds = %184
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %227 = load i32*, i32** %23, align 8
  %228 = load i32, i32* %28, align 4
  %229 = load i32, i32* %20, align 4
  %230 = load i32, i32* %21, align 4
  %231 = load i32, i32* %26, align 4
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = sdiv i32 %234, %237
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 10
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 12
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %17, align 4
  %248 = load i32, i32* %25, align 4
  %249 = load i32, i32* %30, align 4
  %250 = call i32 @get_slice_data(%struct.TYPE_11__* %226, i32* %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %238, i32 %243, i32 %246, i32 %247, i32 %248, i32 %249)
  %251 = load i32, i32* %30, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %272, label %253

253:                                              ; preds = %225
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %255 = load i32*, i32** %12, align 8
  %256 = load i32*, i32** %23, align 8
  %257 = load i32, i32* %28, align 4
  %258 = load i32, i32* %17, align 4
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 10
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %25, align 4
  %265 = load i32, i32* %29, align 4
  %266 = load i32*, i32** %31, align 8
  %267 = call i32 @encode_slice_plane(%struct.TYPE_11__* %254, i32* %255, i32* %256, i32 %257, i32 %258, i32 %263, i32 %264, i32 %265, i32* %266)
  %268 = load i32*, i32** %13, align 8
  %269 = load i32, i32* %19, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  store i32 %267, i32* %271, align 4
  br label %291

272:                                              ; preds = %225
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %274 = load i32*, i32** %12, align 8
  %275 = load i32*, i32** %23, align 8
  %276 = load i32, i32* %28, align 4
  %277 = load i32, i32* %17, align 4
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 10
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %25, align 4
  %284 = load i32, i32* %29, align 4
  %285 = load i32*, i32** %32, align 8
  %286 = call i32 @encode_slice_plane(%struct.TYPE_11__* %273, i32* %274, i32* %275, i32 %276, i32 %277, i32 %282, i32 %283, i32 %284, i32* %285)
  %287 = load i32*, i32** %13, align 8
  %288 = load i32, i32* %19, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  store i32 %286, i32* %290, align 4
  br label %291

291:                                              ; preds = %272, %253
  br label %330

292:                                              ; preds = %184
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %294 = load i32*, i32** %23, align 8
  %295 = load i32, i32* %28, align 4
  %296 = load i32, i32* %20, align 4
  %297 = load i32, i32* %21, align 4
  %298 = load i32, i32* %26, align 4
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = sdiv i32 %301, %304
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 10
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 0
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* %17, align 4
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 11
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @get_alpha_data(%struct.TYPE_11__* %293, i32* %294, i32 %295, i32 %296, i32 %297, i32 %298, i32 %305, i32 %310, i32 %311, i32 %314)
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %317 = load i32*, i32** %12, align 8
  %318 = load i32, i32* %17, align 4
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 10
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 0
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %16, align 4
  %325 = call i32 @encode_alpha_plane(%struct.TYPE_11__* %316, i32* %317, i32 %318, i32 %323, i32 %324)
  %326 = load i32*, i32** %13, align 8
  %327 = load i32, i32* %19, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  store i32 %325, i32* %329, align 4
  br label %330

330:                                              ; preds = %292, %291
  %331 = load i32*, i32** %13, align 8
  %332 = load i32, i32* %19, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %22, align 4
  %337 = add nsw i32 %336, %335
  store i32 %337, i32* %22, align 4
  %338 = load i32*, i32** %12, align 8
  %339 = call i64 @put_bits_left(i32* %338)
  %340 = icmp slt i64 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %330
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %343 = load i32, i32* @AV_LOG_ERROR, align 4
  %344 = call i32 @av_log(%struct.TYPE_13__* %342, i32 %343, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %345 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %345, i32* %9, align 4
  br label %352

346:                                              ; preds = %330
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %19, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %19, align 4
  br label %132

350:                                              ; preds = %132
  %351 = load i32, i32* %22, align 4
  store i32 %351, i32* %9, align 4
  br label %352

352:                                              ; preds = %350, %341
  %353 = load i32, i32* %9, align 4
  ret i32 %353
}

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @get_slice_data(%struct.TYPE_11__*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @encode_slice_plane(%struct.TYPE_11__*, i32*, i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @get_alpha_data(%struct.TYPE_11__*, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @encode_alpha_plane(%struct.TYPE_11__*, i32*, i32, i32, i32) #1

declare dso_local i64 @put_bits_left(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
