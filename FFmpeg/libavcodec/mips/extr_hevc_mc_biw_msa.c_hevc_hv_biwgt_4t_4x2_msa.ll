; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hv_biwgt_4t_4x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hv_biwgt_4t_4x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32, i32)* @hevc_hv_biwgt_4t_4x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_biwgt_4t_4x2_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
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
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
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
  store i32* %0, i32** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32* %2, i32** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32* %4, i32** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32* %6, i32** %20, align 8
  store i32* %7, i32** %21, align 8
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  store i32 0, i32* %31, align 4
  %67 = load i64, i64* @ff_hevc_mask_arr, align 8
  %68 = add nsw i64 %67, 16
  %69 = call i64 @LD_SB(i64 %68)
  store i64 %69, i64* %42, align 8
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i32*, i32** %14, align 8
  %73 = sext i32 %71 to i64
  %74 = sub i64 0, %73
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32* %75, i32** %14, align 8
  %76 = load i32*, i32** %20, align 8
  %77 = call i32 @LD_SH(i32* %76)
  store i32 %77, i32* %44, align 4
  %78 = load i32, i32* %44, align 4
  %79 = load i32, i32* %38, align 4
  %80 = load i32, i32* %39, align 4
  %81 = call i32 @SPLATI_H2_SH(i32 %78, i32 0, i32 1, i32 %79, i32 %80)
  %82 = load i32*, i32** %21, align 8
  %83 = call i32 @LD_SH(i32* %82)
  store i32 %83, i32* %44, align 4
  %84 = load i32, i32* %44, align 4
  %85 = load i32, i32* %44, align 4
  %86 = call i32 @UNPCK_R_SB_SH(i32 %84, i32 %85)
  %87 = load i32, i32* %44, align 4
  %88 = load i32, i32* %40, align 4
  %89 = load i32, i32* %41, align 4
  %90 = call i32 @SPLATI_W2_SH(i32 %87, i32 0, i32 %88, i32 %89)
  %91 = load i64, i64* %42, align 8
  %92 = add nsw i64 %91, 2
  store i64 %92, i64* %43, align 8
  %93 = load i32, i32* %24, align 4
  %94 = load i32, i32* %25, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %26, align 4
  %97 = shl i32 %95, %96
  store i32 %97, i32* %29, align 4
  %98 = load i32, i32* %22, align 4
  %99 = and i32 %98, 65535
  store i32 %99, i32* %22, align 4
  %100 = load i32, i32* %22, align 4
  %101 = load i32, i32* %23, align 4
  %102 = shl i32 %101, 16
  %103 = or i32 %100, %102
  store i32 %103, i32* %30, align 4
  %104 = load i32, i32* %23, align 4
  %105 = mul nsw i32 128, %104
  %106 = call i32 @__msa_fill_w(i32 %105)
  store i32 %106, i32* %66, align 4
  %107 = load i32, i32* %66, align 4
  %108 = shl i32 %107, 6
  store i32 %108, i32* %66, align 4
  %109 = load i32, i32* %29, align 4
  %110 = call i32 @__msa_fill_w(i32 %109)
  store i32 %110, i32* %64, align 4
  %111 = load i32, i32* %30, align 4
  %112 = call i32 @__msa_fill_w(i32 %111)
  store i32 %112, i32* %46, align 4
  %113 = load i32, i32* %26, align 4
  %114 = add nsw i32 %113, 1
  %115 = call i32 @__msa_fill_w(i32 %114)
  store i32 %115, i32* %65, align 4
  %116 = load i32, i32* %66, align 4
  %117 = load i32, i32* %64, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %64, align 4
  %119 = load i32*, i32** %14, align 8
  %120 = load i32, i32* %15, align 4
  %121 = load i64, i64* %33, align 8
  %122 = load i64, i64* %34, align 8
  %123 = load i64, i64* %35, align 8
  %124 = load i64, i64* %36, align 8
  %125 = load i64, i64* %37, align 8
  %126 = call i32 @LD_SB5(i32* %119, i32 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125)
  %127 = load i64, i64* %33, align 8
  %128 = load i64, i64* %34, align 8
  %129 = load i64, i64* %35, align 8
  %130 = load i64, i64* %36, align 8
  %131 = load i64, i64* %37, align 8
  %132 = call i32 @XORI_B5_128_SB(i64 %127, i64 %128, i64 %129, i64 %130, i64 %131)
  %133 = load i64, i64* %33, align 8
  %134 = load i64, i64* %35, align 8
  %135 = load i64, i64* %33, align 8
  %136 = load i64, i64* %35, align 8
  %137 = load i64, i64* %42, align 8
  %138 = load i64, i64* %43, align 8
  %139 = load i64, i64* %47, align 8
  %140 = load i64, i64* %48, align 8
  %141 = call i32 @VSHF_B2_SB(i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140)
  %142 = load i64, i64* %34, align 8
  %143 = load i64, i64* %36, align 8
  %144 = load i64, i64* %34, align 8
  %145 = load i64, i64* %36, align 8
  %146 = load i64, i64* %42, align 8
  %147 = load i64, i64* %43, align 8
  %148 = load i64, i64* %49, align 8
  %149 = load i64, i64* %50, align 8
  %150 = call i32 @VSHF_B2_SB(i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149)
  %151 = load i64, i64* %35, align 8
  %152 = load i64, i64* %37, align 8
  %153 = load i64, i64* %35, align 8
  %154 = load i64, i64* %37, align 8
  %155 = load i64, i64* %42, align 8
  %156 = load i64, i64* %43, align 8
  %157 = load i64, i64* %51, align 8
  %158 = load i64, i64* %52, align 8
  %159 = call i32 @VSHF_B2_SB(i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158)
  %160 = load i64, i64* %47, align 8
  %161 = load i64, i64* %48, align 8
  %162 = load i32, i32* %38, align 4
  %163 = load i32, i32* %39, align 4
  %164 = call i32 @HEVC_FILT_4TAP_SH(i64 %160, i64 %161, i32 %162, i32 %163)
  store i32 %164, i32* %53, align 4
  %165 = load i64, i64* %49, align 8
  %166 = load i64, i64* %50, align 8
  %167 = load i32, i32* %38, align 4
  %168 = load i32, i32* %39, align 4
  %169 = call i32 @HEVC_FILT_4TAP_SH(i64 %165, i64 %166, i32 %167, i32 %168)
  store i32 %169, i32* %54, align 4
  %170 = load i64, i64* %51, align 8
  %171 = load i64, i64* %52, align 8
  %172 = load i32, i32* %38, align 4
  %173 = load i32, i32* %39, align 4
  %174 = call i32 @HEVC_FILT_4TAP_SH(i64 %170, i64 %171, i32 %172, i32 %173)
  store i32 %174, i32* %55, align 4
  %175 = load i32, i32* %54, align 4
  %176 = load i32, i32* %53, align 4
  %177 = load i32, i32* %56, align 4
  %178 = load i32, i32* %57, align 4
  %179 = call i32 @ILVRL_H2_SH(i32 %175, i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %55, align 4
  %181 = load i32, i32* %54, align 4
  %182 = load i32, i32* %58, align 4
  %183 = load i32, i32* %59, align 4
  %184 = call i32 @ILVRL_H2_SH(i32 %180, i32 %181, i32 %182, i32 %183)
  %185 = load i32, i32* %56, align 4
  %186 = load i32, i32* %57, align 4
  %187 = load i32, i32* %40, align 4
  %188 = load i32, i32* %41, align 4
  %189 = call i32 @HEVC_FILT_4TAP(i32 %185, i32 %186, i32 %187, i32 %188)
  store i32 %189, i32* %62, align 4
  %190 = load i32, i32* %58, align 4
  %191 = load i32, i32* %59, align 4
  %192 = load i32, i32* %40, align 4
  %193 = load i32, i32* %41, align 4
  %194 = call i32 @HEVC_FILT_4TAP(i32 %190, i32 %191, i32 %192, i32 %193)
  store i32 %194, i32* %63, align 4
  %195 = load i32, i32* %62, align 4
  %196 = ashr i32 %195, 6
  store i32 %196, i32* %62, align 4
  %197 = load i32, i32* %63, align 4
  %198 = ashr i32 %197, 6
  store i32 %198, i32* %63, align 4
  %199 = load i32, i32* %63, align 4
  %200 = load i32, i32* %62, align 4
  %201 = call i32 @__msa_pckev_h(i32 %199, i32 %200)
  store i32 %201, i32* %62, align 4
  %202 = load i32*, i32** %16, align 8
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* %27, align 4
  %205 = load i32, i32* %28, align 4
  %206 = call i32 @LD2(i32* %202, i32 %203, i32 %204, i32 %205)
  %207 = load i32, i32* %27, align 4
  %208 = load i32, i32* %28, align 4
  %209 = load i32, i32* %31, align 4
  %210 = call i32 @INSERT_D2_SH(i32 %207, i32 %208, i32 %209)
  %211 = load i32, i32* %62, align 4
  %212 = load i32, i32* %31, align 4
  %213 = load i32, i32* %60, align 4
  %214 = load i32, i32* %61, align 4
  %215 = call i32 @ILVRL_H2_SH(i32 %211, i32 %212, i32 %213, i32 %214)
  %216 = load i32, i32* %64, align 4
  %217 = load i32, i32* %60, align 4
  %218 = load i32, i32* %46, align 4
  %219 = call i32 @__msa_dpadd_s_w(i32 %216, i32 %217, i32 %218)
  store i32 %219, i32* %62, align 4
  %220 = load i32, i32* %64, align 4
  %221 = load i32, i32* %61, align 4
  %222 = load i32, i32* %46, align 4
  %223 = call i32 @__msa_dpadd_s_w(i32 %220, i32 %221, i32 %222)
  store i32 %223, i32* %63, align 4
  %224 = load i32, i32* %62, align 4
  %225 = load i32, i32* %63, align 4
  %226 = load i32, i32* %65, align 4
  %227 = call i32 @SRAR_W2_SW(i32 %224, i32 %225, i32 %226)
  %228 = load i32, i32* %63, align 4
  %229 = load i32, i32* %62, align 4
  %230 = call i32 @__msa_pckev_h(i32 %228, i32 %229)
  store i32 %230, i32* %45, align 4
  %231 = load i32, i32* %45, align 4
  %232 = call i32 @CLIP_SH_0_255(i32 %231)
  %233 = load i32, i32* %45, align 4
  %234 = sext i32 %233 to i64
  %235 = load i32, i32* %45, align 4
  %236 = sext i32 %235 to i64
  %237 = call i64 @__msa_pckev_b(i64 %234, i64 %236)
  store i64 %237, i64* %32, align 8
  %238 = load i64, i64* %32, align 8
  %239 = load i32*, i32** %18, align 8
  %240 = load i32, i32* %19, align 4
  %241 = call i32 @ST_W2(i64 %238, i32 0, i32 1, i32* %239, i32 %240)
  ret void
}

declare dso_local i64 @LD_SB(i64) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP(i32, i32, i32, i32) #1

declare dso_local i32 @__msa_pckev_h(i32, i32) #1

declare dso_local i32 @LD2(i32*, i32, i32, i32) #1

declare dso_local i32 @INSERT_D2_SH(i32, i32, i32) #1

declare dso_local i32 @__msa_dpadd_s_w(i32, i32, i32) #1

declare dso_local i32 @SRAR_W2_SW(i32, i32, i32) #1

declare dso_local i32 @CLIP_SH_0_255(i32) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_W2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
