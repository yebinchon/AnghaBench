; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_8t_8w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_8t_8w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_vt_biwgt_8t_8w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_biwgt_8t_8w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
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
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32* %2, i32** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32* %4, i32** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32* %6, i32** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %73 = load i32, i32* %15, align 4
  %74 = mul nsw i32 3, %73
  %75 = load i32*, i32** %14, align 8
  %76 = sext i32 %74 to i64
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32* %78, i32** %14, align 8
  %79 = load i32, i32* %24, align 4
  %80 = load i32, i32* %25, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %26, align 4
  %83 = shl i32 %81, %82
  store i32 %83, i32* %28, align 4
  %84 = load i32, i32* %22, align 4
  %85 = and i32 %84, 65535
  store i32 %85, i32* %22, align 4
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* %23, align 4
  %88 = shl i32 %87, 16
  %89 = or i32 %86, %88
  store i32 %89, i32* %29, align 4
  %90 = call i32 @__msa_ldi_w(i32 128)
  store i32 %90, i32* %72, align 4
  %91 = load i32, i32* %72, align 4
  %92 = shl i32 %91, 6
  store i32 %92, i32* %72, align 4
  %93 = load i32, i32* %28, align 4
  %94 = call i32 @__msa_fill_w(i32 %93)
  store i32 %94, i32* %70, align 4
  %95 = load i32, i32* %29, align 4
  %96 = call i32 @__msa_fill_w(i32 %95)
  store i32 %96, i32* %68, align 4
  %97 = load i32, i32* %26, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 @__msa_fill_w(i32 %98)
  store i32 %99, i32* %71, align 4
  %100 = load i32, i32* %23, align 4
  %101 = call i32 @__msa_fill_w(i32 %100)
  store i32 %101, i32* %69, align 4
  %102 = load i32, i32* %72, align 4
  %103 = load i32, i32* %69, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* %70, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %70, align 4
  %107 = load i32*, i32** %20, align 8
  %108 = call i32 @LD_SH(i32* %107)
  store i32 %108, i32* %63, align 4
  %109 = load i32, i32* %63, align 4
  %110 = load i32, i32* %59, align 4
  %111 = load i32, i32* %60, align 4
  %112 = load i32, i32* %61, align 4
  %113 = load i32, i32* %62, align 4
  %114 = call i32 @SPLATI_H4_SH(i32 %109, i32 0, i32 1, i32 2, i32 3, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32*, i32** %14, align 8
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %30, align 4
  %118 = load i32, i32* %31, align 4
  %119 = load i32, i32* %32, align 4
  %120 = load i32, i32* %33, align 4
  %121 = load i32, i32* %34, align 4
  %122 = load i32, i32* %35, align 4
  %123 = load i32, i32* %36, align 4
  %124 = call i32 @LD_SB7(i32* %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123)
  %125 = load i32, i32* %15, align 4
  %126 = mul nsw i32 7, %125
  %127 = load i32*, i32** %14, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %14, align 8
  %130 = load i32, i32* %30, align 4
  %131 = load i32, i32* %31, align 4
  %132 = load i32, i32* %32, align 4
  %133 = load i32, i32* %33, align 4
  %134 = load i32, i32* %34, align 4
  %135 = load i32, i32* %35, align 4
  %136 = load i32, i32* %36, align 4
  %137 = call i32 @XORI_B7_128_SB(i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* %31, align 4
  %139 = load i32, i32* %30, align 4
  %140 = load i32, i32* %33, align 4
  %141 = load i32, i32* %32, align 4
  %142 = load i32, i32* %35, align 4
  %143 = load i32, i32* %34, align 4
  %144 = load i32, i32* %32, align 4
  %145 = load i32, i32* %31, align 4
  %146 = load i32, i32* %45, align 4
  %147 = load i32, i32* %46, align 4
  %148 = load i32, i32* %47, align 4
  %149 = load i32, i32* %50, align 4
  %150 = call i32 @ILVR_B4_SB(i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %34, align 4
  %152 = load i32, i32* %33, align 4
  %153 = load i32, i32* %36, align 4
  %154 = load i32, i32* %35, align 4
  %155 = load i32, i32* %51, align 4
  %156 = load i32, i32* %52, align 4
  %157 = call i32 @ILVR_B2_SB(i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load i32, i32* %21, align 4
  %159 = ashr i32 %158, 2
  store i32 %159, i32* %27, align 4
  br label %160

160:                                              ; preds = %164, %13
  %161 = load i32, i32* %27, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %27, align 4
  %163 = icmp ne i32 %161, 0
  br i1 %163, label %164, label %299

164:                                              ; preds = %160
  %165 = load i32*, i32** %14, align 8
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* %37, align 4
  %168 = load i32, i32* %38, align 4
  %169 = load i32, i32* %39, align 4
  %170 = load i32, i32* %40, align 4
  %171 = call i32 @LD_SB4(i32* %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* %15, align 4
  %173 = mul nsw i32 4, %172
  %174 = load i32*, i32** %14, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32* %176, i32** %14, align 8
  %177 = load i32*, i32** %16, align 8
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %41, align 4
  %180 = load i32, i32* %42, align 4
  %181 = load i32, i32* %43, align 4
  %182 = load i32, i32* %44, align 4
  %183 = call i32 @LD_SH4(i32* %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182)
  %184 = load i32, i32* %17, align 4
  %185 = mul nsw i32 4, %184
  %186 = load i32*, i32** %16, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32* %188, i32** %16, align 8
  %189 = load i32, i32* %37, align 4
  %190 = load i32, i32* %38, align 4
  %191 = load i32, i32* %39, align 4
  %192 = load i32, i32* %40, align 4
  %193 = call i32 @XORI_B4_128_SB(i32 %189, i32 %190, i32 %191, i32 %192)
  %194 = load i32, i32* %37, align 4
  %195 = load i32, i32* %36, align 4
  %196 = load i32, i32* %38, align 4
  %197 = load i32, i32* %37, align 4
  %198 = load i32, i32* %39, align 4
  %199 = load i32, i32* %38, align 4
  %200 = load i32, i32* %40, align 4
  %201 = load i32, i32* %39, align 4
  %202 = load i32, i32* %48, align 4
  %203 = load i32, i32* %53, align 4
  %204 = load i32, i32* %49, align 4
  %205 = load i32, i32* %54, align 4
  %206 = call i32 @ILVR_B4_SB(i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205)
  %207 = load i32, i32* %45, align 4
  %208 = load i32, i32* %50, align 4
  %209 = load i32, i32* %46, align 4
  %210 = load i32, i32* %51, align 4
  %211 = load i32, i32* %59, align 4
  %212 = load i32, i32* %59, align 4
  %213 = load i32, i32* %59, align 4
  %214 = load i32, i32* %59, align 4
  %215 = load i32, i32* %55, align 4
  %216 = load i32, i32* %56, align 4
  %217 = load i32, i32* %57, align 4
  %218 = load i32, i32* %58, align 4
  %219 = call i32 @DOTP_SB4_SH(i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218)
  %220 = load i32, i32* %46, align 4
  %221 = load i32, i32* %51, align 4
  %222 = load i32, i32* %47, align 4
  %223 = load i32, i32* %52, align 4
  %224 = load i32, i32* %60, align 4
  %225 = load i32, i32* %60, align 4
  %226 = load i32, i32* %60, align 4
  %227 = load i32, i32* %60, align 4
  %228 = load i32, i32* %55, align 4
  %229 = load i32, i32* %56, align 4
  %230 = load i32, i32* %57, align 4
  %231 = load i32, i32* %58, align 4
  %232 = call i32 @DPADD_SB4_SH(i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231)
  %233 = load i32, i32* %47, align 4
  %234 = load i32, i32* %52, align 4
  %235 = load i32, i32* %48, align 4
  %236 = load i32, i32* %53, align 4
  %237 = load i32, i32* %61, align 4
  %238 = load i32, i32* %61, align 4
  %239 = load i32, i32* %61, align 4
  %240 = load i32, i32* %61, align 4
  %241 = load i32, i32* %55, align 4
  %242 = load i32, i32* %56, align 4
  %243 = load i32, i32* %57, align 4
  %244 = load i32, i32* %58, align 4
  %245 = call i32 @DPADD_SB4_SH(i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244)
  %246 = load i32, i32* %48, align 4
  %247 = load i32, i32* %53, align 4
  %248 = load i32, i32* %49, align 4
  %249 = load i32, i32* %54, align 4
  %250 = load i32, i32* %62, align 4
  %251 = load i32, i32* %62, align 4
  %252 = load i32, i32* %62, align 4
  %253 = load i32, i32* %62, align 4
  %254 = load i32, i32* %55, align 4
  %255 = load i32, i32* %56, align 4
  %256 = load i32, i32* %57, align 4
  %257 = load i32, i32* %58, align 4
  %258 = call i32 @DPADD_SB4_SH(i32 %246, i32 %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257)
  %259 = load i32, i32* %55, align 4
  %260 = load i32, i32* %56, align 4
  %261 = load i32, i32* %57, align 4
  %262 = load i32, i32* %58, align 4
  %263 = load i32, i32* %41, align 4
  %264 = load i32, i32* %42, align 4
  %265 = load i32, i32* %43, align 4
  %266 = load i32, i32* %44, align 4
  %267 = load i32, i32* %68, align 4
  %268 = load i32, i32* %71, align 4
  %269 = load i32, i32* %70, align 4
  %270 = load i32, i32* %64, align 4
  %271 = load i32, i32* %65, align 4
  %272 = load i32, i32* %66, align 4
  %273 = load i32, i32* %67, align 4
  %274 = call i32 @HEVC_BIW_RND_CLIP4(i32 %259, i32 %260, i32 %261, i32 %262, i32 %263, i32 %264, i32 %265, i32 %266, i32 %267, i32 %268, i32 %269, i32 %270, i32 %271, i32 %272, i32 %273)
  %275 = load i32, i32* %65, align 4
  %276 = load i32, i32* %64, align 4
  %277 = load i32, i32* %67, align 4
  %278 = load i32, i32* %66, align 4
  %279 = load i32, i32* %64, align 4
  %280 = load i32, i32* %65, align 4
  %281 = call i32 @PCKEV_B2_SH(i32 %275, i32 %276, i32 %277, i32 %278, i32 %279, i32 %280)
  %282 = load i32, i32* %64, align 4
  %283 = load i32, i32* %65, align 4
  %284 = load i32*, i32** %18, align 8
  %285 = load i32, i32* %19, align 4
  %286 = call i32 @ST_D4(i32 %282, i32 %283, i32 0, i32 1, i32 0, i32 1, i32* %284, i32 %285)
  %287 = load i32, i32* %19, align 4
  %288 = mul nsw i32 4, %287
  %289 = load i32*, i32** %18, align 8
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  store i32* %291, i32** %18, align 8
  %292 = load i32, i32* %47, align 4
  store i32 %292, i32* %45, align 4
  %293 = load i32, i32* %48, align 4
  store i32 %293, i32* %46, align 4
  %294 = load i32, i32* %49, align 4
  store i32 %294, i32* %47, align 4
  %295 = load i32, i32* %52, align 4
  store i32 %295, i32* %50, align 4
  %296 = load i32, i32* %53, align 4
  store i32 %296, i32* %51, align 4
  %297 = load i32, i32* %54, align 4
  store i32 %297, i32* %52, align 4
  %298 = load i32, i32* %40, align 4
  store i32 %298, i32* %36, align 4
  br label %160

299:                                              ; preds = %160
  ret void
}

declare dso_local i32 @__msa_ldi_w(i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB7(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B7_128_SB(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @DOTP_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
