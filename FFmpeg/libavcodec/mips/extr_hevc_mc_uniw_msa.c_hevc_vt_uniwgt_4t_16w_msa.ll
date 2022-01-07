; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_16w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_16w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32)* @hevc_vt_uniwgt_4t_16w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_uniwgt_4t_16w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
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
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = sext i32 %59 to i64
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32* %63, i32** %10, align 8
  %64 = load i32, i32* %16, align 4
  %65 = and i32 %64, 65535
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @__msa_fill_w(i32 %66)
  store i32 %67, i32* %57, align 4
  %68 = load i32, i32* %18, align 4
  %69 = call i32 @__msa_fill_w(i32 %68)
  store i32 %69, i32* %58, align 4
  %70 = load i32, i32* %16, align 4
  %71 = mul nsw i32 %70, 128
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %18, align 4
  %73 = sub nsw i32 %72, 6
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @__msa_fill_h(i32 %74)
  store i32 %75, i32* %54, align 4
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @__msa_fill_h(i32 %76)
  store i32 %77, i32* %55, align 4
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @__msa_fill_h(i32 %78)
  store i32 %79, i32* %56, align 4
  %80 = load i32, i32* %54, align 4
  %81 = load i32, i32* %56, align 4
  %82 = call i32 @__msa_srar_h(i32 %80, i32 %81)
  store i32 %82, i32* %54, align 4
  %83 = load i32, i32* %55, align 4
  %84 = load i32, i32* %54, align 4
  %85 = call i32 @__msa_adds_s_h(i32 %83, i32 %84)
  store i32 %85, i32* %55, align 4
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @LD_SH(i32* %86)
  store i32 %87, i32* %53, align 4
  %88 = load i32, i32* %53, align 4
  %89 = load i32, i32* %43, align 4
  %90 = load i32, i32* %44, align 4
  %91 = call i32 @SPLATI_H2_SH(i32 %88, i32 0, i32 1, i32 %89, i32 %90)
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %24, align 4
  %95 = load i32, i32* %25, align 4
  %96 = load i32, i32* %26, align 4
  %97 = call i32 @LD_SB3(i32* %92, i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = mul nsw i32 3, %98
  %100 = load i32*, i32** %10, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %10, align 8
  %103 = load i32, i32* %24, align 4
  %104 = load i32, i32* %25, align 4
  %105 = load i32, i32* %26, align 4
  %106 = call i32 @XORI_B3_128_SB(i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %25, align 4
  %108 = load i32, i32* %24, align 4
  %109 = load i32, i32* %26, align 4
  %110 = load i32, i32* %25, align 4
  %111 = load i32, i32* %30, align 4
  %112 = load i32, i32* %32, align 4
  %113 = call i32 @ILVR_B2_SB(i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %25, align 4
  %115 = load i32, i32* %24, align 4
  %116 = load i32, i32* %26, align 4
  %117 = load i32, i32* %25, align 4
  %118 = load i32, i32* %34, align 4
  %119 = load i32, i32* %36, align 4
  %120 = call i32 @ILVL_B2_SB(i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %15, align 4
  %122 = ashr i32 %121, 2
  store i32 %122, i32* %19, align 4
  br label %123

123:                                              ; preds = %127, %9
  %124 = load i32, i32* %19, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %19, align 4
  %126 = icmp ne i32 %124, 0
  br i1 %126, label %127, label %259

127:                                              ; preds = %123
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %27, align 4
  %131 = load i32, i32* %28, align 4
  %132 = load i32, i32* %29, align 4
  %133 = load i32, i32* %42, align 4
  %134 = call i32 @LD_SB4(i32* %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* %11, align 4
  %136 = mul nsw i32 4, %135
  %137 = load i32*, i32** %10, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32* %139, i32** %10, align 8
  %140 = load i32, i32* %27, align 4
  %141 = load i32, i32* %28, align 4
  %142 = load i32, i32* %29, align 4
  %143 = load i32, i32* %42, align 4
  %144 = call i32 @XORI_B4_128_SB(i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load i32, i32* %27, align 4
  %146 = load i32, i32* %26, align 4
  %147 = load i32, i32* %31, align 4
  %148 = load i32, i32* %35, align 4
  %149 = call i32 @ILVRL_B2_SB(i32 %145, i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %28, align 4
  %151 = load i32, i32* %27, align 4
  %152 = load i32, i32* %33, align 4
  %153 = load i32, i32* %37, align 4
  %154 = call i32 @ILVRL_B2_SB(i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %29, align 4
  %156 = load i32, i32* %28, align 4
  %157 = load i32, i32* %38, align 4
  %158 = load i32, i32* %39, align 4
  %159 = call i32 @ILVRL_B2_SB(i32 %155, i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* %42, align 4
  %161 = load i32, i32* %29, align 4
  %162 = load i32, i32* %40, align 4
  %163 = load i32, i32* %41, align 4
  %164 = call i32 @ILVRL_B2_SB(i32 %160, i32 %161, i32 %162, i32 %163)
  %165 = load i32, i32* %30, align 4
  %166 = load i32, i32* %31, align 4
  %167 = load i32, i32* %43, align 4
  %168 = load i32, i32* %44, align 4
  %169 = call i32 @HEVC_FILT_4TAP_SH(i32 %165, i32 %166, i32 %167, i32 %168)
  store i32 %169, i32* %45, align 4
  %170 = load i32, i32* %32, align 4
  %171 = load i32, i32* %33, align 4
  %172 = load i32, i32* %43, align 4
  %173 = load i32, i32* %44, align 4
  %174 = call i32 @HEVC_FILT_4TAP_SH(i32 %170, i32 %171, i32 %172, i32 %173)
  store i32 %174, i32* %46, align 4
  %175 = load i32, i32* %31, align 4
  %176 = load i32, i32* %38, align 4
  %177 = load i32, i32* %43, align 4
  %178 = load i32, i32* %44, align 4
  %179 = call i32 @HEVC_FILT_4TAP_SH(i32 %175, i32 %176, i32 %177, i32 %178)
  store i32 %179, i32* %47, align 4
  %180 = load i32, i32* %33, align 4
  %181 = load i32, i32* %40, align 4
  %182 = load i32, i32* %43, align 4
  %183 = load i32, i32* %44, align 4
  %184 = call i32 @HEVC_FILT_4TAP_SH(i32 %180, i32 %181, i32 %182, i32 %183)
  store i32 %184, i32* %48, align 4
  %185 = load i32, i32* %34, align 4
  %186 = load i32, i32* %35, align 4
  %187 = load i32, i32* %43, align 4
  %188 = load i32, i32* %44, align 4
  %189 = call i32 @HEVC_FILT_4TAP_SH(i32 %185, i32 %186, i32 %187, i32 %188)
  store i32 %189, i32* %49, align 4
  %190 = load i32, i32* %36, align 4
  %191 = load i32, i32* %37, align 4
  %192 = load i32, i32* %43, align 4
  %193 = load i32, i32* %44, align 4
  %194 = call i32 @HEVC_FILT_4TAP_SH(i32 %190, i32 %191, i32 %192, i32 %193)
  store i32 %194, i32* %50, align 4
  %195 = load i32, i32* %35, align 4
  %196 = load i32, i32* %39, align 4
  %197 = load i32, i32* %43, align 4
  %198 = load i32, i32* %44, align 4
  %199 = call i32 @HEVC_FILT_4TAP_SH(i32 %195, i32 %196, i32 %197, i32 %198)
  store i32 %199, i32* %51, align 4
  %200 = load i32, i32* %37, align 4
  %201 = load i32, i32* %41, align 4
  %202 = load i32, i32* %43, align 4
  %203 = load i32, i32* %44, align 4
  %204 = call i32 @HEVC_FILT_4TAP_SH(i32 %200, i32 %201, i32 %202, i32 %203)
  store i32 %204, i32* %52, align 4
  %205 = load i32, i32* %45, align 4
  %206 = load i32, i32* %46, align 4
  %207 = load i32, i32* %47, align 4
  %208 = load i32, i32* %48, align 4
  %209 = load i32, i32* %57, align 4
  %210 = load i32, i32* %55, align 4
  %211 = load i32, i32* %58, align 4
  %212 = load i32, i32* %45, align 4
  %213 = load i32, i32* %46, align 4
  %214 = load i32, i32* %47, align 4
  %215 = load i32, i32* %48, align 4
  %216 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215)
  %217 = load i32, i32* %49, align 4
  %218 = load i32, i32* %50, align 4
  %219 = load i32, i32* %51, align 4
  %220 = load i32, i32* %52, align 4
  %221 = load i32, i32* %57, align 4
  %222 = load i32, i32* %55, align 4
  %223 = load i32, i32* %58, align 4
  %224 = load i32, i32* %49, align 4
  %225 = load i32, i32* %50, align 4
  %226 = load i32, i32* %51, align 4
  %227 = load i32, i32* %52, align 4
  %228 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227)
  %229 = load i32, i32* %49, align 4
  %230 = load i32, i32* %45, align 4
  %231 = load i32, i32* %50, align 4
  %232 = load i32, i32* %46, align 4
  %233 = load i32, i32* %51, align 4
  %234 = load i32, i32* %47, align 4
  %235 = load i32, i32* %52, align 4
  %236 = load i32, i32* %48, align 4
  %237 = load i32, i32* %20, align 4
  %238 = load i32, i32* %21, align 4
  %239 = load i32, i32* %22, align 4
  %240 = load i32, i32* %23, align 4
  %241 = call i32 @PCKEV_B4_UB(i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %240)
  %242 = load i32, i32* %20, align 4
  %243 = load i32, i32* %21, align 4
  %244 = load i32, i32* %22, align 4
  %245 = load i32, i32* %23, align 4
  %246 = load i32*, i32** %12, align 8
  %247 = load i32, i32* %13, align 4
  %248 = call i32 @ST_UB4(i32 %242, i32 %243, i32 %244, i32 %245, i32* %246, i32 %247)
  %249 = load i32, i32* %13, align 4
  %250 = mul nsw i32 4, %249
  %251 = load i32*, i32** %12, align 8
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  store i32* %253, i32** %12, align 8
  %254 = load i32, i32* %42, align 4
  store i32 %254, i32* %26, align 4
  %255 = load i32, i32* %38, align 4
  store i32 %255, i32* %30, align 4
  %256 = load i32, i32* %40, align 4
  store i32 %256, i32* %32, align 4
  %257 = load i32, i32* %39, align 4
  store i32 %257, i32* %34, align 4
  %258 = load i32, i32* %41, align 4
  store i32 %258, i32* %36, align 4
  br label %123

259:                                              ; preds = %123
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_srar_h(i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @ILVRL_B2_SB(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
