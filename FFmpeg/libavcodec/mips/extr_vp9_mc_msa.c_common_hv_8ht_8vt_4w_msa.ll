; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_8ht_8vt_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_8ht_8vt_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32)* @common_hv_8ht_8vt_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hv_8ht_8vt_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
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
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
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
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca i64, align 8
  %56 = alloca i64, align 8
  %57 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %58 = load i32*, i32** @mc_filt_mask_arr, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 16
  %60 = call i64 @LD_UB(i32* %59)
  store i64 %60, i64* %31, align 8
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 3, %61
  %63 = add nsw i32 3, %62
  %64 = load i32*, i32** %8, align 8
  %65 = sext i32 %63 to i64
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32* %67, i32** %8, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i64 @LD_SH(i32* %68)
  store i64 %69, i64* %53, align 8
  %70 = load i64, i64* %53, align 8
  %71 = load i32, i32* %27, align 4
  %72 = load i32, i32* %28, align 4
  %73 = load i32, i32* %29, align 4
  %74 = load i32, i32* %30, align 4
  %75 = call i32 @SPLATI_H4_SB(i64 %70, i32 0, i32 1, i32 2, i32 3, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load i64, i64* %31, align 8
  %77 = add nsw i64 %76, 2
  store i64 %77, i64* %32, align 8
  %78 = load i64, i64* %31, align 8
  %79 = add nsw i64 %78, 4
  store i64 %79, i64* %33, align 8
  %80 = load i64, i64* %31, align 8
  %81 = add nsw i64 %80, 6
  store i64 %81, i64* %34, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %22, align 4
  %91 = call i32 @LD_SB7(i32* %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %21, align 4
  %98 = load i32, i32* %22, align 4
  %99 = call i32 @XORI_B7_128_SB(i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = mul nsw i32 7, %100
  %102 = load i32*, i32** %8, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %8, align 8
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i64, i64* %31, align 8
  %108 = load i64, i64* %32, align 8
  %109 = load i64, i64* %33, align 8
  %110 = load i64, i64* %34, align 8
  %111 = load i32, i32* %27, align 4
  %112 = load i32, i32* %28, align 4
  %113 = load i32, i32* %29, align 4
  %114 = load i32, i32* %30, align 4
  %115 = call i64 @HORIZ_8TAP_FILT(i32 %105, i32 %106, i64 %107, i64 %108, i64 %109, i64 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  store i64 %115, i64* %36, align 8
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load i64, i64* %31, align 8
  %119 = load i64, i64* %32, align 8
  %120 = load i64, i64* %33, align 8
  %121 = load i64, i64* %34, align 8
  %122 = load i32, i32* %27, align 4
  %123 = load i32, i32* %28, align 4
  %124 = load i32, i32* %29, align 4
  %125 = load i32, i32* %30, align 4
  %126 = call i64 @HORIZ_8TAP_FILT(i32 %116, i32 %117, i64 %118, i64 %119, i64 %120, i64 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  store i64 %126, i64* %38, align 8
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* %21, align 4
  %129 = load i64, i64* %31, align 8
  %130 = load i64, i64* %32, align 8
  %131 = load i64, i64* %33, align 8
  %132 = load i64, i64* %34, align 8
  %133 = load i32, i32* %27, align 4
  %134 = load i32, i32* %28, align 4
  %135 = load i32, i32* %29, align 4
  %136 = load i32, i32* %30, align 4
  %137 = call i64 @HORIZ_8TAP_FILT(i32 %127, i32 %128, i64 %129, i64 %130, i64 %131, i64 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  store i64 %137, i64* %40, align 8
  %138 = load i32, i32* %21, align 4
  %139 = load i32, i32* %22, align 4
  %140 = load i64, i64* %31, align 8
  %141 = load i64, i64* %32, align 8
  %142 = load i64, i64* %33, align 8
  %143 = load i64, i64* %34, align 8
  %144 = load i32, i32* %27, align 4
  %145 = load i32, i32* %28, align 4
  %146 = load i32, i32* %29, align 4
  %147 = load i32, i32* %30, align 4
  %148 = call i64 @HORIZ_8TAP_FILT(i32 %138, i32 %139, i64 %140, i64 %141, i64 %142, i64 %143, i32 %144, i32 %145, i32 %146, i32 %147)
  store i64 %148, i64* %41, align 8
  %149 = load i64, i64* %38, align 8
  %150 = load i64, i64* %36, align 8
  %151 = load i64, i64* %40, align 8
  %152 = load i64, i64* %38, align 8
  %153 = load i64, i64* %37, align 8
  %154 = load i64, i64* %39, align 8
  %155 = call i32 @SLDI_B2_SH(i64 %149, i64 %150, i64 %151, i64 %152, i32 8, i64 %153, i64 %154)
  %156 = load i32*, i32** %13, align 8
  %157 = call i64 @LD_SH(i32* %156)
  store i64 %157, i64* %53, align 8
  %158 = load i64, i64* %53, align 8
  %159 = load i64, i64* %54, align 8
  %160 = load i64, i64* %55, align 8
  %161 = load i64, i64* %56, align 8
  %162 = load i64, i64* %57, align 8
  %163 = call i32 @SPLATI_H4_SH(i64 %158, i32 0, i32 1, i32 2, i32 3, i64 %159, i64 %160, i64 %161, i64 %162)
  %164 = load i64, i64* %36, align 8
  %165 = load i64, i64* %37, align 8
  %166 = load i64, i64* %38, align 8
  %167 = load i64, i64* %39, align 8
  %168 = load i64, i64* %48, align 8
  %169 = load i64, i64* %49, align 8
  %170 = call i32 @ILVEV_B2_SH(i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169)
  %171 = load i64, i64* %41, align 8
  %172 = trunc i64 %171 to i32
  %173 = load i64, i64* %40, align 8
  %174 = trunc i64 %173 to i32
  %175 = call i64 @__msa_ilvev_b(i32 %172, i32 %174)
  store i64 %175, i64* %50, align 8
  %176 = load i32, i32* %14, align 4
  %177 = ashr i32 %176, 2
  store i32 %177, i32* %15, align 4
  br label %178

178:                                              ; preds = %182, %7
  %179 = load i32, i32* %15, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %15, align 4
  %181 = icmp ne i32 %179, 0
  br i1 %181, label %182, label %282

182:                                              ; preds = %178
  %183 = load i32*, i32** %8, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %23, align 4
  %186 = load i32, i32* %24, align 4
  %187 = load i32, i32* %25, align 4
  %188 = load i32, i32* %26, align 4
  %189 = call i32 @LD_SB4(i32* %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = load i32, i32* %23, align 4
  %191 = load i32, i32* %24, align 4
  %192 = load i32, i32* %25, align 4
  %193 = load i32, i32* %26, align 4
  %194 = call i32 @XORI_B4_128_SB(i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %9, align 4
  %196 = mul nsw i32 4, %195
  %197 = load i32*, i32** %8, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  store i32* %199, i32** %8, align 8
  %200 = load i32, i32* %23, align 4
  %201 = load i32, i32* %24, align 4
  %202 = load i64, i64* %31, align 8
  %203 = load i64, i64* %32, align 8
  %204 = load i64, i64* %33, align 8
  %205 = load i64, i64* %34, align 8
  %206 = load i32, i32* %27, align 4
  %207 = load i32, i32* %28, align 4
  %208 = load i32, i32* %29, align 4
  %209 = load i32, i32* %30, align 4
  %210 = call i64 @HORIZ_8TAP_FILT(i32 %200, i32 %201, i64 %202, i64 %203, i64 %204, i64 %205, i32 %206, i32 %207, i32 %208, i32 %209)
  store i64 %210, i64* %43, align 8
  %211 = load i64, i64* %43, align 8
  %212 = trunc i64 %211 to i32
  %213 = load i64, i64* %41, align 8
  %214 = trunc i64 %213 to i32
  %215 = call i64 @__msa_sldi_b(i32 %212, i32 %214, i32 8)
  store i64 %215, i64* %42, align 8
  %216 = load i64, i64* %43, align 8
  %217 = trunc i64 %216 to i32
  %218 = load i64, i64* %42, align 8
  %219 = trunc i64 %218 to i32
  %220 = call i64 @__msa_ilvev_b(i32 %217, i32 %219)
  store i64 %220, i64* %51, align 8
  %221 = load i64, i64* %48, align 8
  %222 = load i64, i64* %49, align 8
  %223 = load i64, i64* %50, align 8
  %224 = load i64, i64* %51, align 8
  %225 = load i64, i64* %54, align 8
  %226 = load i64, i64* %55, align 8
  %227 = load i64, i64* %56, align 8
  %228 = load i64, i64* %57, align 8
  %229 = call i64 @FILT_8TAP_DPADD_S_H(i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226, i64 %227, i64 %228)
  store i64 %229, i64* %46, align 8
  %230 = load i32, i32* %25, align 4
  %231 = load i32, i32* %26, align 4
  %232 = load i64, i64* %31, align 8
  %233 = load i64, i64* %32, align 8
  %234 = load i64, i64* %33, align 8
  %235 = load i64, i64* %34, align 8
  %236 = load i32, i32* %27, align 4
  %237 = load i32, i32* %28, align 4
  %238 = load i32, i32* %29, align 4
  %239 = load i32, i32* %30, align 4
  %240 = call i64 @HORIZ_8TAP_FILT(i32 %230, i32 %231, i64 %232, i64 %233, i64 %234, i64 %235, i32 %236, i32 %237, i32 %238, i32 %239)
  store i64 %240, i64* %45, align 8
  %241 = load i64, i64* %45, align 8
  %242 = trunc i64 %241 to i32
  %243 = load i64, i64* %43, align 8
  %244 = trunc i64 %243 to i32
  %245 = call i64 @__msa_sldi_b(i32 %242, i32 %244, i32 8)
  store i64 %245, i64* %44, align 8
  %246 = load i64, i64* %45, align 8
  %247 = trunc i64 %246 to i32
  %248 = load i64, i64* %44, align 8
  %249 = trunc i64 %248 to i32
  %250 = call i64 @__msa_ilvev_b(i32 %247, i32 %249)
  store i64 %250, i64* %52, align 8
  %251 = load i64, i64* %49, align 8
  %252 = load i64, i64* %50, align 8
  %253 = load i64, i64* %51, align 8
  %254 = load i64, i64* %52, align 8
  %255 = load i64, i64* %54, align 8
  %256 = load i64, i64* %55, align 8
  %257 = load i64, i64* %56, align 8
  %258 = load i64, i64* %57, align 8
  %259 = call i64 @FILT_8TAP_DPADD_S_H(i64 %251, i64 %252, i64 %253, i64 %254, i64 %255, i64 %256, i64 %257, i64 %258)
  store i64 %259, i64* %47, align 8
  %260 = load i64, i64* %46, align 8
  %261 = load i64, i64* %47, align 8
  %262 = call i32 @SRARI_H2_SH(i64 %260, i64 %261, i32 7)
  %263 = load i64, i64* %46, align 8
  %264 = load i64, i64* %47, align 8
  %265 = call i32 @SAT_SH2_SH(i64 %263, i64 %264, i32 7)
  %266 = load i64, i64* %46, align 8
  %267 = load i64, i64* %47, align 8
  %268 = call i64 @PCKEV_XORI128_UB(i64 %266, i64 %267)
  store i64 %268, i64* %35, align 8
  %269 = load i64, i64* %35, align 8
  %270 = load i32*, i32** %10, align 8
  %271 = load i32, i32* %11, align 4
  %272 = call i32 @ST_W4(i64 %269, i32 0, i32 1, i32 2, i32 3, i32* %270, i32 %271)
  %273 = load i32, i32* %11, align 4
  %274 = mul nsw i32 4, %273
  %275 = load i32*, i32** %10, align 8
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  store i32* %277, i32** %10, align 8
  %278 = load i64, i64* %45, align 8
  store i64 %278, i64* %41, align 8
  %279 = load i64, i64* %50, align 8
  store i64 %279, i64* %48, align 8
  %280 = load i64, i64* %51, align 8
  store i64 %280, i64* %49, align 8
  %281 = load i64, i64* %52, align 8
  store i64 %281, i64* %50, align 8
  br label %178

282:                                              ; preds = %178
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB7(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B7_128_SB(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @HORIZ_8TAP_FILT(i32, i32, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SLDI_B2_SH(i64, i64, i64, i64, i32, i64, i64) #1

declare dso_local i32 @SPLATI_H4_SH(i64, i32, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @ILVEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvev_b(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i64 @__msa_sldi_b(i32, i32, i32) #1

declare dso_local i64 @FILT_8TAP_DPADD_S_H(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H2_SH(i64, i64, i32) #1

declare dso_local i32 @SAT_SH2_SH(i64, i64, i32) #1

declare dso_local i64 @PCKEV_XORI128_UB(i64, i64) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
