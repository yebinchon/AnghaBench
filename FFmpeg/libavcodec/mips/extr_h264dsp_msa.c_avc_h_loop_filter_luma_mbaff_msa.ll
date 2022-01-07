; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_msa.c_avc_h_loop_filter_luma_mbaff_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_msa.c_avc_h_loop_filter_luma_mbaff_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i64*)* @avc_h_loop_filter_luma_mbaff_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_h_loop_filter_luma_mbaff_msa(i32* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
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
  %62 = alloca i64, align 8
  %63 = alloca i64, align 8
  %64 = alloca i64, align 8
  %65 = alloca i64, align 8
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %69 = load i32*, i32** %6, align 8
  store i32* %69, i32** %11, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  store i64 0, i64* %25, align 8
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  store i64 0, i64* %51, align 8
  store i64 0, i64* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @__msa_fill_b(i32 %70)
  store i64 %71, i64* %18, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @__msa_fill_b(i32 %72)
  store i64 %73, i64* %19, align 8
  %74 = load i64*, i64** %10, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %5
  %79 = load i32, i32* %7, align 4
  %80 = mul nsw i32 2, %79
  %81 = load i32*, i32** %11, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %11, align 8
  br label %107

84:                                               ; preds = %5
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 -3
  %87 = call i32 @LD(i32* %86)
  store i32 %87, i32* %16, align 4
  %88 = load i64, i64* %20, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* %16, align 4
  %91 = call i64 @__msa_insert_d(i32 %89, i32 0, i32 %90)
  store i64 %91, i64* %20, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 -3
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = call i32 @LD(i32* %96)
  store i32 %97, i32* %16, align 4
  %98 = load i64, i64* %21, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* %16, align 4
  %101 = call i64 @__msa_insert_d(i32 %99, i32 0, i32 %100)
  store i64 %101, i64* %21, align 8
  %102 = load i32, i32* %7, align 4
  %103 = mul nsw i32 2, %102
  %104 = load i32*, i32** %11, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %11, align 8
  br label %107

107:                                              ; preds = %84, %78
  %108 = load i64*, i64** %10, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32, i32* %7, align 4
  %114 = mul nsw i32 2, %113
  %115 = load i32*, i32** %11, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %11, align 8
  br label %141

118:                                              ; preds = %107
  %119 = load i32*, i32** %11, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 -3
  %121 = call i32 @LD(i32* %120)
  store i32 %121, i32* %16, align 4
  %122 = load i64, i64* %22, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* %16, align 4
  %125 = call i64 @__msa_insert_d(i32 %123, i32 0, i32 %124)
  store i64 %125, i64* %22, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 -3
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = call i32 @LD(i32* %130)
  store i32 %131, i32* %16, align 4
  %132 = load i64, i64* %23, align 8
  %133 = trunc i64 %132 to i32
  %134 = load i32, i32* %16, align 4
  %135 = call i64 @__msa_insert_d(i32 %133, i32 0, i32 %134)
  store i64 %135, i64* %23, align 8
  %136 = load i32, i32* %7, align 4
  %137 = mul nsw i32 2, %136
  %138 = load i32*, i32** %11, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %11, align 8
  br label %141

141:                                              ; preds = %118, %112
  %142 = load i64*, i64** %10, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i32, i32* %7, align 4
  %148 = mul nsw i32 2, %147
  %149 = load i32*, i32** %11, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %11, align 8
  br label %175

152:                                              ; preds = %141
  %153 = load i32*, i32** %11, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 -3
  %155 = call i32 @LD(i32* %154)
  store i32 %155, i32* %16, align 4
  %156 = load i64, i64* %24, align 8
  %157 = trunc i64 %156 to i32
  %158 = load i32, i32* %16, align 4
  %159 = call i64 @__msa_insert_d(i32 %157, i32 0, i32 %158)
  store i64 %159, i64* %24, align 8
  %160 = load i32*, i32** %11, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 -3
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = call i32 @LD(i32* %164)
  store i32 %165, i32* %16, align 4
  %166 = load i64, i64* %25, align 8
  %167 = trunc i64 %166 to i32
  %168 = load i32, i32* %16, align 4
  %169 = call i64 @__msa_insert_d(i32 %167, i32 0, i32 %168)
  store i64 %169, i64* %25, align 8
  %170 = load i32, i32* %7, align 4
  %171 = mul nsw i32 2, %170
  %172 = load i32*, i32** %11, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32* %174, i32** %11, align 8
  br label %175

175:                                              ; preds = %152, %146
  %176 = load i64*, i64** %10, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 3
  %178 = load i64, i64* %177, align 8
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load i32, i32* %7, align 4
  %182 = mul nsw i32 2, %181
  %183 = load i32*, i32** %11, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32* %185, i32** %11, align 8
  br label %209

186:                                              ; preds = %175
  %187 = load i32*, i32** %11, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 -3
  %189 = call i32 @LD(i32* %188)
  store i32 %189, i32* %16, align 4
  %190 = load i64, i64* %26, align 8
  %191 = trunc i64 %190 to i32
  %192 = load i32, i32* %16, align 4
  %193 = call i64 @__msa_insert_d(i32 %191, i32 0, i32 %192)
  store i64 %193, i64* %26, align 8
  %194 = load i32*, i32** %11, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 -3
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = call i32 @LD(i32* %198)
  store i32 %199, i32* %16, align 4
  %200 = load i64, i64* %27, align 8
  %201 = trunc i64 %200 to i32
  %202 = load i32, i32* %16, align 4
  %203 = call i64 @__msa_insert_d(i32 %201, i32 0, i32 %202)
  store i64 %203, i64* %27, align 8
  %204 = load i32, i32* %7, align 4
  %205 = mul nsw i32 2, %204
  %206 = load i32*, i32** %11, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32* %208, i32** %11, align 8
  br label %209

209:                                              ; preds = %186, %180
  %210 = load i64, i64* %21, align 8
  %211 = load i64, i64* %20, align 8
  %212 = load i64, i64* %23, align 8
  %213 = load i64, i64* %22, align 8
  %214 = load i64, i64* %25, align 8
  %215 = load i64, i64* %24, align 8
  %216 = load i64, i64* %27, align 8
  %217 = load i64, i64* %26, align 8
  %218 = load i64, i64* %28, align 8
  %219 = load i64, i64* %29, align 8
  %220 = load i64, i64* %30, align 8
  %221 = load i64, i64* %31, align 8
  %222 = call i32 @ILVR_B4_SB(i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221)
  %223 = load i64, i64* %29, align 8
  %224 = load i64, i64* %28, align 8
  %225 = load i64, i64* %31, align 8
  %226 = load i64, i64* %30, align 8
  %227 = load i32, i32* %32, align 4
  %228 = load i32, i32* %34, align 4
  %229 = call i32 @ILVR_H2_SH(i64 %223, i64 %224, i64 %225, i64 %226, i32 %227, i32 %228)
  %230 = load i64, i64* %29, align 8
  %231 = load i64, i64* %28, align 8
  %232 = load i64, i64* %31, align 8
  %233 = load i64, i64* %30, align 8
  %234 = load i32, i32* %33, align 4
  %235 = load i32, i32* %35, align 4
  %236 = call i32 @ILVL_H2_SH(i64 %230, i64 %231, i64 %232, i64 %233, i32 %234, i32 %235)
  %237 = load i32, i32* %34, align 4
  %238 = load i32, i32* %32, align 4
  %239 = call i64 @__msa_ilvr_w(i32 %237, i32 %238)
  store i64 %239, i64* %28, align 8
  %240 = load i64, i64* %68, align 8
  %241 = load i64, i64* %28, align 8
  %242 = call i64 @__msa_sldi_b(i64 %240, i64 %241, i32 8)
  store i64 %242, i64* %29, align 8
  %243 = load i32, i32* %34, align 4
  %244 = load i32, i32* %32, align 4
  %245 = call i64 @__msa_ilvl_w(i32 %243, i32 %244)
  store i64 %245, i64* %30, align 8
  %246 = load i64, i64* %68, align 8
  %247 = load i64, i64* %30, align 8
  %248 = call i64 @__msa_sldi_b(i64 %246, i64 %247, i32 8)
  store i64 %248, i64* %31, align 8
  %249 = load i32, i32* %35, align 4
  %250 = load i32, i32* %33, align 4
  %251 = call i64 @__msa_ilvr_w(i32 %249, i32 %250)
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %32, align 4
  %253 = load i64, i64* %68, align 8
  %254 = load i32, i32* %32, align 4
  %255 = sext i32 %254 to i64
  %256 = call i64 @__msa_sldi_b(i64 %253, i64 %255, i32 8)
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %33, align 4
  %258 = load i64, i64* %30, align 8
  %259 = load i64, i64* %31, align 8
  %260 = call i64 @__msa_asub_u_b(i64 %258, i64 %259)
  store i64 %260, i64* %36, align 8
  %261 = load i64, i64* %29, align 8
  %262 = load i64, i64* %30, align 8
  %263 = call i64 @__msa_asub_u_b(i64 %261, i64 %262)
  store i64 %263, i64* %37, align 8
  %264 = load i32, i32* %32, align 4
  %265 = sext i32 %264 to i64
  %266 = load i64, i64* %31, align 8
  %267 = call i64 @__msa_asub_u_b(i64 %265, i64 %266)
  store i64 %267, i64* %38, align 8
  %268 = load i64, i64* %28, align 8
  %269 = load i64, i64* %30, align 8
  %270 = call i64 @__msa_asub_u_b(i64 %268, i64 %269)
  store i64 %270, i64* %39, align 8
  %271 = load i32, i32* %33, align 4
  %272 = sext i32 %271 to i64
  %273 = load i64, i64* %31, align 8
  %274 = call i64 @__msa_asub_u_b(i64 %272, i64 %273)
  store i64 %274, i64* %40, align 8
  %275 = load i64, i64* %36, align 8
  %276 = load i64, i64* %18, align 8
  %277 = icmp slt i64 %275, %276
  %278 = zext i1 %277 to i32
  %279 = sext i32 %278 to i64
  store i64 %279, i64* %42, align 8
  %280 = load i64, i64* %37, align 8
  %281 = load i64, i64* %19, align 8
  %282 = icmp slt i64 %280, %281
  %283 = zext i1 %282 to i32
  %284 = sext i32 %283 to i64
  store i64 %284, i64* %43, align 8
  %285 = load i64, i64* %42, align 8
  %286 = load i64, i64* %43, align 8
  %287 = and i64 %285, %286
  store i64 %287, i64* %41, align 8
  %288 = load i64, i64* %38, align 8
  %289 = load i64, i64* %19, align 8
  %290 = icmp slt i64 %288, %289
  %291 = zext i1 %290 to i32
  %292 = sext i32 %291 to i64
  store i64 %292, i64* %43, align 8
  %293 = load i64, i64* %43, align 8
  %294 = load i64, i64* %41, align 8
  %295 = and i64 %293, %294
  store i64 %295, i64* %41, align 8
  %296 = load i64, i64* %39, align 8
  %297 = load i64, i64* %19, align 8
  %298 = icmp slt i64 %296, %297
  %299 = zext i1 %298 to i32
  %300 = sext i32 %299 to i64
  store i64 %300, i64* %44, align 8
  %301 = load i64, i64* %40, align 8
  %302 = load i64, i64* %19, align 8
  %303 = icmp slt i64 %301, %302
  %304 = zext i1 %303 to i32
  %305 = sext i32 %304 to i64
  store i64 %305, i64* %45, align 8
  %306 = load i64, i64* %31, align 8
  %307 = load i64, i64* %30, align 8
  %308 = call i64 @__msa_ilvr_b(i64 %306, i64 %307)
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %52, align 4
  %310 = load i32, i32* %52, align 4
  %311 = sext i32 %310 to i64
  %312 = load i32, i32* %52, align 4
  %313 = sext i32 %312 to i64
  %314 = call i64 @__msa_hadd_u_h(i64 %311, i64 %313)
  %315 = trunc i64 %314 to i32
  store i32 %315, i32* %53, align 4
  %316 = load i32, i32* %53, align 4
  %317 = call i32 @__msa_srari_h(i32 %316, i32 1)
  store i32 %317, i32* %53, align 4
  %318 = load i64, i64* %68, align 8
  %319 = load i64, i64* %28, align 8
  %320 = load i64, i64* %68, align 8
  %321 = load i64, i64* %29, align 8
  %322 = load i32, i32* %58, align 4
  %323 = load i32, i32* %59, align 4
  %324 = call i32 @ILVR_B2_SH(i64 %318, i64 %319, i64 %320, i64 %321, i32 %322, i32 %323)
  %325 = load i32, i32* %53, align 4
  %326 = load i32, i32* %58, align 4
  %327 = add nsw i32 %326, %325
  store i32 %327, i32* %58, align 4
  %328 = load i32, i32* %58, align 4
  %329 = ashr i32 %328, 1
  store i32 %329, i32* %58, align 4
  %330 = load i32, i32* %59, align 4
  %331 = load i32, i32* %58, align 4
  %332 = sub nsw i32 %331, %330
  store i32 %332, i32* %58, align 4
  %333 = load i64, i64* %68, align 8
  %334 = load i32, i32* %33, align 4
  %335 = sext i32 %334 to i64
  %336 = load i64, i64* %68, align 8
  %337 = load i32, i32* %32, align 4
  %338 = sext i32 %337 to i64
  %339 = load i32, i32* %60, align 4
  %340 = load i32, i32* %61, align 4
  %341 = call i32 @ILVR_B2_SH(i64 %333, i64 %335, i64 %336, i64 %338, i32 %339, i32 %340)
  %342 = load i32, i32* %53, align 4
  %343 = load i32, i32* %60, align 4
  %344 = add nsw i32 %343, %342
  store i32 %344, i32* %60, align 4
  %345 = load i32, i32* %60, align 4
  %346 = ashr i32 %345, 1
  store i32 %346, i32* %60, align 4
  %347 = load i32, i32* %61, align 4
  %348 = load i32, i32* %60, align 4
  %349 = sub nsw i32 %348, %347
  store i32 %349, i32* %60, align 4
  %350 = load i64*, i64** %10, align 8
  %351 = call i32 @LW(i64* %350)
  store i32 %351, i32* %17, align 4
  %352 = load i64, i64* %51, align 8
  %353 = trunc i64 %352 to i32
  %354 = load i32, i32* %17, align 4
  %355 = call i64 @__msa_insert_w(i32 %353, i32 0, i32 %354)
  store i64 %355, i64* %51, align 8
  %356 = load i64, i64* %51, align 8
  %357 = load i64, i64* %51, align 8
  %358 = call i64 @__msa_ilvr_b(i64 %356, i64 %357)
  store i64 %358, i64* %51, align 8
  %359 = load i64, i64* %51, align 8
  store i64 %359, i64* %49, align 8
  %360 = load i64, i64* %51, align 8
  store i64 %360, i64* %50, align 8
  %361 = load i64, i64* %68, align 8
  %362 = load i64, i64* %51, align 8
  %363 = call i64 @__msa_ilvr_b(i64 %361, i64 %362)
  %364 = trunc i64 %363 to i32
  store i32 %364, i32* %47, align 4
  %365 = load i32, i32* %47, align 4
  store i32 %365, i32* %46, align 4
  %366 = load i32, i32* %58, align 4
  %367 = load i32, i32* %47, align 4
  %368 = sub nsw i32 0, %367
  %369 = load i32, i32* %47, align 4
  %370 = call i32 @CLIP_SH(i32 %366, i32 %368, i32 %369)
  %371 = load i32, i32* %60, align 4
  %372 = load i32, i32* %47, align 4
  %373 = sub nsw i32 0, %372
  %374 = load i32, i32* %47, align 4
  %375 = call i32 @CLIP_SH(i32 %371, i32 %373, i32 %374)
  %376 = load i32, i32* %59, align 4
  %377 = load i32, i32* %58, align 4
  %378 = add nsw i32 %377, %376
  store i32 %378, i32* %58, align 4
  %379 = load i32, i32* %61, align 4
  %380 = load i32, i32* %60, align 4
  %381 = add nsw i32 %380, %379
  store i32 %381, i32* %60, align 4
  %382 = load i32, i32* %58, align 4
  %383 = load i32, i32* %58, align 4
  %384 = load i32, i32* %60, align 4
  %385 = load i32, i32* %60, align 4
  %386 = load i64, i64* %62, align 8
  %387 = load i64, i64* %63, align 8
  %388 = call i32 @PCKEV_B2_UB(i32 %382, i32 %383, i32 %384, i32 %385, i64 %386, i64 %387)
  %389 = load i64, i64* %68, align 8
  %390 = load i64, i64* %49, align 8
  %391 = icmp slt i64 %389, %390
  %392 = zext i1 %391 to i32
  %393 = sext i32 %392 to i64
  store i64 %393, i64* %49, align 8
  %394 = load i64, i64* %49, align 8
  store i64 %394, i64* %50, align 8
  %395 = load i64, i64* %44, align 8
  %396 = load i64, i64* %49, align 8
  %397 = and i64 %395, %396
  store i64 %397, i64* %49, align 8
  %398 = load i64, i64* %45, align 8
  %399 = load i64, i64* %50, align 8
  %400 = and i64 %398, %399
  store i64 %400, i64* %50, align 8
  %401 = load i64, i64* %41, align 8
  %402 = load i64, i64* %49, align 8
  %403 = and i64 %401, %402
  store i64 %403, i64* %49, align 8
  %404 = load i64, i64* %41, align 8
  %405 = load i64, i64* %50, align 8
  %406 = and i64 %404, %405
  store i64 %406, i64* %50, align 8
  %407 = load i64, i64* %29, align 8
  %408 = load i64, i64* %62, align 8
  %409 = load i64, i64* %49, align 8
  %410 = call i64 @__msa_bmnz_v(i64 %407, i64 %408, i64 %409)
  store i64 %410, i64* %62, align 8
  %411 = load i32, i32* %32, align 4
  %412 = sext i32 %411 to i64
  %413 = load i64, i64* %63, align 8
  %414 = load i64, i64* %50, align 8
  %415 = call i64 @__msa_bmnz_v(i64 %412, i64 %413, i64 %414)
  store i64 %415, i64* %63, align 8
  %416 = load i32, i32* %52, align 4
  %417 = sext i32 %416 to i64
  %418 = load i32, i32* %52, align 4
  %419 = sext i32 %418 to i64
  %420 = call i32 @__msa_hsub_u_h(i64 %417, i64 %419)
  store i32 %420, i32* %54, align 4
  %421 = load i32, i32* %54, align 4
  %422 = shl i32 %421, 2
  store i32 %422, i32* %54, align 4
  %423 = load i32, i32* %59, align 4
  %424 = load i32, i32* %61, align 4
  %425 = sub nsw i32 %423, %424
  store i32 %425, i32* %55, align 4
  %426 = load i32, i32* %55, align 4
  %427 = load i32, i32* %54, align 4
  %428 = add nsw i32 %427, %426
  store i32 %428, i32* %54, align 4
  %429 = load i32, i32* %54, align 4
  %430 = call i32 @__msa_srari_h(i32 %429, i32 3)
  store i32 %430, i32* %54, align 4
  %431 = load i32, i32* %46, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %48, align 4
  %433 = load i64, i64* %44, align 8
  %434 = load i64, i64* %44, align 8
  %435 = call i64 @__msa_ilvr_b(i64 %433, i64 %434)
  store i64 %435, i64* %44, align 8
  %436 = load i32, i32* %46, align 4
  %437 = sext i32 %436 to i64
  %438 = load i32, i32* %48, align 4
  %439 = sext i32 %438 to i64
  %440 = load i64, i64* %44, align 8
  %441 = call i64 @__msa_bmnz_v(i64 %437, i64 %439, i64 %440)
  %442 = trunc i64 %441 to i32
  store i32 %442, i32* %46, align 4
  %443 = load i32, i32* %46, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %48, align 4
  %445 = load i64, i64* %45, align 8
  %446 = load i64, i64* %45, align 8
  %447 = call i64 @__msa_ilvr_b(i64 %445, i64 %446)
  store i64 %447, i64* %45, align 8
  %448 = load i32, i32* %46, align 4
  %449 = sext i32 %448 to i64
  %450 = load i32, i32* %48, align 4
  %451 = sext i32 %450 to i64
  %452 = load i64, i64* %45, align 8
  %453 = call i64 @__msa_bmnz_v(i64 %449, i64 %451, i64 %452)
  %454 = trunc i64 %453 to i32
  store i32 %454, i32* %46, align 4
  %455 = load i32, i32* %54, align 4
  %456 = load i32, i32* %46, align 4
  %457 = sub nsw i32 0, %456
  %458 = load i32, i32* %46, align 4
  %459 = call i32 @CLIP_SH(i32 %455, i32 %457, i32 %458)
  %460 = load i64, i64* %68, align 8
  %461 = load i64, i64* %30, align 8
  %462 = load i64, i64* %68, align 8
  %463 = load i64, i64* %31, align 8
  %464 = load i32, i32* %56, align 4
  %465 = load i32, i32* %57, align 4
  %466 = call i32 @ILVR_B2_SH(i64 %460, i64 %461, i64 %462, i64 %463, i32 %464, i32 %465)
  %467 = load i32, i32* %54, align 4
  %468 = load i32, i32* %56, align 4
  %469 = add nsw i32 %468, %467
  store i32 %469, i32* %56, align 4
  %470 = load i32, i32* %54, align 4
  %471 = load i32, i32* %57, align 4
  %472 = sub nsw i32 %471, %470
  store i32 %472, i32* %57, align 4
  %473 = load i32, i32* %56, align 4
  %474 = load i32, i32* %57, align 4
  %475 = call i32 @CLIP_SH2_0_255(i32 %473, i32 %474)
  %476 = load i32, i32* %56, align 4
  %477 = load i32, i32* %56, align 4
  %478 = load i32, i32* %57, align 4
  %479 = load i32, i32* %57, align 4
  %480 = load i64, i64* %64, align 8
  %481 = load i64, i64* %65, align 8
  %482 = call i32 @PCKEV_B2_UB(i32 %476, i32 %477, i32 %478, i32 %479, i64 %480, i64 %481)
  %483 = load i64, i64* %30, align 8
  %484 = load i64, i64* %64, align 8
  %485 = load i64, i64* %41, align 8
  %486 = call i64 @__msa_bmnz_v(i64 %483, i64 %484, i64 %485)
  store i64 %486, i64* %64, align 8
  %487 = load i64, i64* %31, align 8
  %488 = load i64, i64* %65, align 8
  %489 = load i64, i64* %41, align 8
  %490 = call i64 @__msa_bmnz_v(i64 %487, i64 %488, i64 %489)
  store i64 %490, i64* %65, align 8
  %491 = load i64, i64* %64, align 8
  %492 = load i64, i64* %62, align 8
  %493 = load i64, i64* %63, align 8
  %494 = load i64, i64* %65, align 8
  %495 = load i64, i64* %62, align 8
  %496 = load i64, i64* %63, align 8
  %497 = call i32 @ILVR_B2_UB(i64 %491, i64 %492, i64 %493, i64 %494, i64 %495, i64 %496)
  %498 = load i64, i64* %63, align 8
  %499 = load i64, i64* %62, align 8
  %500 = load i32, i32* %66, align 4
  %501 = load i32, i32* %67, align 4
  %502 = call i32 @ILVRL_H2_SW(i64 %498, i64 %499, i32 %500, i32 %501)
  %503 = load i32*, i32** %6, align 8
  store i32* %503, i32** %11, align 8
  %504 = load i32, i32* %66, align 4
  %505 = call i32 @__msa_copy_u_w(i32 %504, i32 0)
  store i32 %505, i32* %12, align 4
  %506 = load i32, i32* %66, align 4
  %507 = call i32 @__msa_copy_u_w(i32 %506, i32 1)
  store i32 %507, i32* %13, align 4
  %508 = load i32, i32* %66, align 4
  %509 = call i32 @__msa_copy_u_w(i32 %508, i32 2)
  store i32 %509, i32* %14, align 4
  %510 = load i32, i32* %66, align 4
  %511 = call i32 @__msa_copy_u_w(i32 %510, i32 3)
  store i32 %511, i32* %15, align 4
  %512 = load i64*, i64** %10, align 8
  %513 = getelementptr inbounds i64, i64* %512, i64 0
  %514 = load i64, i64* %513, align 8
  %515 = icmp slt i64 %514, 0
  br i1 %515, label %516, label %522

516:                                              ; preds = %209
  %517 = load i32, i32* %7, align 4
  %518 = mul nsw i32 2, %517
  %519 = load i32*, i32** %11, align 8
  %520 = sext i32 %518 to i64
  %521 = getelementptr inbounds i32, i32* %519, i64 %520
  store i32* %521, i32** %11, align 8
  br label %539

522:                                              ; preds = %209
  %523 = load i32, i32* %12, align 4
  %524 = load i32*, i32** %11, align 8
  %525 = getelementptr inbounds i32, i32* %524, i64 -2
  %526 = call i32 @SW(i32 %523, i32* %525)
  %527 = load i32, i32* %7, align 4
  %528 = load i32*, i32** %11, align 8
  %529 = sext i32 %527 to i64
  %530 = getelementptr inbounds i32, i32* %528, i64 %529
  store i32* %530, i32** %11, align 8
  %531 = load i32, i32* %13, align 4
  %532 = load i32*, i32** %11, align 8
  %533 = getelementptr inbounds i32, i32* %532, i64 -2
  %534 = call i32 @SW(i32 %531, i32* %533)
  %535 = load i32, i32* %7, align 4
  %536 = load i32*, i32** %11, align 8
  %537 = sext i32 %535 to i64
  %538 = getelementptr inbounds i32, i32* %536, i64 %537
  store i32* %538, i32** %11, align 8
  br label %539

539:                                              ; preds = %522, %516
  %540 = load i64*, i64** %10, align 8
  %541 = getelementptr inbounds i64, i64* %540, i64 1
  %542 = load i64, i64* %541, align 8
  %543 = icmp slt i64 %542, 0
  br i1 %543, label %544, label %550

544:                                              ; preds = %539
  %545 = load i32, i32* %7, align 4
  %546 = mul nsw i32 2, %545
  %547 = load i32*, i32** %11, align 8
  %548 = sext i32 %546 to i64
  %549 = getelementptr inbounds i32, i32* %547, i64 %548
  store i32* %549, i32** %11, align 8
  br label %567

550:                                              ; preds = %539
  %551 = load i32, i32* %14, align 4
  %552 = load i32*, i32** %11, align 8
  %553 = getelementptr inbounds i32, i32* %552, i64 -2
  %554 = call i32 @SW(i32 %551, i32* %553)
  %555 = load i32, i32* %7, align 4
  %556 = load i32*, i32** %11, align 8
  %557 = sext i32 %555 to i64
  %558 = getelementptr inbounds i32, i32* %556, i64 %557
  store i32* %558, i32** %11, align 8
  %559 = load i32, i32* %15, align 4
  %560 = load i32*, i32** %11, align 8
  %561 = getelementptr inbounds i32, i32* %560, i64 -2
  %562 = call i32 @SW(i32 %559, i32* %561)
  %563 = load i32, i32* %7, align 4
  %564 = load i32*, i32** %11, align 8
  %565 = sext i32 %563 to i64
  %566 = getelementptr inbounds i32, i32* %564, i64 %565
  store i32* %566, i32** %11, align 8
  br label %567

567:                                              ; preds = %550, %544
  %568 = load i32, i32* %67, align 4
  %569 = call i32 @__msa_copy_u_w(i32 %568, i32 0)
  store i32 %569, i32* %12, align 4
  %570 = load i32, i32* %67, align 4
  %571 = call i32 @__msa_copy_u_w(i32 %570, i32 1)
  store i32 %571, i32* %13, align 4
  %572 = load i32, i32* %67, align 4
  %573 = call i32 @__msa_copy_u_w(i32 %572, i32 2)
  store i32 %573, i32* %14, align 4
  %574 = load i32, i32* %67, align 4
  %575 = call i32 @__msa_copy_u_w(i32 %574, i32 3)
  store i32 %575, i32* %15, align 4
  %576 = load i64*, i64** %10, align 8
  %577 = getelementptr inbounds i64, i64* %576, i64 2
  %578 = load i64, i64* %577, align 8
  %579 = icmp slt i64 %578, 0
  br i1 %579, label %580, label %586

580:                                              ; preds = %567
  %581 = load i32, i32* %7, align 4
  %582 = mul nsw i32 2, %581
  %583 = load i32*, i32** %11, align 8
  %584 = sext i32 %582 to i64
  %585 = getelementptr inbounds i32, i32* %583, i64 %584
  store i32* %585, i32** %11, align 8
  br label %603

586:                                              ; preds = %567
  %587 = load i32, i32* %12, align 4
  %588 = load i32*, i32** %11, align 8
  %589 = getelementptr inbounds i32, i32* %588, i64 -2
  %590 = call i32 @SW(i32 %587, i32* %589)
  %591 = load i32, i32* %7, align 4
  %592 = load i32*, i32** %11, align 8
  %593 = sext i32 %591 to i64
  %594 = getelementptr inbounds i32, i32* %592, i64 %593
  store i32* %594, i32** %11, align 8
  %595 = load i32, i32* %13, align 4
  %596 = load i32*, i32** %11, align 8
  %597 = getelementptr inbounds i32, i32* %596, i64 -2
  %598 = call i32 @SW(i32 %595, i32* %597)
  %599 = load i32, i32* %7, align 4
  %600 = load i32*, i32** %11, align 8
  %601 = sext i32 %599 to i64
  %602 = getelementptr inbounds i32, i32* %600, i64 %601
  store i32* %602, i32** %11, align 8
  br label %603

603:                                              ; preds = %586, %580
  %604 = load i64*, i64** %10, align 8
  %605 = getelementptr inbounds i64, i64* %604, i64 3
  %606 = load i64, i64* %605, align 8
  %607 = icmp sge i64 %606, 0
  br i1 %607, label %608, label %621

608:                                              ; preds = %603
  %609 = load i32, i32* %14, align 4
  %610 = load i32*, i32** %11, align 8
  %611 = getelementptr inbounds i32, i32* %610, i64 -2
  %612 = call i32 @SW(i32 %609, i32* %611)
  %613 = load i32, i32* %7, align 4
  %614 = load i32*, i32** %11, align 8
  %615 = sext i32 %613 to i64
  %616 = getelementptr inbounds i32, i32* %614, i64 %615
  store i32* %616, i32** %11, align 8
  %617 = load i32, i32* %15, align 4
  %618 = load i32*, i32** %11, align 8
  %619 = getelementptr inbounds i32, i32* %618, i64 -2
  %620 = call i32 @SW(i32 %617, i32* %619)
  br label %621

621:                                              ; preds = %608, %603
  ret void
}

declare dso_local i64 @__msa_fill_b(i32) #1

declare dso_local i32 @LD(i32*) #1

declare dso_local i64 @__msa_insert_d(i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_H2_SH(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @ILVL_H2_SH(i64, i64, i64, i64, i32, i32) #1

declare dso_local i64 @__msa_ilvr_w(i32, i32) #1

declare dso_local i64 @__msa_sldi_b(i64, i64, i32) #1

declare dso_local i64 @__msa_ilvl_w(i32, i32) #1

declare dso_local i64 @__msa_asub_u_b(i64, i64) #1

declare dso_local i64 @__msa_ilvr_b(i64, i64) #1

declare dso_local i64 @__msa_hadd_u_h(i64, i64) #1

declare dso_local i32 @__msa_srari_h(i32, i32) #1

declare dso_local i32 @ILVR_B2_SH(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @LW(i64*) #1

declare dso_local i64 @__msa_insert_w(i32, i32, i32) #1

declare dso_local i32 @CLIP_SH(i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i64, i64) #1

declare dso_local i64 @__msa_bmnz_v(i64, i64, i64) #1

declare dso_local i32 @__msa_hsub_u_h(i64, i64) #1

declare dso_local i32 @CLIP_SH2_0_255(i32, i32) #1

declare dso_local i32 @ILVR_B2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVRL_H2_SW(i64, i64, i32, i32) #1

declare dso_local i32 @__msa_copy_u_w(i32, i32) #1

declare dso_local i32 @SW(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
