; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vc1dsp_msa.c_ff_vc1_inv_trans_8x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vc1dsp_msa.c_ff_vc1_inv_trans_8x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vc1_inv_trans_8x4_msa(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_14__, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %42 = bitcast %struct.TYPE_14__* %31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %42, i8 0, i64 4, i1 false)
  store i32 17, i32* %32, align 4
  store i32 22, i32* %33, align 4
  store i32 10, i32* %34, align 4
  store i32 12, i32* %35, align 4
  store i32 64, i32* %36, align 4
  store i32 16, i32* %37, align 4
  store i32 15, i32* %38, align 4
  store i32 4, i32* %39, align 4
  store i32 6, i32* %40, align 4
  store i32 9, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @LD_SW4(i32* %43, i32 8, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @UNPCK_SH_SW(i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @UNPCK_SH_SW(i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @UNPCK_SH_SW(i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @UNPCK_SH_SW(i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @TRANSPOSE4x4_SW_SW(i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @TRANSPOSE4x4_SW_SW(i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %35, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %84, %85
  %87 = mul nsw i32 %83, %86
  %88 = load i32, i32* %39, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %35, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %91, %92
  %94 = mul nsw i32 %90, %93
  %95 = load i32, i32* %39, align 4
  %96 = add nsw i32 %94, %95
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %37, align 4
  %98 = load i32, i32* %9, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32, i32* %40, align 4
  %101 = load i32, i32* %13, align 4
  %102 = mul nsw i32 %100, %101
  %103 = add nsw i32 %99, %102
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %40, align 4
  %105 = load i32, i32* %9, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* %37, align 4
  %108 = load i32, i32* %13, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sub nsw i32 %106, %109
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %111, %112
  store i32 %113, i32* %19, align 4
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %20, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %18, align 4
  %119 = sub nsw i32 %117, %118
  store i32 %119, i32* %21, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %17, align 4
  %122 = sub nsw i32 %120, %121
  store i32 %122, i32* %22, align 4
  %123 = load i32, i32* %37, align 4
  %124 = load i32, i32* %8, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %38, align 4
  %127 = load i32, i32* %10, align 4
  %128 = mul nsw i32 %126, %127
  %129 = add nsw i32 %125, %128
  %130 = load i32, i32* %41, align 4
  %131 = load i32, i32* %12, align 4
  %132 = mul nsw i32 %130, %131
  %133 = add nsw i32 %129, %132
  %134 = load i32, i32* %39, align 4
  %135 = load i32, i32* %14, align 4
  %136 = mul nsw i32 %134, %135
  %137 = add nsw i32 %133, %136
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %38, align 4
  %139 = load i32, i32* %8, align 4
  %140 = mul nsw i32 %138, %139
  %141 = load i32, i32* %39, align 4
  %142 = load i32, i32* %10, align 4
  %143 = mul nsw i32 %141, %142
  %144 = sub nsw i32 %140, %143
  %145 = load i32, i32* %37, align 4
  %146 = load i32, i32* %12, align 4
  %147 = mul nsw i32 %145, %146
  %148 = sub nsw i32 %144, %147
  %149 = load i32, i32* %41, align 4
  %150 = load i32, i32* %14, align 4
  %151 = mul nsw i32 %149, %150
  %152 = sub nsw i32 %148, %151
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* %41, align 4
  %154 = load i32, i32* %8, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32, i32* %37, align 4
  %157 = load i32, i32* %10, align 4
  %158 = mul nsw i32 %156, %157
  %159 = sub nsw i32 %155, %158
  %160 = load i32, i32* %39, align 4
  %161 = load i32, i32* %12, align 4
  %162 = mul nsw i32 %160, %161
  %163 = add nsw i32 %159, %162
  %164 = load i32, i32* %38, align 4
  %165 = load i32, i32* %14, align 4
  %166 = mul nsw i32 %164, %165
  %167 = add nsw i32 %163, %166
  store i32 %167, i32* %17, align 4
  %168 = load i32, i32* %39, align 4
  %169 = load i32, i32* %8, align 4
  %170 = mul nsw i32 %168, %169
  %171 = load i32, i32* %41, align 4
  %172 = load i32, i32* %10, align 4
  %173 = mul nsw i32 %171, %172
  %174 = sub nsw i32 %170, %173
  %175 = load i32, i32* %38, align 4
  %176 = load i32, i32* %12, align 4
  %177 = mul nsw i32 %175, %176
  %178 = add nsw i32 %174, %177
  %179 = load i32, i32* %37, align 4
  %180 = load i32, i32* %14, align 4
  %181 = mul nsw i32 %179, %180
  %182 = sub nsw i32 %178, %181
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* %15, align 4
  %185 = add nsw i32 %183, %184
  %186 = ashr i32 %185, 3
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* %16, align 4
  %189 = add nsw i32 %187, %188
  %190 = ashr i32 %189, 3
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %21, align 4
  %192 = load i32, i32* %17, align 4
  %193 = add nsw i32 %191, %192
  %194 = ashr i32 %193, 3
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %22, align 4
  %196 = load i32, i32* %18, align 4
  %197 = add nsw i32 %195, %196
  %198 = ashr i32 %197, 3
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %22, align 4
  %200 = load i32, i32* %18, align 4
  %201 = sub nsw i32 %199, %200
  %202 = ashr i32 %201, 3
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %21, align 4
  %204 = load i32, i32* %17, align 4
  %205 = sub nsw i32 %203, %204
  %206 = ashr i32 %205, 3
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %20, align 4
  %208 = load i32, i32* %16, align 4
  %209 = sub nsw i32 %207, %208
  %210 = ashr i32 %209, 3
  store i32 %210, i32* %13, align 4
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %15, align 4
  %213 = sub nsw i32 %211, %212
  %214 = ashr i32 %213, 3
  store i32 %214, i32* %14, align 4
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @TRANSPOSE4x4_SW_SW(i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222)
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %14, align 4
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @TRANSPOSE4x4_SW_SW(i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231)
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %14, align 4
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %15, align 4
  %242 = load i32, i32* %16, align 4
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* %18, align 4
  %245 = call i32 @PCKEV_H4_SW(i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244)
  %246 = load i32, i32* %15, align 4
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* %17, align 4
  %249 = load i32, i32* %18, align 4
  %250 = load i32*, i32** %6, align 8
  %251 = call i32 @ST_SW4(i32 %246, i32 %247, i32 %248, i32 %249, i32* %250, i32 8)
  %252 = load i32*, i32** %4, align 8
  %253 = load i32, i32* %5, align 4
  %254 = load i32, i32* %23, align 4
  %255 = load i32, i32* %24, align 4
  %256 = load i32, i32* %25, align 4
  %257 = load i32, i32* %26, align 4
  %258 = call i32 @LD_SW4(i32* %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257)
  %259 = load i32, i32* %23, align 4
  %260 = load i32, i32* %24, align 4
  %261 = load i32, i32* %25, align 4
  %262 = load i32, i32* %26, align 4
  %263 = load i32, i32* %23, align 4
  %264 = load i32, i32* %24, align 4
  %265 = load i32, i32* %25, align 4
  %266 = load i32, i32* %26, align 4
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @ILVR_B4_SW(i32 %268, i32 %259, i32 %270, i32 %260, i32 %272, i32 %261, i32 %274, i32 %262, i32 %263, i32 %264, i32 %265, i32 %266)
  %276 = load i32, i32* %23, align 4
  %277 = load i32, i32* %24, align 4
  %278 = load i32, i32* %25, align 4
  %279 = load i32, i32* %26, align 4
  %280 = load i32, i32* %27, align 4
  %281 = load i32, i32* %28, align 4
  %282 = load i32, i32* %29, align 4
  %283 = load i32, i32* %30, align 4
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @ILVL_H4_SW(i32 %285, i32 %276, i32 %287, i32 %277, i32 %289, i32 %278, i32 %291, i32 %279, i32 %280, i32 %281, i32 %282, i32 %283)
  %293 = load i32, i32* %23, align 4
  %294 = load i32, i32* %24, align 4
  %295 = load i32, i32* %25, align 4
  %296 = load i32, i32* %26, align 4
  %297 = load i32, i32* %23, align 4
  %298 = load i32, i32* %24, align 4
  %299 = load i32, i32* %25, align 4
  %300 = load i32, i32* %26, align 4
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @ILVR_H4_SW(i32 %302, i32 %293, i32 %304, i32 %294, i32 %306, i32 %295, i32 %308, i32 %296, i32 %297, i32 %298, i32 %299, i32 %300)
  %310 = load i32, i32* %32, align 4
  %311 = load i32, i32* %7, align 4
  %312 = load i32, i32* %9, align 4
  %313 = add nsw i32 %311, %312
  %314 = mul nsw i32 %310, %313
  %315 = load i32, i32* %36, align 4
  %316 = add nsw i32 %314, %315
  store i32 %316, i32* %15, align 4
  %317 = load i32, i32* %32, align 4
  %318 = load i32, i32* %7, align 4
  %319 = load i32, i32* %9, align 4
  %320 = sub nsw i32 %318, %319
  %321 = mul nsw i32 %317, %320
  %322 = load i32, i32* %36, align 4
  %323 = add nsw i32 %321, %322
  store i32 %323, i32* %16, align 4
  %324 = load i32, i32* %33, align 4
  %325 = load i32, i32* %8, align 4
  %326 = mul nsw i32 %324, %325
  %327 = load i32, i32* %34, align 4
  %328 = load i32, i32* %10, align 4
  %329 = mul nsw i32 %327, %328
  %330 = add nsw i32 %326, %329
  store i32 %330, i32* %17, align 4
  %331 = load i32, i32* %33, align 4
  %332 = load i32, i32* %10, align 4
  %333 = mul nsw i32 %331, %332
  %334 = load i32, i32* %34, align 4
  %335 = load i32, i32* %8, align 4
  %336 = mul nsw i32 %334, %335
  %337 = sub nsw i32 %333, %336
  store i32 %337, i32* %18, align 4
  %338 = load i32, i32* %15, align 4
  %339 = load i32, i32* %17, align 4
  %340 = add nsw i32 %338, %339
  %341 = ashr i32 %340, 7
  store i32 %341, i32* %7, align 4
  %342 = load i32, i32* %16, align 4
  %343 = load i32, i32* %18, align 4
  %344 = sub nsw i32 %342, %343
  %345 = ashr i32 %344, 7
  store i32 %345, i32* %8, align 4
  %346 = load i32, i32* %16, align 4
  %347 = load i32, i32* %18, align 4
  %348 = add nsw i32 %346, %347
  %349 = ashr i32 %348, 7
  store i32 %349, i32* %9, align 4
  %350 = load i32, i32* %15, align 4
  %351 = load i32, i32* %17, align 4
  %352 = sub nsw i32 %350, %351
  %353 = ashr i32 %352, 7
  store i32 %353, i32* %10, align 4
  %354 = load i32, i32* %7, align 4
  %355 = load i32, i32* %23, align 4
  %356 = load i32, i32* %8, align 4
  %357 = load i32, i32* %24, align 4
  %358 = load i32, i32* %9, align 4
  %359 = load i32, i32* %25, align 4
  %360 = load i32, i32* %10, align 4
  %361 = load i32, i32* %26, align 4
  %362 = load i32, i32* %7, align 4
  %363 = load i32, i32* %8, align 4
  %364 = load i32, i32* %9, align 4
  %365 = load i32, i32* %10, align 4
  %366 = call i32 @ADD4(i32 %354, i32 %355, i32 %356, i32 %357, i32 %358, i32 %359, i32 %360, i32 %361, i32 %362, i32 %363, i32 %364, i32 %365)
  %367 = load i32, i32* %7, align 4
  %368 = load i32, i32* %8, align 4
  %369 = load i32, i32* %9, align 4
  %370 = load i32, i32* %10, align 4
  %371 = call i32 @CLIP_SW4_0_255(i32 %367, i32 %368, i32 %369, i32 %370)
  %372 = load i32, i32* %32, align 4
  %373 = load i32, i32* %11, align 4
  %374 = load i32, i32* %13, align 4
  %375 = add nsw i32 %373, %374
  %376 = mul nsw i32 %372, %375
  %377 = load i32, i32* %36, align 4
  %378 = add nsw i32 %376, %377
  store i32 %378, i32* %19, align 4
  %379 = load i32, i32* %32, align 4
  %380 = load i32, i32* %11, align 4
  %381 = load i32, i32* %13, align 4
  %382 = sub nsw i32 %380, %381
  %383 = mul nsw i32 %379, %382
  %384 = load i32, i32* %36, align 4
  %385 = add nsw i32 %383, %384
  store i32 %385, i32* %20, align 4
  %386 = load i32, i32* %33, align 4
  %387 = load i32, i32* %12, align 4
  %388 = mul nsw i32 %386, %387
  %389 = load i32, i32* %34, align 4
  %390 = load i32, i32* %14, align 4
  %391 = mul nsw i32 %389, %390
  %392 = add nsw i32 %388, %391
  store i32 %392, i32* %21, align 4
  %393 = load i32, i32* %33, align 4
  %394 = load i32, i32* %14, align 4
  %395 = mul nsw i32 %393, %394
  %396 = load i32, i32* %34, align 4
  %397 = load i32, i32* %12, align 4
  %398 = mul nsw i32 %396, %397
  %399 = sub nsw i32 %395, %398
  store i32 %399, i32* %22, align 4
  %400 = load i32, i32* %19, align 4
  %401 = load i32, i32* %21, align 4
  %402 = add nsw i32 %400, %401
  %403 = ashr i32 %402, 7
  store i32 %403, i32* %11, align 4
  %404 = load i32, i32* %20, align 4
  %405 = load i32, i32* %22, align 4
  %406 = sub nsw i32 %404, %405
  %407 = ashr i32 %406, 7
  store i32 %407, i32* %12, align 4
  %408 = load i32, i32* %20, align 4
  %409 = load i32, i32* %22, align 4
  %410 = add nsw i32 %408, %409
  %411 = ashr i32 %410, 7
  store i32 %411, i32* %13, align 4
  %412 = load i32, i32* %19, align 4
  %413 = load i32, i32* %21, align 4
  %414 = sub nsw i32 %412, %413
  %415 = ashr i32 %414, 7
  store i32 %415, i32* %14, align 4
  %416 = load i32, i32* %11, align 4
  %417 = load i32, i32* %27, align 4
  %418 = load i32, i32* %12, align 4
  %419 = load i32, i32* %28, align 4
  %420 = load i32, i32* %13, align 4
  %421 = load i32, i32* %29, align 4
  %422 = load i32, i32* %14, align 4
  %423 = load i32, i32* %30, align 4
  %424 = load i32, i32* %11, align 4
  %425 = load i32, i32* %12, align 4
  %426 = load i32, i32* %13, align 4
  %427 = load i32, i32* %14, align 4
  %428 = call i32 @ADD4(i32 %416, i32 %417, i32 %418, i32 %419, i32 %420, i32 %421, i32 %422, i32 %423, i32 %424, i32 %425, i32 %426, i32 %427)
  %429 = load i32, i32* %11, align 4
  %430 = load i32, i32* %12, align 4
  %431 = load i32, i32* %13, align 4
  %432 = load i32, i32* %14, align 4
  %433 = call i32 @CLIP_SW4_0_255(i32 %429, i32 %430, i32 %431, i32 %432)
  %434 = load i32, i32* %11, align 4
  %435 = load i32, i32* %7, align 4
  %436 = load i32, i32* %12, align 4
  %437 = load i32, i32* %8, align 4
  %438 = load i32, i32* %13, align 4
  %439 = load i32, i32* %9, align 4
  %440 = load i32, i32* %14, align 4
  %441 = load i32, i32* %10, align 4
  %442 = load i32, i32* %7, align 4
  %443 = load i32, i32* %8, align 4
  %444 = load i32, i32* %9, align 4
  %445 = load i32, i32* %10, align 4
  %446 = call i32 @PCKEV_H4_SW(i32 %434, i32 %435, i32 %436, i32 %437, i32 %438, i32 %439, i32 %440, i32 %441, i32 %442, i32 %443, i32 %444, i32 %445)
  %447 = load i32, i32* %8, align 4
  %448 = load i32, i32* %7, align 4
  %449 = load i32, i32* %10, align 4
  %450 = load i32, i32* %9, align 4
  %451 = load i32, i32* %7, align 4
  %452 = load i32, i32* %8, align 4
  %453 = call i32 @PCKEV_B2_SW(i32 %447, i32 %448, i32 %449, i32 %450, i32 %451, i32 %452)
  %454 = load i32, i32* %7, align 4
  %455 = load i32, i32* %8, align 4
  %456 = load i32*, i32** %4, align 8
  %457 = load i32, i32* %5, align 4
  %458 = call i32 @ST_D4(i32 %454, i32 %455, i32 0, i32 1, i32 0, i32 1, i32* %456, i32 %457)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_SW4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @UNPCK_SH_SW(i32, i32, i32) #2

declare dso_local i32 @TRANSPOSE4x4_SW_SW(i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_H4_SW(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_SW4(i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @ILVR_B4_SW(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVL_H4_SW(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_H4_SW(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ADD4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @CLIP_SW4_0_255(i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B2_SW(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
