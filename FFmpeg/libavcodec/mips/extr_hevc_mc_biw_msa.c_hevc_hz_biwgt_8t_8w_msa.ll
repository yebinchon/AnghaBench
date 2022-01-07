; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_8t_8w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_8t_8w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_hz_biwgt_8t_8w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_biwgt_8t_8w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
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
  %62 = alloca i64, align 8
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
  %63 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = call i64 @LD_SB(i32* %64)
  store i64 %65, i64* %62, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 -3
  store i32* %67, i32** %14, align 8
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
  store i32 %87, i32* %60, align 4
  %88 = load i32, i32* %29, align 4
  %89 = call i32 @__msa_fill_w(i32 %88)
  store i32 %89, i32* %59, align 4
  %90 = load i32, i32* %26, align 4
  %91 = add nsw i32 %90, 1
  %92 = call i32 @__msa_fill_w(i32 %91)
  store i32 %92, i32* %61, align 4
  %93 = load i32*, i32** %20, align 8
  %94 = call i32 @LD_SH(i32* %93)
  store i32 %94, i32* %54, align 4
  %95 = load i32, i32* %54, align 4
  %96 = load i32, i32* %31, align 4
  %97 = load i32, i32* %32, align 4
  %98 = load i32, i32* %33, align 4
  %99 = load i32, i32* %34, align 4
  %100 = call i32 @SPLATI_H4_SH(i32 %95, i32 0, i32 1, i32 2, i32 3, i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = load i64, i64* %62, align 8
  %102 = add nsw i64 %101, 2
  store i64 %102, i64* %39, align 8
  %103 = load i64, i64* %62, align 8
  %104 = add nsw i64 %103, 4
  store i64 %104, i64* %40, align 8
  %105 = load i64, i64* %62, align 8
  %106 = add nsw i64 %105, 6
  store i64 %106, i64* %41, align 8
  %107 = load i32, i32* %21, align 4
  %108 = ashr i32 %107, 2
  store i32 %108, i32* %27, align 4
  br label %109

109:                                              ; preds = %113, %13
  %110 = load i32, i32* %27, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %27, align 4
  %112 = icmp ne i32 %110, 0
  br i1 %112, label %113, label %256

113:                                              ; preds = %109
  %114 = load i32*, i32** %14, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load i64, i64* %35, align 8
  %117 = load i64, i64* %36, align 8
  %118 = load i64, i64* %37, align 8
  %119 = load i64, i64* %38, align 8
  %120 = call i32 @LD_SB4(i32* %114, i32 %115, i64 %116, i64 %117, i64 %118, i64 %119)
  %121 = load i32, i32* %15, align 4
  %122 = mul nsw i32 4, %121
  %123 = load i32*, i32** %14, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %14, align 8
  %126 = load i32*, i32** %16, align 8
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %50, align 4
  %129 = load i32, i32* %51, align 4
  %130 = load i32, i32* %52, align 4
  %131 = load i32, i32* %53, align 4
  %132 = call i32 @LD_SH4(i32* %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131)
  %133 = load i32, i32* %17, align 4
  %134 = mul nsw i32 4, %133
  %135 = load i32*, i32** %16, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32* %137, i32** %16, align 8
  %138 = load i64, i64* %35, align 8
  %139 = load i64, i64* %36, align 8
  %140 = load i64, i64* %37, align 8
  %141 = load i64, i64* %38, align 8
  %142 = call i32 @XORI_B4_128_SB(i64 %138, i64 %139, i64 %140, i64 %141)
  %143 = load i64, i64* %35, align 8
  %144 = load i64, i64* %35, align 8
  %145 = load i64, i64* %62, align 8
  %146 = load i64, i64* %39, align 8
  %147 = load i64, i64* %40, align 8
  %148 = load i64, i64* %41, align 8
  %149 = load i64, i64* %42, align 8
  %150 = load i64, i64* %43, align 8
  %151 = load i64, i64* %44, align 8
  %152 = load i64, i64* %45, align 8
  %153 = call i32 @VSHF_B4_SB(i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152)
  %154 = load i64, i64* %42, align 8
  %155 = load i64, i64* %43, align 8
  %156 = load i64, i64* %44, align 8
  %157 = load i64, i64* %45, align 8
  %158 = load i32, i32* %31, align 4
  %159 = load i32, i32* %32, align 4
  %160 = load i32, i32* %33, align 4
  %161 = load i32, i32* %34, align 4
  %162 = call i32 @HEVC_FILT_8TAP_SH(i64 %154, i64 %155, i64 %156, i64 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  store i32 %162, i32* %46, align 4
  %163 = load i64, i64* %36, align 8
  %164 = load i64, i64* %36, align 8
  %165 = load i64, i64* %62, align 8
  %166 = load i64, i64* %39, align 8
  %167 = load i64, i64* %40, align 8
  %168 = load i64, i64* %41, align 8
  %169 = load i64, i64* %42, align 8
  %170 = load i64, i64* %43, align 8
  %171 = load i64, i64* %44, align 8
  %172 = load i64, i64* %45, align 8
  %173 = call i32 @VSHF_B4_SB(i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172)
  %174 = load i64, i64* %42, align 8
  %175 = load i64, i64* %43, align 8
  %176 = load i64, i64* %44, align 8
  %177 = load i64, i64* %45, align 8
  %178 = load i32, i32* %31, align 4
  %179 = load i32, i32* %32, align 4
  %180 = load i32, i32* %33, align 4
  %181 = load i32, i32* %34, align 4
  %182 = call i32 @HEVC_FILT_8TAP_SH(i64 %174, i64 %175, i64 %176, i64 %177, i32 %178, i32 %179, i32 %180, i32 %181)
  store i32 %182, i32* %47, align 4
  %183 = load i64, i64* %37, align 8
  %184 = load i64, i64* %37, align 8
  %185 = load i64, i64* %62, align 8
  %186 = load i64, i64* %39, align 8
  %187 = load i64, i64* %40, align 8
  %188 = load i64, i64* %41, align 8
  %189 = load i64, i64* %42, align 8
  %190 = load i64, i64* %43, align 8
  %191 = load i64, i64* %44, align 8
  %192 = load i64, i64* %45, align 8
  %193 = call i32 @VSHF_B4_SB(i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192)
  %194 = load i64, i64* %42, align 8
  %195 = load i64, i64* %43, align 8
  %196 = load i64, i64* %44, align 8
  %197 = load i64, i64* %45, align 8
  %198 = load i32, i32* %31, align 4
  %199 = load i32, i32* %32, align 4
  %200 = load i32, i32* %33, align 4
  %201 = load i32, i32* %34, align 4
  %202 = call i32 @HEVC_FILT_8TAP_SH(i64 %194, i64 %195, i64 %196, i64 %197, i32 %198, i32 %199, i32 %200, i32 %201)
  store i32 %202, i32* %48, align 4
  %203 = load i64, i64* %38, align 8
  %204 = load i64, i64* %38, align 8
  %205 = load i64, i64* %62, align 8
  %206 = load i64, i64* %39, align 8
  %207 = load i64, i64* %40, align 8
  %208 = load i64, i64* %41, align 8
  %209 = load i64, i64* %42, align 8
  %210 = load i64, i64* %43, align 8
  %211 = load i64, i64* %44, align 8
  %212 = load i64, i64* %45, align 8
  %213 = call i32 @VSHF_B4_SB(i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212)
  %214 = load i64, i64* %42, align 8
  %215 = load i64, i64* %43, align 8
  %216 = load i64, i64* %44, align 8
  %217 = load i64, i64* %45, align 8
  %218 = load i32, i32* %31, align 4
  %219 = load i32, i32* %32, align 4
  %220 = load i32, i32* %33, align 4
  %221 = load i32, i32* %34, align 4
  %222 = call i32 @HEVC_FILT_8TAP_SH(i64 %214, i64 %215, i64 %216, i64 %217, i32 %218, i32 %219, i32 %220, i32 %221)
  store i32 %222, i32* %49, align 4
  %223 = load i32, i32* %46, align 4
  %224 = load i32, i32* %47, align 4
  %225 = load i32, i32* %48, align 4
  %226 = load i32, i32* %49, align 4
  %227 = load i32, i32* %50, align 4
  %228 = load i32, i32* %51, align 4
  %229 = load i32, i32* %52, align 4
  %230 = load i32, i32* %53, align 4
  %231 = load i32, i32* %59, align 4
  %232 = load i32, i32* %61, align 4
  %233 = load i32, i32* %60, align 4
  %234 = load i32, i32* %55, align 4
  %235 = load i32, i32* %56, align 4
  %236 = load i32, i32* %57, align 4
  %237 = load i32, i32* %58, align 4
  %238 = call i32 @HEVC_BIW_RND_CLIP4(i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237)
  %239 = load i32, i32* %56, align 4
  %240 = load i32, i32* %55, align 4
  %241 = load i32, i32* %58, align 4
  %242 = load i32, i32* %57, align 4
  %243 = load i32, i32* %55, align 4
  %244 = load i32, i32* %56, align 4
  %245 = call i32 @PCKEV_B2_SH(i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244)
  %246 = load i32, i32* %55, align 4
  %247 = load i32, i32* %56, align 4
  %248 = load i32*, i32** %18, align 8
  %249 = load i32, i32* %19, align 4
  %250 = call i32 @ST_D4(i32 %246, i32 %247, i32 0, i32 1, i32 0, i32 1, i32* %248, i32 %249)
  %251 = load i32, i32* %19, align 4
  %252 = mul nsw i32 4, %251
  %253 = load i32*, i32** %18, align 8
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  store i32* %255, i32** %18, align 8
  br label %109

256:                                              ; preds = %109
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_8TAP_SH(i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
