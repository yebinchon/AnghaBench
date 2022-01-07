; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_4x8multiple_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_4x8multiple_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_hz_biwgt_4t_4x8multiple_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_biwgt_4t_4x8multiple_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
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
  %61 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 16
  %63 = call i64 @LD_SB(i32* %62)
  store i64 %63, i64* %41, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 -1
  store i32* %65, i32** %14, align 8
  %66 = load i32*, i32** %20, align 8
  %67 = call i32 @LD_SH(i32* %66)
  store i32 %67, i32* %57, align 4
  %68 = load i32, i32* %57, align 4
  %69 = load i32, i32* %31, align 4
  %70 = load i32, i32* %32, align 4
  %71 = call i32 @SPLATI_H2_SH(i32 %68, i32 0, i32 1, i32 %69, i32 %70)
  %72 = load i32, i32* %24, align 4
  %73 = load i32, i32* %25, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* %26, align 4
  %76 = shl i32 %74, %75
  store i32 %76, i32* %29, align 4
  %77 = load i32, i32* %22, align 4
  %78 = and i32 %77, 65535
  store i32 %78, i32* %22, align 4
  %79 = load i32, i32* %22, align 4
  %80 = load i32, i32* %23, align 4
  %81 = shl i32 %80, 16
  %82 = or i32 %79, %81
  store i32 %82, i32* %28, align 4
  %83 = load i32, i32* %23, align 4
  %84 = mul nsw i32 128, %83
  store i32 %84, i32* %30, align 4
  %85 = load i32, i32* %30, align 4
  %86 = shl i32 %85, 6
  store i32 %86, i32* %30, align 4
  %87 = load i32, i32* %30, align 4
  %88 = load i32, i32* %29, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %29, align 4
  %90 = load i32, i32* %29, align 4
  %91 = call i32 @__msa_fill_w(i32 %90)
  store i32 %91, i32* %59, align 4
  %92 = load i32, i32* %28, align 4
  %93 = call i32 @__msa_fill_w(i32 %92)
  store i32 %93, i32* %58, align 4
  %94 = load i32, i32* %26, align 4
  %95 = add nsw i32 %94, 1
  %96 = call i32 @__msa_fill_w(i32 %95)
  store i32 %96, i32* %60, align 4
  %97 = load i64, i64* %41, align 8
  %98 = add nsw i64 %97, 2
  store i64 %98, i64* %42, align 8
  %99 = load i32, i32* %21, align 4
  %100 = ashr i32 %99, 3
  store i32 %100, i32* %27, align 4
  br label %101

101:                                              ; preds = %105, %13
  %102 = load i32, i32* %27, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %27, align 4
  %104 = icmp ne i32 %102, 0
  br i1 %104, label %105, label %258

105:                                              ; preds = %101
  %106 = load i32*, i32** %14, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load i64, i64* %33, align 8
  %109 = load i64, i64* %34, align 8
  %110 = load i64, i64* %35, align 8
  %111 = load i64, i64* %36, align 8
  %112 = load i64, i64* %37, align 8
  %113 = load i64, i64* %38, align 8
  %114 = load i64, i64* %39, align 8
  %115 = load i64, i64* %40, align 8
  %116 = call i32 @LD_SB8(i32* %106, i32 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115)
  %117 = load i32, i32* %15, align 4
  %118 = mul nsw i32 8, %117
  %119 = load i32*, i32** %14, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %14, align 8
  %122 = load i32*, i32** %16, align 8
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %49, align 4
  %125 = load i32, i32* %50, align 4
  %126 = load i32, i32* %51, align 4
  %127 = load i32, i32* %52, align 4
  %128 = call i32 @LD_SH4(i32* %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %17, align 4
  %130 = mul nsw i32 4, %129
  %131 = load i32*, i32** %16, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %16, align 8
  %134 = load i32*, i32** %16, align 8
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %53, align 4
  %137 = load i32, i32* %54, align 4
  %138 = load i32, i32* %55, align 4
  %139 = load i32, i32* %56, align 4
  %140 = call i32 @LD_SH4(i32* %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %17, align 4
  %142 = mul nsw i32 4, %141
  %143 = load i32*, i32** %16, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %16, align 8
  %146 = load i32, i32* %50, align 4
  %147 = load i32, i32* %49, align 4
  %148 = load i32, i32* %52, align 4
  %149 = load i32, i32* %51, align 4
  %150 = load i32, i32* %49, align 4
  %151 = load i32, i32* %50, align 4
  %152 = call i32 @ILVR_D2_SH(i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* %54, align 4
  %154 = load i32, i32* %53, align 4
  %155 = load i32, i32* %56, align 4
  %156 = load i32, i32* %55, align 4
  %157 = load i32, i32* %51, align 4
  %158 = load i32, i32* %52, align 4
  %159 = call i32 @ILVR_D2_SH(i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158)
  %160 = load i64, i64* %33, align 8
  %161 = load i64, i64* %34, align 8
  %162 = load i64, i64* %35, align 8
  %163 = load i64, i64* %36, align 8
  %164 = load i64, i64* %37, align 8
  %165 = load i64, i64* %38, align 8
  %166 = load i64, i64* %39, align 8
  %167 = load i64, i64* %40, align 8
  %168 = call i32 @XORI_B8_128_SB(i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167)
  %169 = load i64, i64* %33, align 8
  %170 = load i64, i64* %34, align 8
  %171 = load i64, i64* %33, align 8
  %172 = load i64, i64* %34, align 8
  %173 = load i64, i64* %41, align 8
  %174 = load i64, i64* %42, align 8
  %175 = load i64, i64* %43, align 8
  %176 = load i64, i64* %44, align 8
  %177 = call i32 @VSHF_B2_SB(i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176)
  %178 = load i64, i64* %43, align 8
  %179 = load i64, i64* %44, align 8
  %180 = load i32, i32* %31, align 4
  %181 = load i32, i32* %32, align 4
  %182 = call i32 @HEVC_FILT_4TAP_SH(i64 %178, i64 %179, i32 %180, i32 %181)
  store i32 %182, i32* %45, align 4
  %183 = load i64, i64* %35, align 8
  %184 = load i64, i64* %36, align 8
  %185 = load i64, i64* %35, align 8
  %186 = load i64, i64* %36, align 8
  %187 = load i64, i64* %41, align 8
  %188 = load i64, i64* %42, align 8
  %189 = load i64, i64* %43, align 8
  %190 = load i64, i64* %44, align 8
  %191 = call i32 @VSHF_B2_SB(i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190)
  %192 = load i64, i64* %43, align 8
  %193 = load i64, i64* %44, align 8
  %194 = load i32, i32* %31, align 4
  %195 = load i32, i32* %32, align 4
  %196 = call i32 @HEVC_FILT_4TAP_SH(i64 %192, i64 %193, i32 %194, i32 %195)
  store i32 %196, i32* %46, align 4
  %197 = load i64, i64* %37, align 8
  %198 = load i64, i64* %38, align 8
  %199 = load i64, i64* %37, align 8
  %200 = load i64, i64* %38, align 8
  %201 = load i64, i64* %41, align 8
  %202 = load i64, i64* %42, align 8
  %203 = load i64, i64* %43, align 8
  %204 = load i64, i64* %44, align 8
  %205 = call i32 @VSHF_B2_SB(i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204)
  %206 = load i64, i64* %43, align 8
  %207 = load i64, i64* %44, align 8
  %208 = load i32, i32* %31, align 4
  %209 = load i32, i32* %32, align 4
  %210 = call i32 @HEVC_FILT_4TAP_SH(i64 %206, i64 %207, i32 %208, i32 %209)
  store i32 %210, i32* %47, align 4
  %211 = load i64, i64* %39, align 8
  %212 = load i64, i64* %40, align 8
  %213 = load i64, i64* %39, align 8
  %214 = load i64, i64* %40, align 8
  %215 = load i64, i64* %41, align 8
  %216 = load i64, i64* %42, align 8
  %217 = load i64, i64* %43, align 8
  %218 = load i64, i64* %44, align 8
  %219 = call i32 @VSHF_B2_SB(i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218)
  %220 = load i64, i64* %43, align 8
  %221 = load i64, i64* %44, align 8
  %222 = load i32, i32* %31, align 4
  %223 = load i32, i32* %32, align 4
  %224 = call i32 @HEVC_FILT_4TAP_SH(i64 %220, i64 %221, i32 %222, i32 %223)
  store i32 %224, i32* %48, align 4
  %225 = load i32, i32* %45, align 4
  %226 = load i32, i32* %46, align 4
  %227 = load i32, i32* %47, align 4
  %228 = load i32, i32* %48, align 4
  %229 = load i32, i32* %49, align 4
  %230 = load i32, i32* %50, align 4
  %231 = load i32, i32* %51, align 4
  %232 = load i32, i32* %52, align 4
  %233 = load i32, i32* %58, align 4
  %234 = load i32, i32* %60, align 4
  %235 = load i32, i32* %59, align 4
  %236 = load i32, i32* %45, align 4
  %237 = load i32, i32* %46, align 4
  %238 = load i32, i32* %47, align 4
  %239 = load i32, i32* %48, align 4
  %240 = call i32 @HEVC_BIW_RND_CLIP4(i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239)
  %241 = load i32, i32* %46, align 4
  %242 = load i32, i32* %45, align 4
  %243 = load i32, i32* %48, align 4
  %244 = load i32, i32* %47, align 4
  %245 = load i32, i32* %45, align 4
  %246 = load i32, i32* %46, align 4
  %247 = call i32 @PCKEV_B2_SH(i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246)
  %248 = load i32, i32* %45, align 4
  %249 = load i32, i32* %46, align 4
  %250 = load i32*, i32** %18, align 8
  %251 = load i32, i32* %19, align 4
  %252 = call i32 @ST_W8(i32 %248, i32 %249, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %250, i32 %251)
  %253 = load i32, i32* %19, align 4
  %254 = mul nsw i32 8, %253
  %255 = load i32*, i32** %18, align 8
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  store i32* %257, i32** %18, align 8
  br label %101

258:                                              ; preds = %101
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
