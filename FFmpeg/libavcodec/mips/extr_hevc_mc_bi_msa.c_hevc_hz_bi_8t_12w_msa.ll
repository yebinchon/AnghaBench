; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_8t_12w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_8t_12w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_bi_8t_12w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_bi_8t_12w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 -3
  store i32* %51, i32** %9, align 8
  %52 = call i32 @__msa_ldi_h(i32 128)
  store i32 %52, i32* %49, align 4
  %53 = load i32, i32* %49, align 4
  %54 = shl i32 %53, 6
  store i32 %54, i32* %49, align 4
  %55 = load i32*, i32** %15, align 8
  %56 = call i32 @LD_SH(i32* %55)
  store i32 %56, i32* %48, align 4
  %57 = load i32, i32* %48, align 4
  %58 = load i32, i32* %29, align 4
  %59 = load i32, i32* %30, align 4
  %60 = load i32, i32* %31, align 4
  %61 = load i32, i32* %32, align 4
  %62 = call i32 @SPLATI_H4_SH(i32 %57, i32 0, i32 1, i32 2, i32 3, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %64 = call i64 @LD_SB(i32* %63)
  store i64 %64, i64* %33, align 8
  %65 = load i64, i64* %33, align 8
  %66 = add nsw i64 %65, 2
  store i64 %66, i64* %34, align 8
  %67 = load i64, i64* %33, align 8
  %68 = add nsw i64 %67, 4
  store i64 %68, i64* %35, align 8
  %69 = load i64, i64* %33, align 8
  %70 = add nsw i64 %69, 6
  store i64 %70, i64* %36, align 8
  %71 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 16
  %73 = call i64 @LD_SB(i32* %72)
  store i64 %73, i64* %37, align 8
  %74 = load i64, i64* %37, align 8
  %75 = add nsw i64 %74, 2
  store i64 %75, i64* %38, align 8
  %76 = load i64, i64* %37, align 8
  %77 = add nsw i64 %76, 4
  store i64 %77, i64* %39, align 8
  %78 = load i64, i64* %37, align 8
  %79 = add nsw i64 %78, 6
  store i64 %79, i64* %40, align 8
  store i32 8, i32* %17, align 4
  br label %80

80:                                               ; preds = %84, %8
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %17, align 4
  %83 = icmp ne i32 %81, 0
  br i1 %83, label %84, label %280

84:                                               ; preds = %80
  %85 = load i32*, i32** %9, align 8
  %86 = load i64, i64* %22, align 8
  %87 = load i64, i64* %23, align 8
  %88 = call i32 @LD_SB2(i32* %85, i32 8, i64 %86, i64 %87)
  %89 = load i32, i32* %10, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %9, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = load i64, i64* %24, align 8
  %95 = load i64, i64* %25, align 8
  %96 = call i32 @LD_SB2(i32* %93, i32 8, i64 %94, i64 %95)
  %97 = load i32, i32* %10, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %9, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %44, align 4
  %103 = load i32, i32* %45, align 4
  %104 = call i32 @LD_SH2(i32* %101, i32 8, i32 %102, i32 %103)
  %105 = load i32, i32* %12, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %11, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = load i32, i32* %46, align 4
  %111 = load i32, i32* %47, align 4
  %112 = call i32 @LD_SH2(i32* %109, i32 8, i32 %110, i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = load i32*, i32** %11, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %11, align 8
  %117 = load i64, i64* %22, align 8
  %118 = load i64, i64* %23, align 8
  %119 = load i64, i64* %24, align 8
  %120 = load i64, i64* %25, align 8
  %121 = call i32 @XORI_B4_128_SB(i64 %117, i64 %118, i64 %119, i64 %120)
  %122 = load i32, i32* %49, align 4
  store i32 %122, i32* %41, align 4
  %123 = load i32, i32* %49, align 4
  store i32 %123, i32* %42, align 4
  %124 = load i32, i32* %49, align 4
  store i32 %124, i32* %43, align 4
  %125 = load i64, i64* %22, align 8
  %126 = load i64, i64* %22, align 8
  %127 = load i64, i64* %23, align 8
  %128 = load i64, i64* %25, align 8
  %129 = load i64, i64* %24, align 8
  %130 = load i64, i64* %24, align 8
  %131 = load i64, i64* %33, align 8
  %132 = load i64, i64* %37, align 8
  %133 = load i64, i64* %33, align 8
  %134 = load i64, i64* %26, align 8
  %135 = load i64, i64* %27, align 8
  %136 = load i64, i64* %28, align 8
  %137 = call i32 @VSHF_B3_SB(i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136)
  %138 = load i64, i64* %26, align 8
  %139 = load i64, i64* %27, align 8
  %140 = load i32, i32* %29, align 4
  %141 = load i32, i32* %29, align 4
  %142 = load i32, i32* %41, align 4
  %143 = load i32, i32* %42, align 4
  %144 = call i32 @DPADD_SB2_SH(i64 %138, i64 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load i32, i32* %43, align 4
  %146 = load i64, i64* %28, align 8
  %147 = load i32, i32* %29, align 4
  %148 = sext i32 %147 to i64
  %149 = call i32 @__msa_dpadd_s_h(i32 %145, i64 %146, i64 %148)
  store i32 %149, i32* %43, align 4
  %150 = load i64, i64* %22, align 8
  %151 = load i64, i64* %22, align 8
  %152 = load i64, i64* %23, align 8
  %153 = load i64, i64* %25, align 8
  %154 = load i64, i64* %24, align 8
  %155 = load i64, i64* %24, align 8
  %156 = load i64, i64* %34, align 8
  %157 = load i64, i64* %38, align 8
  %158 = load i64, i64* %34, align 8
  %159 = load i64, i64* %26, align 8
  %160 = load i64, i64* %27, align 8
  %161 = load i64, i64* %28, align 8
  %162 = call i32 @VSHF_B3_SB(i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161)
  %163 = load i64, i64* %26, align 8
  %164 = load i64, i64* %27, align 8
  %165 = load i32, i32* %30, align 4
  %166 = load i32, i32* %30, align 4
  %167 = load i32, i32* %41, align 4
  %168 = load i32, i32* %42, align 4
  %169 = call i32 @DPADD_SB2_SH(i64 %163, i64 %164, i32 %165, i32 %166, i32 %167, i32 %168)
  %170 = load i32, i32* %43, align 4
  %171 = load i64, i64* %28, align 8
  %172 = load i32, i32* %30, align 4
  %173 = sext i32 %172 to i64
  %174 = call i32 @__msa_dpadd_s_h(i32 %170, i64 %171, i64 %173)
  store i32 %174, i32* %43, align 4
  %175 = load i64, i64* %22, align 8
  %176 = load i64, i64* %22, align 8
  %177 = load i64, i64* %23, align 8
  %178 = load i64, i64* %25, align 8
  %179 = load i64, i64* %24, align 8
  %180 = load i64, i64* %24, align 8
  %181 = load i64, i64* %35, align 8
  %182 = load i64, i64* %39, align 8
  %183 = load i64, i64* %35, align 8
  %184 = load i64, i64* %26, align 8
  %185 = load i64, i64* %27, align 8
  %186 = load i64, i64* %28, align 8
  %187 = call i32 @VSHF_B3_SB(i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186)
  %188 = load i64, i64* %26, align 8
  %189 = load i64, i64* %27, align 8
  %190 = load i32, i32* %31, align 4
  %191 = load i32, i32* %31, align 4
  %192 = load i32, i32* %41, align 4
  %193 = load i32, i32* %42, align 4
  %194 = call i32 @DPADD_SB2_SH(i64 %188, i64 %189, i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %43, align 4
  %196 = load i64, i64* %28, align 8
  %197 = load i32, i32* %31, align 4
  %198 = sext i32 %197 to i64
  %199 = call i32 @__msa_dpadd_s_h(i32 %195, i64 %196, i64 %198)
  store i32 %199, i32* %43, align 4
  %200 = load i64, i64* %22, align 8
  %201 = load i64, i64* %22, align 8
  %202 = load i64, i64* %23, align 8
  %203 = load i64, i64* %25, align 8
  %204 = load i64, i64* %24, align 8
  %205 = load i64, i64* %24, align 8
  %206 = load i64, i64* %36, align 8
  %207 = load i64, i64* %40, align 8
  %208 = load i64, i64* %36, align 8
  %209 = load i64, i64* %26, align 8
  %210 = load i64, i64* %27, align 8
  %211 = load i64, i64* %28, align 8
  %212 = call i32 @VSHF_B3_SB(i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211)
  %213 = load i64, i64* %26, align 8
  %214 = load i64, i64* %27, align 8
  %215 = load i32, i32* %32, align 4
  %216 = load i32, i32* %32, align 4
  %217 = load i32, i32* %41, align 4
  %218 = load i32, i32* %42, align 4
  %219 = call i32 @DPADD_SB2_SH(i64 %213, i64 %214, i32 %215, i32 %216, i32 %217, i32 %218)
  %220 = load i32, i32* %43, align 4
  %221 = load i64, i64* %28, align 8
  %222 = load i32, i32* %32, align 4
  %223 = sext i32 %222 to i64
  %224 = call i32 @__msa_dpadd_s_h(i32 %220, i64 %221, i64 %223)
  store i32 %224, i32* %43, align 4
  %225 = load i32, i32* %47, align 4
  %226 = load i32, i32* %45, align 4
  %227 = call i64 @__msa_pckev_d(i32 %225, i32 %226)
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %45, align 4
  %229 = load i32, i32* %44, align 4
  %230 = load i32, i32* %45, align 4
  %231 = load i32, i32* %41, align 4
  %232 = load i32, i32* %42, align 4
  %233 = load i32, i32* %41, align 4
  %234 = load i32, i32* %42, align 4
  %235 = call i32 @HEVC_BI_RND_CLIP2(i32 %229, i32 %230, i32 %231, i32 %232, i32 7, i32 %233, i32 %234)
  %236 = load i32, i32* %46, align 4
  %237 = load i32, i32* %43, align 4
  %238 = call i32 @__msa_adds_s_h(i32 %236, i32 %237)
  store i32 %238, i32* %43, align 4
  %239 = load i32, i32* %43, align 4
  %240 = call i32 @__msa_srari_h(i32 %239, i32 7)
  store i32 %240, i32* %43, align 4
  %241 = load i32, i32* %43, align 4
  %242 = call i32 @CLIP_SH_0_255(i32 %241)
  %243 = load i32, i32* %42, align 4
  %244 = load i32, i32* %41, align 4
  %245 = load i32, i32* %43, align 4
  %246 = load i32, i32* %43, align 4
  %247 = load i32, i32* %41, align 4
  %248 = load i32, i32* %42, align 4
  %249 = call i32 @PCKEV_B2_SH(i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248)
  %250 = load i32, i32* %41, align 4
  %251 = call i32 @__msa_copy_s_d(i32 %250, i32 0)
  store i32 %251, i32* %20, align 4
  %252 = load i32, i32* %41, align 4
  %253 = call i32 @__msa_copy_s_w(i32 %252, i32 2)
  store i32 %253, i32* %18, align 4
  %254 = load i32, i32* %42, align 4
  %255 = call i32 @__msa_copy_s_d(i32 %254, i32 0)
  store i32 %255, i32* %21, align 4
  %256 = load i32, i32* %41, align 4
  %257 = call i32 @__msa_copy_s_w(i32 %256, i32 3)
  store i32 %257, i32* %19, align 4
  %258 = load i32, i32* %20, align 4
  %259 = load i32*, i32** %13, align 8
  %260 = call i32 @SD(i32 %258, i32* %259)
  %261 = load i32, i32* %18, align 4
  %262 = load i32*, i32** %13, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 8
  %264 = call i32 @SW(i32 %261, i32* %263)
  %265 = load i32, i32* %14, align 4
  %266 = load i32*, i32** %13, align 8
  %267 = sext i32 %265 to i64
  %268 = getelementptr inbounds i32, i32* %266, i64 %267
  store i32* %268, i32** %13, align 8
  %269 = load i32, i32* %21, align 4
  %270 = load i32*, i32** %13, align 8
  %271 = call i32 @SD(i32 %269, i32* %270)
  %272 = load i32, i32* %19, align 4
  %273 = load i32*, i32** %13, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 8
  %275 = call i32 @SW(i32 %272, i32* %274)
  %276 = load i32, i32* %14, align 4
  %277 = load i32*, i32** %13, align 8
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  store i32* %279, i32** %13, align 8
  br label %80

280:                                              ; preds = %80
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B3_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_dpadd_s_h(i32, i64, i64) #1

declare dso_local i64 @__msa_pckev_d(i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP2(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @__msa_srari_h(i32, i32) #1

declare dso_local i32 @CLIP_SH_0_255(i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_copy_s_d(i32, i32) #1

declare dso_local i32 @__msa_copy_s_w(i32, i32) #1

declare dso_local i32 @SD(i32, i32*) #1

declare dso_local i32 @SW(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
