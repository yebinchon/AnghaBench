; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_4t_24w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_4t_24w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32)* @hevc_hz_uniwgt_4t_24w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_uniwgt_4t_24w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
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
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 -1
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = call i32 @LD_SH(i32* %55)
  store i32 %56, i32* %47, align 4
  %57 = load i32, i32* %47, align 4
  %58 = load i32, i32* %27, align 4
  %59 = load i32, i32* %28, align 4
  %60 = call i32 @SPLATI_H2_SH(i32 %57, i32 0, i32 1, i32 %58, i32 %59)
  %61 = load i32, i32* %16, align 4
  %62 = and i32 %61, 65535
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @__msa_fill_w(i32 %63)
  store i32 %64, i32* %51, align 4
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @__msa_fill_w(i32 %65)
  store i32 %66, i32* %52, align 4
  %67 = load i32, i32* %16, align 4
  %68 = mul nsw i32 %67, 128
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %18, align 4
  %70 = sub nsw i32 %69, 6
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @__msa_fill_h(i32 %71)
  store i32 %72, i32* %48, align 4
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @__msa_fill_h(i32 %73)
  store i32 %74, i32* %49, align 4
  %75 = load i32, i32* %18, align 4
  %76 = call i32 @__msa_fill_h(i32 %75)
  store i32 %76, i32* %50, align 4
  %77 = load i32, i32* %48, align 4
  %78 = load i32, i32* %50, align 4
  %79 = call i32 @__msa_srar_h(i32 %77, i32 %78)
  store i32 %79, i32* %48, align 4
  %80 = load i32, i32* %49, align 4
  %81 = load i32, i32* %48, align 4
  %82 = call i32 @__msa_adds_s_h(i32 %80, i32 %81)
  store i32 %82, i32* %49, align 4
  %83 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = call i64 @LD_SB(i32* %84)
  store i64 %85, i64* %29, align 8
  %86 = load i64, i64* %29, align 8
  %87 = add nsw i64 %86, 2
  store i64 %87, i64* %30, align 8
  %88 = load i64, i64* %29, align 8
  %89 = add nsw i64 %88, 8
  store i64 %89, i64* %31, align 8
  %90 = load i64, i64* %29, align 8
  %91 = add nsw i64 %90, 10
  store i64 %91, i64* %32, align 8
  store i32 16, i32* %19, align 4
  br label %92

92:                                               ; preds = %96, %9
  %93 = load i32, i32* %19, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %19, align 4
  %95 = icmp ne i32 %93, 0
  br i1 %95, label %96, label %247

96:                                               ; preds = %92
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i64, i64* %23, align 8
  %100 = load i64, i64* %25, align 8
  %101 = call i32 @LD_SB2(i32* %97, i32 %98, i64 %99, i64 %100)
  %102 = load i32*, i32** %10, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 16
  %104 = load i32, i32* %11, align 4
  %105 = load i64, i64* %24, align 8
  %106 = load i64, i64* %26, align 8
  %107 = call i32 @LD_SB2(i32* %103, i32 %104, i64 %105, i64 %106)
  %108 = load i32, i32* %11, align 4
  %109 = mul nsw i32 2, %108
  %110 = load i32*, i32** %10, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %10, align 8
  %113 = load i64, i64* %23, align 8
  %114 = load i64, i64* %24, align 8
  %115 = load i64, i64* %25, align 8
  %116 = load i64, i64* %26, align 8
  %117 = call i32 @XORI_B4_128_SB(i64 %113, i64 %114, i64 %115, i64 %116)
  %118 = load i64, i64* %23, align 8
  %119 = load i64, i64* %23, align 8
  %120 = load i64, i64* %23, align 8
  %121 = load i64, i64* %23, align 8
  %122 = load i64, i64* %29, align 8
  %123 = load i64, i64* %30, align 8
  %124 = load i64, i64* %33, align 8
  %125 = load i64, i64* %34, align 8
  %126 = call i32 @VSHF_B2_SB(i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125)
  %127 = load i64, i64* %23, align 8
  %128 = load i64, i64* %24, align 8
  %129 = load i64, i64* %23, align 8
  %130 = load i64, i64* %24, align 8
  %131 = load i64, i64* %31, align 8
  %132 = load i64, i64* %32, align 8
  %133 = load i64, i64* %35, align 8
  %134 = load i64, i64* %36, align 8
  %135 = call i32 @VSHF_B2_SB(i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134)
  %136 = load i64, i64* %25, align 8
  %137 = load i64, i64* %25, align 8
  %138 = load i64, i64* %25, align 8
  %139 = load i64, i64* %25, align 8
  %140 = load i64, i64* %29, align 8
  %141 = load i64, i64* %30, align 8
  %142 = load i64, i64* %37, align 8
  %143 = load i64, i64* %38, align 8
  %144 = call i32 @VSHF_B2_SB(i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143)
  %145 = load i64, i64* %25, align 8
  %146 = load i64, i64* %26, align 8
  %147 = load i64, i64* %25, align 8
  %148 = load i64, i64* %26, align 8
  %149 = load i64, i64* %31, align 8
  %150 = load i64, i64* %32, align 8
  %151 = load i64, i64* %39, align 8
  %152 = load i64, i64* %40, align 8
  %153 = call i32 @VSHF_B2_SB(i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152)
  %154 = load i64, i64* %33, align 8
  %155 = load i64, i64* %34, align 8
  %156 = load i32, i32* %27, align 4
  %157 = load i32, i32* %28, align 4
  %158 = call i32 @HEVC_FILT_4TAP_SH(i64 %154, i64 %155, i32 %156, i32 %157)
  store i32 %158, i32* %41, align 4
  %159 = load i64, i64* %35, align 8
  %160 = load i64, i64* %36, align 8
  %161 = load i32, i32* %27, align 4
  %162 = load i32, i32* %28, align 4
  %163 = call i32 @HEVC_FILT_4TAP_SH(i64 %159, i64 %160, i32 %161, i32 %162)
  store i32 %163, i32* %42, align 4
  %164 = load i64, i64* %37, align 8
  %165 = load i64, i64* %38, align 8
  %166 = load i32, i32* %27, align 4
  %167 = load i32, i32* %28, align 4
  %168 = call i32 @HEVC_FILT_4TAP_SH(i64 %164, i64 %165, i32 %166, i32 %167)
  store i32 %168, i32* %43, align 4
  %169 = load i64, i64* %39, align 8
  %170 = load i64, i64* %40, align 8
  %171 = load i32, i32* %27, align 4
  %172 = load i32, i32* %28, align 4
  %173 = call i32 @HEVC_FILT_4TAP_SH(i64 %169, i64 %170, i32 %171, i32 %172)
  store i32 %173, i32* %44, align 4
  %174 = load i64, i64* %24, align 8
  %175 = load i64, i64* %24, align 8
  %176 = load i64, i64* %24, align 8
  %177 = load i64, i64* %24, align 8
  %178 = load i64, i64* %29, align 8
  %179 = load i64, i64* %30, align 8
  %180 = load i64, i64* %33, align 8
  %181 = load i64, i64* %34, align 8
  %182 = call i32 @VSHF_B2_SB(i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181)
  %183 = load i64, i64* %26, align 8
  %184 = load i64, i64* %26, align 8
  %185 = load i64, i64* %26, align 8
  %186 = load i64, i64* %26, align 8
  %187 = load i64, i64* %29, align 8
  %188 = load i64, i64* %30, align 8
  %189 = load i64, i64* %35, align 8
  %190 = load i64, i64* %36, align 8
  %191 = call i32 @VSHF_B2_SB(i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190)
  %192 = load i64, i64* %33, align 8
  %193 = load i64, i64* %34, align 8
  %194 = load i32, i32* %27, align 4
  %195 = load i32, i32* %28, align 4
  %196 = call i32 @HEVC_FILT_4TAP_SH(i64 %192, i64 %193, i32 %194, i32 %195)
  store i32 %196, i32* %45, align 4
  %197 = load i64, i64* %35, align 8
  %198 = load i64, i64* %36, align 8
  %199 = load i32, i32* %27, align 4
  %200 = load i32, i32* %28, align 4
  %201 = call i32 @HEVC_FILT_4TAP_SH(i64 %197, i64 %198, i32 %199, i32 %200)
  store i32 %201, i32* %46, align 4
  %202 = load i32, i32* %41, align 4
  %203 = load i32, i32* %42, align 4
  %204 = load i32, i32* %43, align 4
  %205 = load i32, i32* %44, align 4
  %206 = load i32, i32* %51, align 4
  %207 = load i32, i32* %49, align 4
  %208 = load i32, i32* %52, align 4
  %209 = load i32, i32* %41, align 4
  %210 = load i32, i32* %42, align 4
  %211 = load i32, i32* %43, align 4
  %212 = load i32, i32* %44, align 4
  %213 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212)
  %214 = load i32, i32* %45, align 4
  %215 = load i32, i32* %46, align 4
  %216 = load i32, i32* %51, align 4
  %217 = load i32, i32* %49, align 4
  %218 = load i32, i32* %52, align 4
  %219 = load i32, i32* %45, align 4
  %220 = load i32, i32* %46, align 4
  %221 = call i32 @HEVC_UNIW_RND_CLIP2_MAX_SATU_H(i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220)
  %222 = load i32, i32* %42, align 4
  %223 = load i32, i32* %41, align 4
  %224 = load i32, i32* %44, align 4
  %225 = load i32, i32* %43, align 4
  %226 = load i32, i32* %46, align 4
  %227 = load i32, i32* %45, align 4
  %228 = load i32, i32* %20, align 4
  %229 = load i32, i32* %21, align 4
  %230 = load i32, i32* %22, align 4
  %231 = call i32 @PCKEV_B3_UB(i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230)
  %232 = load i32, i32* %20, align 4
  %233 = load i32, i32* %21, align 4
  %234 = load i32*, i32** %12, align 8
  %235 = load i32, i32* %13, align 4
  %236 = call i32 @ST_UB2(i32 %232, i32 %233, i32* %234, i32 %235)
  %237 = load i32, i32* %22, align 4
  %238 = load i32*, i32** %12, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 16
  %240 = load i32, i32* %13, align 4
  %241 = call i32 @ST_D2(i32 %237, i32 0, i32 1, i32* %239, i32 %240)
  %242 = load i32, i32* %13, align 4
  %243 = mul nsw i32 2, %242
  %244 = load i32*, i32** %12, align 8
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  store i32* %246, i32** %12, align 8
  br label %92

247:                                              ; preds = %92
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_srar_h(i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP2_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B3_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB2(i32, i32, i32*, i32) #1

declare dso_local i32 @ST_D2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
