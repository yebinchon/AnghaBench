; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcpred_msa.c_hevc_intra_pred_angular_lower_8width_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcpred_msa.c_hevc_intra_pred_angular_lower_8width_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.hevc_intra_pred_angular_lower_8width_msa.inv_angle = private unnamed_addr constant [7 x i32] [i32 -4096, i32 -1638, i32 -910, i32 -630, i32 -482, i32 -390, i32 -315], align 16
@intra_pred_angle_low = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32)* @hevc_intra_pred_angular_lower_8width_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_intra_pred_angular_lower_8width_msa(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [7 x i32], align 16
  %12 = alloca [100 x i32], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
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
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %59 = bitcast [7 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %59, i8* align 16 bitcast ([7 x i32]* @__const.hevc_intra_pred_angular_lower_8width_msa.inv_angle to i8*), i64 28, i1 false)
  %60 = getelementptr inbounds [100 x i32], [100 x i32]* %12, i64 0, i64 0
  %61 = getelementptr inbounds i32, i32* %60, i64 8
  store i32* %61, i32** %13, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 -1
  store i32* %63, i32** %15, align 8
  %64 = load i32*, i32** @intra_pred_angle_low, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %32, align 4
  %70 = load i32, i32* %32, align 4
  %71 = ashr i32 %70, 2
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %32, align 4
  store i32 %72, i32* %33, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 -1
  store i32* %74, i32** %14, align 8
  %75 = load i32, i32* %17, align 4
  %76 = icmp slt i32 %75, -1
  br i1 %76, label %77, label %126

77:                                               ; preds = %5
  %78 = load i32, i32* %10, align 4
  %79 = sub nsw i32 %78, 11
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %34, align 4
  %83 = load i32*, i32** %14, align 8
  %84 = call i32 @LW(i32* %83)
  store i32 %84, i32* %19, align 4
  %85 = load i32*, i32** %14, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = call i32 @LW(i32* %86)
  store i32 %87, i32* %20, align 4
  %88 = load i32*, i32** %14, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 8
  %90 = call i32 @LW(i32* %89)
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %19, align 4
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @SW(i32 %91, i32* %92)
  %94 = load i32, i32* %20, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = call i32 @SW(i32 %94, i32* %96)
  %98 = load i32, i32* %21, align 4
  %99 = load i32*, i32** %13, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 8
  %101 = call i32 @SW(i32 %98, i32* %100)
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %22, align 4
  br label %103

103:                                              ; preds = %121, %77
  %104 = load i32, i32* %22, align 4
  %105 = icmp sle i32 %104, -1
  br i1 %105, label %106, label %124

106:                                              ; preds = %103
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %34, align 4
  %109 = mul nsw i32 %107, %108
  %110 = add nsw i32 %109, 128
  %111 = ashr i32 %110, 8
  store i32 %111, i32* %18, align 4
  %112 = load i32*, i32** %15, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %13, align 8
  %118 = load i32, i32* %22, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %116, i32* %120, align 4
  br label %121

121:                                              ; preds = %106
  %122 = load i32, i32* %22, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %22, align 4
  br label %103

124:                                              ; preds = %103
  %125 = load i32*, i32** %13, align 8
  store i32* %125, i32** %14, align 8
  br label %126

126:                                              ; preds = %124, %5
  store i32 0, i32* %23, align 4
  br label %127

127:                                              ; preds = %303, %126
  %128 = load i32, i32* %23, align 4
  %129 = icmp slt i32 %128, 2
  br i1 %129, label %130, label %306

130:                                              ; preds = %127
  %131 = load i32*, i32** %8, align 8
  store i32* %131, i32** %16, align 8
  %132 = load i32, i32* %33, align 4
  %133 = ashr i32 %132, 5
  store i32 %133, i32* %24, align 4
  %134 = load i32, i32* %33, align 4
  %135 = and i32 %134, 31
  store i32 %135, i32* %25, align 4
  %136 = load i32, i32* %32, align 4
  %137 = load i32, i32* %33, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %33, align 4
  %139 = load i32, i32* %33, align 4
  %140 = ashr i32 %139, 5
  store i32 %140, i32* %26, align 4
  %141 = load i32, i32* %33, align 4
  %142 = and i32 %141, 31
  store i32 %142, i32* %27, align 4
  %143 = load i32, i32* %32, align 4
  %144 = load i32, i32* %33, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %33, align 4
  %146 = load i32, i32* %33, align 4
  %147 = ashr i32 %146, 5
  store i32 %147, i32* %28, align 4
  %148 = load i32, i32* %33, align 4
  %149 = and i32 %148, 31
  store i32 %149, i32* %29, align 4
  %150 = load i32, i32* %32, align 4
  %151 = load i32, i32* %33, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %33, align 4
  %153 = load i32, i32* %33, align 4
  %154 = ashr i32 %153, 5
  store i32 %154, i32* %30, align 4
  %155 = load i32, i32* %33, align 4
  %156 = and i32 %155, 31
  store i32 %156, i32* %31, align 4
  %157 = load i32, i32* %32, align 4
  %158 = load i32, i32* %33, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %33, align 4
  %160 = load i32*, i32** %14, align 8
  %161 = load i32, i32* %24, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = call i32 @LD_SB(i32* %164)
  store i32 %165, i32* %35, align 4
  %166 = load i32*, i32** %14, align 8
  %167 = load i32, i32* %26, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = call i32 @LD_SB(i32* %170)
  store i32 %171, i32* %36, align 4
  %172 = load i32*, i32** %14, align 8
  %173 = load i32, i32* %28, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = call i32 @LD_SB(i32* %176)
  store i32 %177, i32* %37, align 4
  %178 = load i32*, i32** %14, align 8
  %179 = load i32, i32* %30, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  %183 = call i32 @LD_SB(i32* %182)
  store i32 %183, i32* %38, align 4
  %184 = load i32, i32* %25, align 4
  %185 = call i32 @__msa_fill_h(i32 %184)
  store i32 %185, i32* %51, align 4
  %186 = load i32, i32* %25, align 4
  %187 = sub nsw i32 32, %186
  %188 = call i32 @__msa_fill_h(i32 %187)
  store i32 %188, i32* %52, align 4
  %189 = load i32, i32* %27, align 4
  %190 = call i32 @__msa_fill_h(i32 %189)
  store i32 %190, i32* %53, align 4
  %191 = load i32, i32* %27, align 4
  %192 = sub nsw i32 32, %191
  %193 = call i32 @__msa_fill_h(i32 %192)
  store i32 %193, i32* %54, align 4
  %194 = load i32, i32* %29, align 4
  %195 = call i32 @__msa_fill_h(i32 %194)
  store i32 %195, i32* %55, align 4
  %196 = load i32, i32* %29, align 4
  %197 = sub nsw i32 32, %196
  %198 = call i32 @__msa_fill_h(i32 %197)
  store i32 %198, i32* %56, align 4
  %199 = load i32, i32* %31, align 4
  %200 = call i32 @__msa_fill_h(i32 %199)
  store i32 %200, i32* %57, align 4
  %201 = load i32, i32* %31, align 4
  %202 = sub nsw i32 32, %201
  %203 = call i32 @__msa_fill_h(i32 %202)
  store i32 %203, i32* %58, align 4
  %204 = load i32, i32* %35, align 4
  %205 = load i32, i32* %43, align 4
  %206 = load i32, i32* %44, align 4
  %207 = call i32 @UNPCK_UB_SH(i32 %204, i32 %205, i32 %206)
  %208 = load i32, i32* %36, align 4
  %209 = load i32, i32* %45, align 4
  %210 = load i32, i32* %46, align 4
  %211 = call i32 @UNPCK_UB_SH(i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* %37, align 4
  %213 = load i32, i32* %47, align 4
  %214 = load i32, i32* %48, align 4
  %215 = call i32 @UNPCK_UB_SH(i32 %212, i32 %213, i32 %214)
  %216 = load i32, i32* %38, align 4
  %217 = load i32, i32* %49, align 4
  %218 = load i32, i32* %50, align 4
  %219 = call i32 @UNPCK_UB_SH(i32 %216, i32 %217, i32 %218)
  %220 = load i32, i32* %44, align 4
  %221 = load i32, i32* %43, align 4
  %222 = load i32, i32* %46, align 4
  %223 = load i32, i32* %45, align 4
  %224 = load i32, i32* %48, align 4
  %225 = load i32, i32* %47, align 4
  %226 = load i32, i32* %50, align 4
  %227 = load i32, i32* %49, align 4
  %228 = load i32, i32* %44, align 4
  %229 = load i32, i32* %46, align 4
  %230 = load i32, i32* %48, align 4
  %231 = load i32, i32* %50, align 4
  %232 = call i32 @SLDI_B4_SH(i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 2, i32 %228, i32 %229, i32 %230, i32 %231)
  %233 = load i32, i32* %44, align 4
  %234 = load i32, i32* %51, align 4
  %235 = load i32, i32* %46, align 4
  %236 = load i32, i32* %53, align 4
  %237 = load i32, i32* %48, align 4
  %238 = load i32, i32* %55, align 4
  %239 = load i32, i32* %50, align 4
  %240 = load i32, i32* %57, align 4
  %241 = load i32, i32* %44, align 4
  %242 = load i32, i32* %46, align 4
  %243 = load i32, i32* %48, align 4
  %244 = load i32, i32* %50, align 4
  %245 = call i32 @MUL4(i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244)
  %246 = load i32, i32* %43, align 4
  %247 = load i32, i32* %52, align 4
  %248 = mul nsw i32 %246, %247
  %249 = load i32, i32* %44, align 4
  %250 = add nsw i32 %249, %248
  store i32 %250, i32* %44, align 4
  %251 = load i32, i32* %45, align 4
  %252 = load i32, i32* %54, align 4
  %253 = mul nsw i32 %251, %252
  %254 = load i32, i32* %46, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* %46, align 4
  %256 = load i32, i32* %47, align 4
  %257 = load i32, i32* %56, align 4
  %258 = mul nsw i32 %256, %257
  %259 = load i32, i32* %48, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* %48, align 4
  %261 = load i32, i32* %49, align 4
  %262 = load i32, i32* %58, align 4
  %263 = mul nsw i32 %261, %262
  %264 = load i32, i32* %50, align 4
  %265 = add nsw i32 %264, %263
  store i32 %265, i32* %50, align 4
  %266 = load i32, i32* %44, align 4
  %267 = load i32, i32* %46, align 4
  %268 = load i32, i32* %48, align 4
  %269 = load i32, i32* %50, align 4
  %270 = call i32 @SRARI_H4_SH(i32 %266, i32 %267, i32 %268, i32 %269, i32 5)
  %271 = load i32, i32* %44, align 4
  %272 = load i32, i32* %44, align 4
  %273 = load i32, i32* %46, align 4
  %274 = load i32, i32* %46, align 4
  %275 = load i32, i32* %48, align 4
  %276 = load i32, i32* %48, align 4
  %277 = load i32, i32* %50, align 4
  %278 = load i32, i32* %50, align 4
  %279 = load i32, i32* %39, align 4
  %280 = load i32, i32* %40, align 4
  %281 = load i32, i32* %41, align 4
  %282 = load i32, i32* %42, align 4
  %283 = call i32 @PCKEV_B4_SB(i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 %276, i32 %277, i32 %278, i32 %279, i32 %280, i32 %281, i32 %282)
  %284 = load i32, i32* %40, align 4
  %285 = load i32, i32* %39, align 4
  %286 = load i32, i32* %42, align 4
  %287 = load i32, i32* %41, align 4
  %288 = load i32, i32* %43, align 4
  %289 = load i32, i32* %44, align 4
  %290 = call i32 @ILVR_B2_SH(i32 %284, i32 %285, i32 %286, i32 %287, i32 %288, i32 %289)
  %291 = load i32, i32* %44, align 4
  %292 = load i32, i32* %43, align 4
  %293 = load i32, i32* %46, align 4
  %294 = load i32, i32* %47, align 4
  %295 = call i32 @ILVRL_H2_SH(i32 %291, i32 %292, i32 %293, i32 %294)
  %296 = load i32, i32* %46, align 4
  %297 = load i32, i32* %47, align 4
  %298 = load i32*, i32** %16, align 8
  %299 = load i32, i32* %9, align 4
  %300 = call i32 @ST_W8(i32 %296, i32 %297, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %298, i32 %299)
  %301 = load i32*, i32** %8, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 4
  store i32* %302, i32** %8, align 8
  br label %303

303:                                              ; preds = %130
  %304 = load i32, i32* %23, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %23, align 4
  br label %127

306:                                              ; preds = %127
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LW(i32*) #2

declare dso_local i32 @SW(i32, i32*) #2

declare dso_local i32 @LD_SB(i32*) #2

declare dso_local i32 @__msa_fill_h(i32) #2

declare dso_local i32 @UNPCK_UB_SH(i32, i32, i32) #2

declare dso_local i32 @SLDI_B4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @MUL4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B2_SH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #2

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
