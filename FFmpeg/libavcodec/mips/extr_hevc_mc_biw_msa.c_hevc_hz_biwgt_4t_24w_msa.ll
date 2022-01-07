; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_24w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_24w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_hz_biwgt_4t_24w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_biwgt_4t_24w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
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
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
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
  %57 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = call i64 @LD_SB(i32* %58)
  store i64 %59, i64* %37, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 -1
  store i32* %61, i32** %14, align 8
  %62 = load i32*, i32** %20, align 8
  %63 = call i64 @LD_SH(i32* %62)
  store i64 %63, i64* %53, align 8
  %64 = load i64, i64* %53, align 8
  %65 = load i64, i64* %35, align 8
  %66 = load i64, i64* %36, align 8
  %67 = call i32 @SPLATI_H2_SH(i64 %64, i32 0, i32 1, i64 %65, i64 %66)
  %68 = load i32, i32* %24, align 4
  %69 = load i32, i32* %25, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %26, align 4
  %72 = shl i32 %70, %71
  store i32 %72, i32* %28, align 4
  %73 = load i32, i32* %22, align 4
  %74 = and i32 %73, 65535
  store i32 %74, i32* %22, align 4
  %75 = load i32, i32* %22, align 4
  %76 = load i32, i32* %23, align 4
  %77 = shl i32 %76, 16
  %78 = or i32 %75, %77
  store i32 %78, i32* %29, align 4
  %79 = load i32, i32* %23, align 4
  %80 = mul nsw i32 128, %79
  store i32 %80, i32* %30, align 4
  %81 = load i32, i32* %30, align 4
  %82 = shl i32 %81, 6
  store i32 %82, i32* %30, align 4
  %83 = load i32, i32* %30, align 4
  %84 = load i32, i32* %28, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %28, align 4
  %86 = load i32, i32* %28, align 4
  %87 = call i32 @__msa_fill_w(i32 %86)
  store i32 %87, i32* %55, align 4
  %88 = load i32, i32* %29, align 4
  %89 = call i32 @__msa_fill_w(i32 %88)
  store i32 %89, i32* %54, align 4
  %90 = load i32, i32* %26, align 4
  %91 = add nsw i32 %90, 1
  %92 = call i32 @__msa_fill_w(i32 %91)
  store i32 %92, i32* %56, align 4
  %93 = load i64, i64* %37, align 8
  %94 = add nsw i64 %93, 2
  store i64 %94, i64* %38, align 8
  %95 = load i64, i64* %37, align 8
  %96 = add nsw i64 %95, 8
  store i64 %96, i64* %39, align 8
  %97 = load i64, i64* %37, align 8
  %98 = add nsw i64 %97, 10
  store i64 %98, i64* %40, align 8
  store i32 16, i32* %27, align 4
  br label %99

99:                                               ; preds = %103, %13
  %100 = load i32, i32* %27, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %27, align 4
  %102 = icmp ne i32 %100, 0
  br i1 %102, label %103, label %282

103:                                              ; preds = %99
  %104 = load i32*, i32** %14, align 8
  %105 = load i32, i32* %15, align 4
  %106 = load i64, i64* %31, align 8
  %107 = load i64, i64* %33, align 8
  %108 = call i32 @LD_SB2(i32* %104, i32 %105, i64 %106, i64 %107)
  %109 = load i32*, i32** %14, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 16
  %111 = load i32, i32* %15, align 4
  %112 = load i64, i64* %32, align 8
  %113 = load i64, i64* %34, align 8
  %114 = call i32 @LD_SB2(i32* %110, i32 %111, i64 %112, i64 %113)
  %115 = load i32, i32* %15, align 4
  %116 = mul nsw i32 2, %115
  %117 = load i32*, i32** %14, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %14, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = load i32, i32* %17, align 4
  %122 = load i64, i64* %47, align 8
  %123 = load i64, i64* %49, align 8
  %124 = call i32 @LD_SH2(i32* %120, i32 %121, i64 %122, i64 %123)
  %125 = load i32*, i32** %16, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 8
  %127 = load i32, i32* %17, align 4
  %128 = load i64, i64* %48, align 8
  %129 = load i64, i64* %50, align 8
  %130 = call i32 @LD_SH2(i32* %126, i32 %127, i64 %128, i64 %129)
  %131 = load i32*, i32** %16, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 16
  %133 = load i32, i32* %17, align 4
  %134 = load i64, i64* %51, align 8
  %135 = load i64, i64* %52, align 8
  %136 = call i32 @LD_SH2(i32* %132, i32 %133, i64 %134, i64 %135)
  %137 = load i32, i32* %17, align 4
  %138 = mul nsw i32 2, %137
  %139 = load i32*, i32** %16, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %16, align 8
  %142 = load i64, i64* %31, align 8
  %143 = load i64, i64* %32, align 8
  %144 = load i64, i64* %33, align 8
  %145 = load i64, i64* %34, align 8
  %146 = call i32 @XORI_B4_128_SB(i64 %142, i64 %143, i64 %144, i64 %145)
  %147 = load i64, i64* %31, align 8
  %148 = load i64, i64* %31, align 8
  %149 = load i64, i64* %31, align 8
  %150 = load i64, i64* %31, align 8
  %151 = load i64, i64* %37, align 8
  %152 = load i64, i64* %38, align 8
  %153 = load i64, i64* %41, align 8
  %154 = load i64, i64* %42, align 8
  %155 = call i32 @VSHF_B2_SB(i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154)
  %156 = load i64, i64* %41, align 8
  %157 = load i64, i64* %42, align 8
  %158 = load i64, i64* %35, align 8
  %159 = load i64, i64* %36, align 8
  %160 = call i64 @HEVC_FILT_4TAP_SH(i64 %156, i64 %157, i64 %158, i64 %159)
  store i64 %160, i64* %43, align 8
  %161 = load i64, i64* %31, align 8
  %162 = load i64, i64* %32, align 8
  %163 = load i64, i64* %31, align 8
  %164 = load i64, i64* %32, align 8
  %165 = load i64, i64* %39, align 8
  %166 = load i64, i64* %40, align 8
  %167 = load i64, i64* %41, align 8
  %168 = load i64, i64* %42, align 8
  %169 = call i32 @VSHF_B2_SB(i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168)
  %170 = load i64, i64* %41, align 8
  %171 = load i64, i64* %42, align 8
  %172 = load i64, i64* %35, align 8
  %173 = load i64, i64* %36, align 8
  %174 = call i64 @HEVC_FILT_4TAP_SH(i64 %170, i64 %171, i64 %172, i64 %173)
  store i64 %174, i64* %44, align 8
  %175 = load i64, i64* %33, align 8
  %176 = load i64, i64* %33, align 8
  %177 = load i64, i64* %33, align 8
  %178 = load i64, i64* %33, align 8
  %179 = load i64, i64* %37, align 8
  %180 = load i64, i64* %38, align 8
  %181 = load i64, i64* %41, align 8
  %182 = load i64, i64* %42, align 8
  %183 = call i32 @VSHF_B2_SB(i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182)
  %184 = load i64, i64* %41, align 8
  %185 = load i64, i64* %42, align 8
  %186 = load i64, i64* %35, align 8
  %187 = load i64, i64* %36, align 8
  %188 = call i64 @HEVC_FILT_4TAP_SH(i64 %184, i64 %185, i64 %186, i64 %187)
  store i64 %188, i64* %45, align 8
  %189 = load i64, i64* %33, align 8
  %190 = load i64, i64* %34, align 8
  %191 = load i64, i64* %33, align 8
  %192 = load i64, i64* %34, align 8
  %193 = load i64, i64* %39, align 8
  %194 = load i64, i64* %40, align 8
  %195 = load i64, i64* %41, align 8
  %196 = load i64, i64* %42, align 8
  %197 = call i32 @VSHF_B2_SB(i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196)
  %198 = load i64, i64* %41, align 8
  %199 = load i64, i64* %42, align 8
  %200 = load i64, i64* %35, align 8
  %201 = load i64, i64* %36, align 8
  %202 = call i64 @HEVC_FILT_4TAP_SH(i64 %198, i64 %199, i64 %200, i64 %201)
  store i64 %202, i64* %46, align 8
  %203 = load i64, i64* %43, align 8
  %204 = load i64, i64* %44, align 8
  %205 = load i64, i64* %45, align 8
  %206 = load i64, i64* %46, align 8
  %207 = load i64, i64* %47, align 8
  %208 = load i64, i64* %48, align 8
  %209 = load i64, i64* %49, align 8
  %210 = load i64, i64* %50, align 8
  %211 = load i32, i32* %54, align 4
  %212 = load i32, i32* %56, align 4
  %213 = load i32, i32* %55, align 4
  %214 = load i64, i64* %43, align 8
  %215 = load i64, i64* %44, align 8
  %216 = load i64, i64* %45, align 8
  %217 = load i64, i64* %46, align 8
  %218 = call i32 @HEVC_BIW_RND_CLIP4(i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i32 %211, i32 %212, i32 %213, i64 %214, i64 %215, i64 %216, i64 %217)
  %219 = load i64, i64* %44, align 8
  %220 = load i64, i64* %43, align 8
  %221 = load i64, i64* %46, align 8
  %222 = load i64, i64* %45, align 8
  %223 = load i64, i64* %43, align 8
  %224 = load i64, i64* %44, align 8
  %225 = call i32 @PCKEV_B2_SH(i64 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224)
  %226 = load i64, i64* %43, align 8
  %227 = load i64, i64* %44, align 8
  %228 = load i32*, i32** %18, align 8
  %229 = load i32, i32* %19, align 4
  %230 = call i32 @ST_SH2(i64 %226, i64 %227, i32* %228, i32 %229)
  %231 = load i64, i64* %32, align 8
  %232 = load i64, i64* %32, align 8
  %233 = load i64, i64* %32, align 8
  %234 = load i64, i64* %32, align 8
  %235 = load i64, i64* %37, align 8
  %236 = load i64, i64* %38, align 8
  %237 = load i64, i64* %41, align 8
  %238 = load i64, i64* %42, align 8
  %239 = call i32 @VSHF_B2_SB(i64 %231, i64 %232, i64 %233, i64 %234, i64 %235, i64 %236, i64 %237, i64 %238)
  %240 = load i64, i64* %41, align 8
  %241 = load i64, i64* %42, align 8
  %242 = load i64, i64* %35, align 8
  %243 = load i64, i64* %36, align 8
  %244 = call i64 @HEVC_FILT_4TAP_SH(i64 %240, i64 %241, i64 %242, i64 %243)
  store i64 %244, i64* %43, align 8
  %245 = load i64, i64* %34, align 8
  %246 = load i64, i64* %34, align 8
  %247 = load i64, i64* %34, align 8
  %248 = load i64, i64* %34, align 8
  %249 = load i64, i64* %37, align 8
  %250 = load i64, i64* %38, align 8
  %251 = load i64, i64* %41, align 8
  %252 = load i64, i64* %42, align 8
  %253 = call i32 @VSHF_B2_SB(i64 %245, i64 %246, i64 %247, i64 %248, i64 %249, i64 %250, i64 %251, i64 %252)
  %254 = load i64, i64* %41, align 8
  %255 = load i64, i64* %42, align 8
  %256 = load i64, i64* %35, align 8
  %257 = load i64, i64* %36, align 8
  %258 = call i64 @HEVC_FILT_4TAP_SH(i64 %254, i64 %255, i64 %256, i64 %257)
  store i64 %258, i64* %44, align 8
  %259 = load i64, i64* %43, align 8
  %260 = load i64, i64* %44, align 8
  %261 = load i64, i64* %51, align 8
  %262 = load i64, i64* %52, align 8
  %263 = load i32, i32* %54, align 4
  %264 = load i32, i32* %56, align 4
  %265 = load i32, i32* %55, align 4
  %266 = load i64, i64* %43, align 8
  %267 = load i64, i64* %44, align 8
  %268 = call i32 @HEVC_BIW_RND_CLIP2(i64 %259, i64 %260, i64 %261, i64 %262, i32 %263, i32 %264, i32 %265, i64 %266, i64 %267)
  %269 = load i64, i64* %44, align 8
  %270 = load i64, i64* %43, align 8
  %271 = call i64 @__msa_pckev_b(i64 %269, i64 %270)
  store i64 %271, i64* %43, align 8
  %272 = load i64, i64* %43, align 8
  %273 = load i32*, i32** %18, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 16
  %275 = load i32, i32* %19, align 4
  %276 = call i32 @ST_D2(i64 %272, i32 0, i32 1, i32* %274, i32 %275)
  %277 = load i32, i32* %19, align 4
  %278 = mul nsw i32 2, %277
  %279 = load i32*, i32** %18, align 8
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  store i32* %281, i32** %18, align 8
  br label %99

282:                                              ; preds = %99
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @PCKEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ST_SH2(i64, i64, i32*, i32) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP2(i64, i64, i64, i64, i32, i32, i32, i64, i64) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_D2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
