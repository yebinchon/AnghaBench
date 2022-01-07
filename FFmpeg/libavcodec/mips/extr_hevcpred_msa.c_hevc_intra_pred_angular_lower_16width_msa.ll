; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcpred_msa.c_hevc_intra_pred_angular_lower_16width_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcpred_msa.c_hevc_intra_pred_angular_lower_16width_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.hevc_intra_pred_angular_lower_16width_msa.inv_angle = private unnamed_addr constant [7 x i32] [i32 -4096, i32 -1638, i32 -910, i32 -630, i32 -482, i32 -390, i32 -315], align 16
@intra_pred_angle_low = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32)* @hevc_intra_pred_angular_lower_16width_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_intra_pred_angular_lower_16width_msa(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [7 x i32], align 16
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
  %31 = alloca i32, align 4
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
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca [100 x i32], align 16
  %64 = alloca i32*, align 8
  %65 = alloca i32*, align 8
  %66 = alloca i32*, align 8
  %67 = alloca i32*, align 8
  %68 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %69 = bitcast [7 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %69, i8* align 16 bitcast ([7 x i32]* @__const.hevc_intra_pred_angular_lower_16width_msa.inv_angle to i8*), i64 28, i1 false)
  %70 = getelementptr inbounds [100 x i32], [100 x i32]* %63, i64 0, i64 0
  %71 = getelementptr inbounds i32, i32* %70, i64 16
  store i32* %71, i32** %64, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 -1
  store i32* %73, i32** %66, align 8
  %74 = load i32*, i32** @intra_pred_angle_low, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %59, align 4
  %80 = load i32, i32* %59, align 4
  %81 = ashr i32 %80, 1
  store i32 %81, i32* %68, align 4
  %82 = load i32, i32* %59, align 4
  store i32 %82, i32* %60, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 -1
  store i32* %84, i32** %65, align 8
  %85 = load i32, i32* %68, align 4
  %86 = icmp slt i32 %85, -1
  br i1 %86, label %87, label %129

87:                                               ; preds = %5
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 %88, 11
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %61, align 4
  %93 = load i32*, i32** %65, align 8
  %94 = call i32 @LD_SB(i32* %93)
  store i32 %94, i32* %23, align 4
  %95 = load i32*, i32** %65, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 16
  %97 = call i32 @LW(i32* %96)
  store i32 %97, i32* %22, align 4
  %98 = load i32, i32* %23, align 4
  %99 = load i32*, i32** %64, align 8
  %100 = call i32 @ST_SB(i32 %98, i32* %99)
  %101 = load i32, i32* %22, align 4
  %102 = load i32*, i32** %64, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 16
  %104 = call i32 @SW(i32 %101, i32* %103)
  %105 = load i32, i32* %68, align 4
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %124, %87
  %107 = load i32, i32* %12, align 4
  %108 = icmp sle i32 %107, -1
  br i1 %108, label %109, label %127

109:                                              ; preds = %106
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %61, align 4
  %112 = mul nsw i32 %110, %111
  %113 = add nsw i32 %112, 128
  %114 = ashr i32 %113, 8
  store i32 %114, i32* %62, align 4
  %115 = load i32*, i32** %66, align 8
  %116 = load i32, i32* %62, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %64, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  br label %124

124:                                              ; preds = %109
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %106

127:                                              ; preds = %106
  %128 = load i32*, i32** %64, align 8
  store i32* %128, i32** %65, align 8
  br label %129

129:                                              ; preds = %127, %5
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %390, %129
  %131 = load i32, i32* %13, align 4
  %132 = icmp slt i32 %131, 4
  br i1 %132, label %133, label %393

133:                                              ; preds = %130
  %134 = load i32*, i32** %8, align 8
  store i32* %134, i32** %67, align 8
  %135 = load i32, i32* %60, align 4
  %136 = ashr i32 %135, 5
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %60, align 4
  %138 = and i32 %137, 31
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %59, align 4
  %140 = load i32, i32* %60, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %60, align 4
  %142 = load i32, i32* %60, align 4
  %143 = ashr i32 %142, 5
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %60, align 4
  %145 = and i32 %144, 31
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %59, align 4
  %147 = load i32, i32* %60, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %60, align 4
  %149 = load i32, i32* %60, align 4
  %150 = ashr i32 %149, 5
  store i32 %150, i32* %18, align 4
  %151 = load i32, i32* %60, align 4
  %152 = and i32 %151, 31
  store i32 %152, i32* %19, align 4
  %153 = load i32, i32* %59, align 4
  %154 = load i32, i32* %60, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %60, align 4
  %156 = load i32, i32* %60, align 4
  %157 = ashr i32 %156, 5
  store i32 %157, i32* %20, align 4
  %158 = load i32, i32* %60, align 4
  %159 = and i32 %158, 31
  store i32 %159, i32* %21, align 4
  %160 = load i32, i32* %59, align 4
  %161 = load i32, i32* %60, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %60, align 4
  %163 = load i32*, i32** %65, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %23, align 4
  %169 = load i32, i32* %24, align 4
  %170 = call i32 @LD_SB2(i32* %167, i32 16, i32 %168, i32 %169)
  %171 = load i32*, i32** %65, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %26, align 4
  %177 = load i32, i32* %27, align 4
  %178 = call i32 @LD_SB2(i32* %175, i32 16, i32 %176, i32 %177)
  %179 = load i32*, i32** %65, align 8
  %180 = load i32, i32* %18, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = load i32, i32* %29, align 4
  %185 = load i32, i32* %30, align 4
  %186 = call i32 @LD_SB2(i32* %183, i32 16, i32 %184, i32 %185)
  %187 = load i32*, i32** %65, align 8
  %188 = load i32, i32* %20, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %32, align 4
  %193 = load i32, i32* %33, align 4
  %194 = call i32 @LD_SB2(i32* %191, i32 16, i32 %192, i32 %193)
  %195 = load i32, i32* %15, align 4
  %196 = call i32 @__msa_fill_h(i32 %195)
  store i32 %196, i32* %35, align 4
  %197 = load i32, i32* %15, align 4
  %198 = sub nsw i32 32, %197
  %199 = call i32 @__msa_fill_h(i32 %198)
  store i32 %199, i32* %36, align 4
  %200 = load i32, i32* %17, align 4
  %201 = call i32 @__msa_fill_h(i32 %200)
  store i32 %201, i32* %37, align 4
  %202 = load i32, i32* %17, align 4
  %203 = sub nsw i32 32, %202
  %204 = call i32 @__msa_fill_h(i32 %203)
  store i32 %204, i32* %38, align 4
  %205 = load i32, i32* %19, align 4
  %206 = call i32 @__msa_fill_h(i32 %205)
  store i32 %206, i32* %39, align 4
  %207 = load i32, i32* %19, align 4
  %208 = sub nsw i32 32, %207
  %209 = call i32 @__msa_fill_h(i32 %208)
  store i32 %209, i32* %40, align 4
  %210 = load i32, i32* %21, align 4
  %211 = call i32 @__msa_fill_h(i32 %210)
  store i32 %211, i32* %41, align 4
  %212 = load i32, i32* %21, align 4
  %213 = sub nsw i32 32, %212
  %214 = call i32 @__msa_fill_h(i32 %213)
  store i32 %214, i32* %42, align 4
  %215 = load i32, i32* %24, align 4
  %216 = load i32, i32* %23, align 4
  %217 = load i32, i32* %27, align 4
  %218 = load i32, i32* %26, align 4
  %219 = load i32, i32* %30, align 4
  %220 = load i32, i32* %29, align 4
  %221 = load i32, i32* %33, align 4
  %222 = load i32, i32* %32, align 4
  %223 = load i32, i32* %24, align 4
  %224 = load i32, i32* %27, align 4
  %225 = load i32, i32* %30, align 4
  %226 = load i32, i32* %33, align 4
  %227 = call i32 @SLDI_B4_SB(i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 1, i32 %223, i32 %224, i32 %225, i32 %226)
  %228 = load i32, i32* %23, align 4
  %229 = load i32, i32* %43, align 4
  %230 = load i32, i32* %44, align 4
  %231 = call i32 @UNPCK_UB_SH(i32 %228, i32 %229, i32 %230)
  %232 = load i32, i32* %24, align 4
  %233 = load i32, i32* %45, align 4
  %234 = load i32, i32* %46, align 4
  %235 = call i32 @UNPCK_UB_SH(i32 %232, i32 %233, i32 %234)
  %236 = load i32, i32* %26, align 4
  %237 = load i32, i32* %47, align 4
  %238 = load i32, i32* %48, align 4
  %239 = call i32 @UNPCK_UB_SH(i32 %236, i32 %237, i32 %238)
  %240 = load i32, i32* %27, align 4
  %241 = load i32, i32* %49, align 4
  %242 = load i32, i32* %50, align 4
  %243 = call i32 @UNPCK_UB_SH(i32 %240, i32 %241, i32 %242)
  %244 = load i32, i32* %29, align 4
  %245 = load i32, i32* %51, align 4
  %246 = load i32, i32* %52, align 4
  %247 = call i32 @UNPCK_UB_SH(i32 %244, i32 %245, i32 %246)
  %248 = load i32, i32* %30, align 4
  %249 = load i32, i32* %53, align 4
  %250 = load i32, i32* %54, align 4
  %251 = call i32 @UNPCK_UB_SH(i32 %248, i32 %249, i32 %250)
  %252 = load i32, i32* %32, align 4
  %253 = load i32, i32* %55, align 4
  %254 = load i32, i32* %56, align 4
  %255 = call i32 @UNPCK_UB_SH(i32 %252, i32 %253, i32 %254)
  %256 = load i32, i32* %33, align 4
  %257 = load i32, i32* %57, align 4
  %258 = load i32, i32* %58, align 4
  %259 = call i32 @UNPCK_UB_SH(i32 %256, i32 %257, i32 %258)
  %260 = load i32, i32* %45, align 4
  %261 = load i32, i32* %35, align 4
  %262 = load i32, i32* %46, align 4
  %263 = load i32, i32* %35, align 4
  %264 = load i32, i32* %49, align 4
  %265 = load i32, i32* %37, align 4
  %266 = load i32, i32* %50, align 4
  %267 = load i32, i32* %37, align 4
  %268 = load i32, i32* %45, align 4
  %269 = load i32, i32* %46, align 4
  %270 = load i32, i32* %49, align 4
  %271 = load i32, i32* %50, align 4
  %272 = call i32 @MUL4(i32 %260, i32 %261, i32 %262, i32 %263, i32 %264, i32 %265, i32 %266, i32 %267, i32 %268, i32 %269, i32 %270, i32 %271)
  %273 = load i32, i32* %53, align 4
  %274 = load i32, i32* %39, align 4
  %275 = load i32, i32* %54, align 4
  %276 = load i32, i32* %39, align 4
  %277 = load i32, i32* %57, align 4
  %278 = load i32, i32* %41, align 4
  %279 = load i32, i32* %58, align 4
  %280 = load i32, i32* %41, align 4
  %281 = load i32, i32* %53, align 4
  %282 = load i32, i32* %54, align 4
  %283 = load i32, i32* %57, align 4
  %284 = load i32, i32* %58, align 4
  %285 = call i32 @MUL4(i32 %273, i32 %274, i32 %275, i32 %276, i32 %277, i32 %278, i32 %279, i32 %280, i32 %281, i32 %282, i32 %283, i32 %284)
  %286 = load i32, i32* %43, align 4
  %287 = load i32, i32* %36, align 4
  %288 = mul nsw i32 %286, %287
  %289 = load i32, i32* %45, align 4
  %290 = add nsw i32 %289, %288
  store i32 %290, i32* %45, align 4
  %291 = load i32, i32* %44, align 4
  %292 = load i32, i32* %36, align 4
  %293 = mul nsw i32 %291, %292
  %294 = load i32, i32* %46, align 4
  %295 = add nsw i32 %294, %293
  store i32 %295, i32* %46, align 4
  %296 = load i32, i32* %47, align 4
  %297 = load i32, i32* %38, align 4
  %298 = mul nsw i32 %296, %297
  %299 = load i32, i32* %49, align 4
  %300 = add nsw i32 %299, %298
  store i32 %300, i32* %49, align 4
  %301 = load i32, i32* %48, align 4
  %302 = load i32, i32* %38, align 4
  %303 = mul nsw i32 %301, %302
  %304 = load i32, i32* %50, align 4
  %305 = add nsw i32 %304, %303
  store i32 %305, i32* %50, align 4
  %306 = load i32, i32* %51, align 4
  %307 = load i32, i32* %40, align 4
  %308 = mul nsw i32 %306, %307
  %309 = load i32, i32* %53, align 4
  %310 = add nsw i32 %309, %308
  store i32 %310, i32* %53, align 4
  %311 = load i32, i32* %52, align 4
  %312 = load i32, i32* %40, align 4
  %313 = mul nsw i32 %311, %312
  %314 = load i32, i32* %54, align 4
  %315 = add nsw i32 %314, %313
  store i32 %315, i32* %54, align 4
  %316 = load i32, i32* %55, align 4
  %317 = load i32, i32* %42, align 4
  %318 = mul nsw i32 %316, %317
  %319 = load i32, i32* %57, align 4
  %320 = add nsw i32 %319, %318
  store i32 %320, i32* %57, align 4
  %321 = load i32, i32* %56, align 4
  %322 = load i32, i32* %42, align 4
  %323 = mul nsw i32 %321, %322
  %324 = load i32, i32* %58, align 4
  %325 = add nsw i32 %324, %323
  store i32 %325, i32* %58, align 4
  %326 = load i32, i32* %45, align 4
  %327 = load i32, i32* %46, align 4
  %328 = load i32, i32* %49, align 4
  %329 = load i32, i32* %50, align 4
  %330 = call i32 @SRARI_H4_SH(i32 %326, i32 %327, i32 %328, i32 %329, i32 5)
  %331 = load i32, i32* %53, align 4
  %332 = load i32, i32* %54, align 4
  %333 = load i32, i32* %57, align 4
  %334 = load i32, i32* %58, align 4
  %335 = call i32 @SRARI_H4_SH(i32 %331, i32 %332, i32 %333, i32 %334, i32 5)
  %336 = load i32, i32* %46, align 4
  %337 = load i32, i32* %45, align 4
  %338 = load i32, i32* %50, align 4
  %339 = load i32, i32* %49, align 4
  %340 = load i32, i32* %54, align 4
  %341 = load i32, i32* %53, align 4
  %342 = load i32, i32* %58, align 4
  %343 = load i32, i32* %57, align 4
  %344 = load i32, i32* %25, align 4
  %345 = load i32, i32* %28, align 4
  %346 = load i32, i32* %31, align 4
  %347 = load i32, i32* %34, align 4
  %348 = call i32 @PCKEV_B4_SB(i32 %336, i32 %337, i32 %338, i32 %339, i32 %340, i32 %341, i32 %342, i32 %343, i32 %344, i32 %345, i32 %346, i32 %347)
  %349 = load i32, i32* %28, align 4
  %350 = load i32, i32* %25, align 4
  %351 = load i32, i32* %34, align 4
  %352 = load i32, i32* %31, align 4
  %353 = load i32, i32* %43, align 4
  %354 = load i32, i32* %44, align 4
  %355 = call i32 @ILVR_B2_SH(i32 %349, i32 %350, i32 %351, i32 %352, i32 %353, i32 %354)
  %356 = load i32, i32* %28, align 4
  %357 = load i32, i32* %25, align 4
  %358 = load i32, i32* %34, align 4
  %359 = load i32, i32* %31, align 4
  %360 = load i32, i32* %45, align 4
  %361 = load i32, i32* %46, align 4
  %362 = call i32 @ILVL_B2_SH(i32 %356, i32 %357, i32 %358, i32 %359, i32 %360, i32 %361)
  %363 = load i32, i32* %44, align 4
  %364 = load i32, i32* %43, align 4
  %365 = load i32, i32* %47, align 4
  %366 = load i32, i32* %48, align 4
  %367 = call i32 @ILVRL_H2_SH(i32 %363, i32 %364, i32 %365, i32 %366)
  %368 = load i32, i32* %46, align 4
  %369 = load i32, i32* %45, align 4
  %370 = load i32, i32* %49, align 4
  %371 = load i32, i32* %50, align 4
  %372 = call i32 @ILVRL_H2_SH(i32 %368, i32 %369, i32 %370, i32 %371)
  %373 = load i32, i32* %47, align 4
  %374 = load i32, i32* %48, align 4
  %375 = load i32*, i32** %67, align 8
  %376 = load i32, i32* %9, align 4
  %377 = call i32 @ST_W8(i32 %373, i32 %374, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %375, i32 %376)
  %378 = load i32, i32* %9, align 4
  %379 = mul nsw i32 8, %378
  %380 = load i32*, i32** %67, align 8
  %381 = sext i32 %379 to i64
  %382 = getelementptr inbounds i32, i32* %380, i64 %381
  store i32* %382, i32** %67, align 8
  %383 = load i32, i32* %49, align 4
  %384 = load i32, i32* %50, align 4
  %385 = load i32*, i32** %67, align 8
  %386 = load i32, i32* %9, align 4
  %387 = call i32 @ST_W8(i32 %383, i32 %384, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %385, i32 %386)
  %388 = load i32*, i32** %8, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 4
  store i32* %389, i32** %8, align 8
  br label %390

390:                                              ; preds = %133
  %391 = load i32, i32* %13, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %13, align 4
  br label %130

393:                                              ; preds = %130
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LD_SB(i32*) #2

declare dso_local i32 @LW(i32*) #2

declare dso_local i32 @ST_SB(i32, i32*) #2

declare dso_local i32 @SW(i32, i32*) #2

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #2

declare dso_local i32 @__msa_fill_h(i32) #2

declare dso_local i32 @SLDI_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @UNPCK_UB_SH(i32, i32, i32) #2

declare dso_local i32 @MUL4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B2_SH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVL_B2_SH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #2

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
