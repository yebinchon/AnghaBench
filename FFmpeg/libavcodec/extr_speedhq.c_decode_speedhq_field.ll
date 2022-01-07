; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_speedhq.c_decode_speedhq_field.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_speedhq.c_decode_speedhq_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32*, i32, i32, i32** }

@SHQ_NO_ALPHA = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@__const.decode_speedhq_field.last_dc = private unnamed_addr constant [4 x i32] [i32 1024, i32 1024, i32 1024, i32 1024], align 16
@SHQ_SUBSAMPLING_420 = common dso_local global i64 0, align 8
@SHQ_SUBSAMPLING_444 = common dso_local global i64 0, align 8
@SHQ_RLE_ALPHA = common dso_local global i64 0, align 8
@SHQ_DCT_ALPHA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32, %struct.TYPE_8__*, i32, i32, i32, i32)* @decode_speedhq_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_speedhq_field(%struct.TYPE_7__* %0, i32* %1, i32 %2, %struct.TYPE_8__* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [5 x i32], align 16
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
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca [4 x i32], align 16
  %37 = alloca [16 x i32], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %17, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* %21, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %17, align 4
  %51 = mul nsw i32 %49, %50
  store i32 %51, i32* %22, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %17, align 4
  %58 = mul nsw i32 %56, %57
  store i32 %58, i32* %23, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SHQ_NO_ALPHA, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %17, align 4
  %71 = mul nsw i32 %69, %70
  store i32 %71, i32* %24, align 4
  br label %72

72:                                               ; preds = %64, %8
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %15, align 4
  %79 = sub nsw i32 %77, %78
  %80 = icmp slt i32 %79, 3
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81, %76, %72
  %86 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %86, i32* %9, align 4
  br label %553

87:                                               ; preds = %81
  %88 = load i32, i32* %15, align 4
  %89 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 0
  store i32 %88, i32* %89, align 16
  %90 = load i32, i32* %16, align 4
  %91 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 4
  store i32 %90, i32* %91, align 16
  store i32 1, i32* %19, align 4
  br label %92

92:                                               ; preds = %125, %87
  %93 = load i32, i32* %19, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %128

95:                                               ; preds = %92
  %96 = load i32, i32* %19, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %25, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %25, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i32 @AV_RL24(i32* %104)
  store i32 %105, i32* %26, align 4
  %106 = load i32, i32* %25, align 4
  %107 = load i32, i32* %26, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %19, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 %110
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* %26, align 4
  %113 = icmp slt i32 %112, 3
  br i1 %113, label %122, label %114

114:                                              ; preds = %95
  %115 = load i32, i32* %19, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %16, align 4
  %120 = sub nsw i32 %119, 3
  %121 = icmp sgt i32 %118, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %114, %95
  %123 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %123, i32* %9, align 4
  br label %553

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %19, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %19, align 4
  br label %92

128:                                              ; preds = %92
  store i32 0, i32* %19, align 4
  br label %129

129:                                              ; preds = %549, %128
  %130 = load i32, i32* %19, align 4
  %131 = icmp slt i32 %130, 4
  br i1 %131, label %132, label %552

132:                                              ; preds = %129
  %133 = load i32, i32* %19, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %28, align 4
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %29, align 4
  %142 = load i32*, i32** %11, align 8
  %143 = load i32, i32* %28, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = getelementptr inbounds i32, i32* %145, i64 3
  %147 = load i32, i32* %29, align 4
  %148 = load i32, i32* %28, align 4
  %149 = sub nsw i32 %147, %148
  %150 = sub nsw i32 %149, 3
  %151 = call i32 @init_get_bits8(i32* %27, i32* %146, i32 %150)
  store i32 %151, i32* %18, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %132
  %154 = load i32, i32* %18, align 4
  store i32 %154, i32* %9, align 4
  br label %553

155:                                              ; preds = %132
  %156 = load i32, i32* %19, align 4
  %157 = mul nsw i32 %156, 16
  %158 = load i32, i32* %17, align 4
  %159 = mul nsw i32 %157, %158
  store i32 %159, i32* %31, align 4
  br label %160

160:                                              ; preds = %543, %155
  %161 = load i32, i32* %31, align 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %548

166:                                              ; preds = %160
  %167 = bitcast [4 x i32]* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %167, i8* align 16 bitcast ([4 x i32]* @__const.decode_speedhq_field.last_dc to i8*), i64 16, i1 false)
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %37, i64 0, i64 0
  %169 = call i32 @memset(i32* %168, i32 255, i32 64)
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 3
  %172 = load i32**, i32*** %171, align 8
  %173 = getelementptr inbounds i32*, i32** %172, i64 0
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %31, align 4
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %180, %181
  %183 = mul nsw i32 %179, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %174, i64 %184
  store i32* %185, i32** %32, align 8
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @SHQ_SUBSAMPLING_420, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %226

191:                                              ; preds = %166
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 3
  %194 = load i32**, i32*** %193, align 8
  %195 = getelementptr inbounds i32*, i32** %194, i64 1
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %31, align 4
  %203 = sdiv i32 %202, 2
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %203, %204
  %206 = mul nsw i32 %201, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %196, i64 %207
  store i32* %208, i32** %33, align 8
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 3
  %211 = load i32**, i32*** %210, align 8
  %212 = getelementptr inbounds i32*, i32** %211, i64 2
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 2
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %31, align 4
  %220 = sdiv i32 %219, 2
  %221 = load i32, i32* %14, align 4
  %222 = add nsw i32 %220, %221
  %223 = mul nsw i32 %218, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %213, i64 %224
  store i32* %225, i32** %34, align 8
  br label %259

226:                                              ; preds = %166
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 3
  %229 = load i32**, i32*** %228, align 8
  %230 = getelementptr inbounds i32*, i32** %229, i64 1
  %231 = load i32*, i32** %230, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %31, align 4
  %238 = load i32, i32* %14, align 4
  %239 = add nsw i32 %237, %238
  %240 = mul nsw i32 %236, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %231, i64 %241
  store i32* %242, i32** %33, align 8
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 3
  %245 = load i32**, i32*** %244, align 8
  %246 = getelementptr inbounds i32*, i32** %245, i64 2
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 2
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %31, align 4
  %254 = load i32, i32* %14, align 4
  %255 = add nsw i32 %253, %254
  %256 = mul nsw i32 %252, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %247, i64 %257
  store i32* %258, i32** %34, align 8
  br label %259

259:                                              ; preds = %226, %191
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @SHQ_NO_ALPHA, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %282

265:                                              ; preds = %259
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 3
  %268 = load i32**, i32*** %267, align 8
  %269 = getelementptr inbounds i32*, i32** %268, i64 3
  %270 = load i32*, i32** %269, align 8
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 3
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %31, align 4
  %277 = load i32, i32* %14, align 4
  %278 = add nsw i32 %276, %277
  %279 = mul nsw i32 %275, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %270, i64 %280
  store i32* %281, i32** %35, align 8
  br label %282

282:                                              ; preds = %265, %259
  store i32 0, i32* %30, align 4
  br label %283

283:                                              ; preds = %539, %282
  %284 = load i32, i32* %30, align 4
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = icmp slt i32 %284, %287
  br i1 %288, label %289, label %542

289:                                              ; preds = %283
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %291 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %292 = load i32*, i32** %32, align 8
  %293 = load i32, i32* %21, align 4
  %294 = call i32 @decode_dct_block(%struct.TYPE_7__* %290, i32* %27, i32* %291, i32 0, i32* %292, i32 %293)
  store i32 %294, i32* %18, align 4
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %289
  %297 = load i32, i32* %18, align 4
  store i32 %297, i32* %9, align 4
  br label %553

298:                                              ; preds = %289
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %300 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %301 = load i32*, i32** %32, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 8
  %303 = load i32, i32* %21, align 4
  %304 = call i32 @decode_dct_block(%struct.TYPE_7__* %299, i32* %27, i32* %300, i32 0, i32* %302, i32 %303)
  store i32 %304, i32* %18, align 4
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %298
  %307 = load i32, i32* %18, align 4
  store i32 %307, i32* %9, align 4
  br label %553

308:                                              ; preds = %298
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %310 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %311 = load i32*, i32** %32, align 8
  %312 = load i32, i32* %21, align 4
  %313 = mul nsw i32 8, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %311, i64 %314
  %316 = load i32, i32* %21, align 4
  %317 = call i32 @decode_dct_block(%struct.TYPE_7__* %309, i32* %27, i32* %310, i32 0, i32* %315, i32 %316)
  store i32 %317, i32* %18, align 4
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %308
  %320 = load i32, i32* %18, align 4
  store i32 %320, i32* %9, align 4
  br label %553

321:                                              ; preds = %308
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %323 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %324 = load i32*, i32** %32, align 8
  %325 = load i32, i32* %21, align 4
  %326 = mul nsw i32 8, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %324, i64 %327
  %329 = getelementptr inbounds i32, i32* %328, i64 8
  %330 = load i32, i32* %21, align 4
  %331 = call i32 @decode_dct_block(%struct.TYPE_7__* %322, i32* %27, i32* %323, i32 0, i32* %329, i32 %330)
  store i32 %331, i32* %18, align 4
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %321
  %334 = load i32, i32* %18, align 4
  store i32 %334, i32* %9, align 4
  br label %553

335:                                              ; preds = %321
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %337 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %338 = load i32*, i32** %33, align 8
  %339 = load i32, i32* %22, align 4
  %340 = call i32 @decode_dct_block(%struct.TYPE_7__* %336, i32* %27, i32* %337, i32 1, i32* %338, i32 %339)
  store i32 %340, i32* %18, align 4
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %335
  %343 = load i32, i32* %18, align 4
  store i32 %343, i32* %9, align 4
  br label %553

344:                                              ; preds = %335
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %346 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %347 = load i32*, i32** %34, align 8
  %348 = load i32, i32* %23, align 4
  %349 = call i32 @decode_dct_block(%struct.TYPE_7__* %345, i32* %27, i32* %346, i32 2, i32* %347, i32 %348)
  store i32 %349, i32* %18, align 4
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %353

351:                                              ; preds = %344
  %352 = load i32, i32* %18, align 4
  store i32 %352, i32* %9, align 4
  br label %553

353:                                              ; preds = %344
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @SHQ_SUBSAMPLING_420, align 8
  %358 = icmp ne i64 %356, %357
  br i1 %358, label %359, label %445

359:                                              ; preds = %353
  %360 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %361 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %362 = load i32*, i32** %33, align 8
  %363 = load i32, i32* %22, align 4
  %364 = mul nsw i32 8, %363
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %362, i64 %365
  %367 = load i32, i32* %22, align 4
  %368 = call i32 @decode_dct_block(%struct.TYPE_7__* %360, i32* %27, i32* %361, i32 1, i32* %366, i32 %367)
  store i32 %368, i32* %18, align 4
  %369 = icmp slt i32 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %359
  %371 = load i32, i32* %18, align 4
  store i32 %371, i32* %9, align 4
  br label %553

372:                                              ; preds = %359
  %373 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %374 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %375 = load i32*, i32** %34, align 8
  %376 = load i32, i32* %23, align 4
  %377 = mul nsw i32 8, %376
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %375, i64 %378
  %380 = load i32, i32* %23, align 4
  %381 = call i32 @decode_dct_block(%struct.TYPE_7__* %373, i32* %27, i32* %374, i32 2, i32* %379, i32 %380)
  store i32 %381, i32* %18, align 4
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %372
  %384 = load i32, i32* %18, align 4
  store i32 %384, i32* %9, align 4
  br label %553

385:                                              ; preds = %372
  %386 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %387 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i32 0, i32 1
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* @SHQ_SUBSAMPLING_444, align 8
  %390 = icmp eq i64 %388, %389
  br i1 %390, label %391, label %444

391:                                              ; preds = %385
  %392 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %393 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %394 = load i32*, i32** %33, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 8
  %396 = load i32, i32* %22, align 4
  %397 = call i32 @decode_dct_block(%struct.TYPE_7__* %392, i32* %27, i32* %393, i32 1, i32* %395, i32 %396)
  store i32 %397, i32* %18, align 4
  %398 = icmp slt i32 %397, 0
  br i1 %398, label %399, label %401

399:                                              ; preds = %391
  %400 = load i32, i32* %18, align 4
  store i32 %400, i32* %9, align 4
  br label %553

401:                                              ; preds = %391
  %402 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %403 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %404 = load i32*, i32** %34, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 8
  %406 = load i32, i32* %23, align 4
  %407 = call i32 @decode_dct_block(%struct.TYPE_7__* %402, i32* %27, i32* %403, i32 2, i32* %405, i32 %406)
  store i32 %407, i32* %18, align 4
  %408 = icmp slt i32 %407, 0
  br i1 %408, label %409, label %411

409:                                              ; preds = %401
  %410 = load i32, i32* %18, align 4
  store i32 %410, i32* %9, align 4
  br label %553

411:                                              ; preds = %401
  %412 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %413 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %414 = load i32*, i32** %33, align 8
  %415 = load i32, i32* %22, align 4
  %416 = mul nsw i32 8, %415
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %414, i64 %417
  %419 = getelementptr inbounds i32, i32* %418, i64 8
  %420 = load i32, i32* %22, align 4
  %421 = call i32 @decode_dct_block(%struct.TYPE_7__* %412, i32* %27, i32* %413, i32 1, i32* %419, i32 %420)
  store i32 %421, i32* %18, align 4
  %422 = icmp slt i32 %421, 0
  br i1 %422, label %423, label %425

423:                                              ; preds = %411
  %424 = load i32, i32* %18, align 4
  store i32 %424, i32* %9, align 4
  br label %553

425:                                              ; preds = %411
  %426 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %427 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %428 = load i32*, i32** %34, align 8
  %429 = load i32, i32* %23, align 4
  %430 = mul nsw i32 8, %429
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %428, i64 %431
  %433 = getelementptr inbounds i32, i32* %432, i64 8
  %434 = load i32, i32* %23, align 4
  %435 = call i32 @decode_dct_block(%struct.TYPE_7__* %426, i32* %27, i32* %427, i32 2, i32* %433, i32 %434)
  store i32 %435, i32* %18, align 4
  %436 = icmp slt i32 %435, 0
  br i1 %436, label %437, label %439

437:                                              ; preds = %425
  %438 = load i32, i32* %18, align 4
  store i32 %438, i32* %9, align 4
  br label %553

439:                                              ; preds = %425
  %440 = load i32*, i32** %33, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 8
  store i32* %441, i32** %33, align 8
  %442 = load i32*, i32** %34, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 8
  store i32* %443, i32** %34, align 8
  br label %444

444:                                              ; preds = %439, %385
  br label %445

445:                                              ; preds = %444, %353
  %446 = load i32*, i32** %32, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 16
  store i32* %447, i32** %32, align 8
  %448 = load i32*, i32** %33, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 8
  store i32* %449, i32** %33, align 8
  %450 = load i32*, i32** %34, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 8
  store i32* %451, i32** %34, align 8
  %452 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %453 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %452, i32 0, i32 0
  %454 = load i64, i64* %453, align 8
  %455 = load i64, i64* @SHQ_RLE_ALPHA, align 8
  %456 = icmp eq i64 %454, %455
  br i1 %456, label %457, label %482

457:                                              ; preds = %445
  %458 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %459 = getelementptr inbounds [16 x i32], [16 x i32]* %37, i64 0, i64 0
  %460 = load i32*, i32** %35, align 8
  %461 = load i32, i32* %24, align 4
  %462 = call i32 @decode_alpha_block(%struct.TYPE_7__* %458, i32* %27, i32* %459, i32* %460, i32 %461)
  store i32 %462, i32* %18, align 4
  %463 = icmp slt i32 %462, 0
  br i1 %463, label %464, label %466

464:                                              ; preds = %457
  %465 = load i32, i32* %18, align 4
  store i32 %465, i32* %9, align 4
  br label %553

466:                                              ; preds = %457
  %467 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %468 = getelementptr inbounds [16 x i32], [16 x i32]* %37, i64 0, i64 0
  %469 = load i32*, i32** %35, align 8
  %470 = load i32, i32* %24, align 4
  %471 = mul nsw i32 8, %470
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %469, i64 %472
  %474 = load i32, i32* %24, align 4
  %475 = call i32 @decode_alpha_block(%struct.TYPE_7__* %467, i32* %27, i32* %468, i32* %473, i32 %474)
  store i32 %475, i32* %18, align 4
  %476 = icmp slt i32 %475, 0
  br i1 %476, label %477, label %479

477:                                              ; preds = %466
  %478 = load i32, i32* %18, align 4
  store i32 %478, i32* %9, align 4
  br label %553

479:                                              ; preds = %466
  %480 = load i32*, i32** %35, align 8
  %481 = getelementptr inbounds i32, i32* %480, i64 16
  store i32* %481, i32** %35, align 8
  br label %538

482:                                              ; preds = %445
  %483 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %484 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %483, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = load i64, i64* @SHQ_DCT_ALPHA, align 8
  %487 = icmp eq i64 %485, %486
  br i1 %487, label %488, label %537

488:                                              ; preds = %482
  %489 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %490 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %491 = load i32*, i32** %35, align 8
  %492 = load i32, i32* %24, align 4
  %493 = call i32 @decode_dct_block(%struct.TYPE_7__* %489, i32* %27, i32* %490, i32 3, i32* %491, i32 %492)
  store i32 %493, i32* %18, align 4
  %494 = icmp slt i32 %493, 0
  br i1 %494, label %495, label %497

495:                                              ; preds = %488
  %496 = load i32, i32* %18, align 4
  store i32 %496, i32* %9, align 4
  br label %553

497:                                              ; preds = %488
  %498 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %499 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %500 = load i32*, i32** %35, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 8
  %502 = load i32, i32* %24, align 4
  %503 = call i32 @decode_dct_block(%struct.TYPE_7__* %498, i32* %27, i32* %499, i32 3, i32* %501, i32 %502)
  store i32 %503, i32* %18, align 4
  %504 = icmp slt i32 %503, 0
  br i1 %504, label %505, label %507

505:                                              ; preds = %497
  %506 = load i32, i32* %18, align 4
  store i32 %506, i32* %9, align 4
  br label %553

507:                                              ; preds = %497
  %508 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %509 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %510 = load i32*, i32** %35, align 8
  %511 = load i32, i32* %24, align 4
  %512 = mul nsw i32 8, %511
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %510, i64 %513
  %515 = load i32, i32* %24, align 4
  %516 = call i32 @decode_dct_block(%struct.TYPE_7__* %508, i32* %27, i32* %509, i32 3, i32* %514, i32 %515)
  store i32 %516, i32* %18, align 4
  %517 = icmp slt i32 %516, 0
  br i1 %517, label %518, label %520

518:                                              ; preds = %507
  %519 = load i32, i32* %18, align 4
  store i32 %519, i32* %9, align 4
  br label %553

520:                                              ; preds = %507
  %521 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %522 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %523 = load i32*, i32** %35, align 8
  %524 = load i32, i32* %24, align 4
  %525 = mul nsw i32 8, %524
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32, i32* %523, i64 %526
  %528 = getelementptr inbounds i32, i32* %527, i64 8
  %529 = load i32, i32* %24, align 4
  %530 = call i32 @decode_dct_block(%struct.TYPE_7__* %521, i32* %27, i32* %522, i32 3, i32* %528, i32 %529)
  store i32 %530, i32* %18, align 4
  %531 = icmp slt i32 %530, 0
  br i1 %531, label %532, label %534

532:                                              ; preds = %520
  %533 = load i32, i32* %18, align 4
  store i32 %533, i32* %9, align 4
  br label %553

534:                                              ; preds = %520
  %535 = load i32*, i32** %35, align 8
  %536 = getelementptr inbounds i32, i32* %535, i64 16
  store i32* %536, i32** %35, align 8
  br label %537

537:                                              ; preds = %534, %482
  br label %538

538:                                              ; preds = %537, %479
  br label %539

539:                                              ; preds = %538
  %540 = load i32, i32* %30, align 4
  %541 = add nsw i32 %540, 16
  store i32 %541, i32* %30, align 4
  br label %283

542:                                              ; preds = %283
  br label %543

543:                                              ; preds = %542
  %544 = load i32, i32* %17, align 4
  %545 = mul nsw i32 %544, 64
  %546 = load i32, i32* %31, align 4
  %547 = add nsw i32 %546, %545
  store i32 %547, i32* %31, align 4
  br label %160

548:                                              ; preds = %160
  br label %549

549:                                              ; preds = %548
  %550 = load i32, i32* %19, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %19, align 4
  br label %129

552:                                              ; preds = %129
  store i32 0, i32* %9, align 4
  br label %553

553:                                              ; preds = %552, %532, %518, %505, %495, %477, %464, %437, %423, %409, %399, %383, %370, %351, %342, %333, %319, %306, %296, %153, %122, %85
  %554 = load i32, i32* %9, align 4
  ret i32 %554
}

declare dso_local i32 @AV_RL24(i32*) #1

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @decode_dct_block(%struct.TYPE_7__*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @decode_alpha_block(%struct.TYPE_7__*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
