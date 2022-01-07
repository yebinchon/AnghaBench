; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_8x6_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_8x6_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32)* @hevc_vt_biwgt_4t_8x6_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_biwgt_4t_8x6_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
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
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca i64, align 8
  %56 = alloca i64, align 8
  %57 = alloca i64, align 8
  %58 = alloca i64, align 8
  %59 = alloca i64, align 8
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32* %4, i32** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = sext i32 %63 to i64
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32* %67, i32** %13, align 8
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* %23, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %24, align 4
  %72 = shl i32 %70, %71
  store i32 %72, i32* %25, align 4
  %73 = load i32, i32* %20, align 4
  %74 = and i32 %73, 65535
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %21, align 4
  %77 = shl i32 %76, 16
  %78 = or i32 %75, %77
  store i32 %78, i32* %26, align 4
  %79 = load i32, i32* %21, align 4
  %80 = mul nsw i32 128, %79
  store i32 %80, i32* %27, align 4
  %81 = load i32, i32* %27, align 4
  %82 = shl i32 %81, 6
  store i32 %82, i32* %27, align 4
  %83 = load i32, i32* %27, align 4
  %84 = load i32, i32* %25, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %25, align 4
  %86 = load i32, i32* %25, align 4
  %87 = call i32 @__msa_fill_w(i32 %86)
  store i32 %87, i32* %61, align 4
  %88 = load i32, i32* %26, align 4
  %89 = call i32 @__msa_fill_w(i32 %88)
  store i32 %89, i32* %60, align 4
  %90 = load i32, i32* %24, align 4
  %91 = add nsw i32 %90, 1
  %92 = call i32 @__msa_fill_w(i32 %91)
  store i32 %92, i32* %62, align 4
  %93 = load i32*, i32** %19, align 8
  %94 = call i64 @LD_SH(i32* %93)
  store i64 %94, i64* %59, align 8
  %95 = load i64, i64* %59, align 8
  %96 = load i64, i64* %57, align 8
  %97 = load i64, i64* %58, align 8
  %98 = call i32 @SPLATI_H2_SH(i64 %95, i32 0, i32 1, i64 %96, i64 %97)
  %99 = load i32*, i32** %13, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %28, align 4
  %102 = load i32, i32* %29, align 4
  %103 = load i32, i32* %30, align 4
  %104 = call i32 @LD_SB3(i32* %99, i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %14, align 4
  %106 = mul nsw i32 3, %105
  %107 = load i32*, i32** %13, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %13, align 8
  %110 = load i32, i32* %28, align 4
  %111 = load i32, i32* %29, align 4
  %112 = load i32, i32* %30, align 4
  %113 = call i32 @XORI_B3_128_SB(i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %29, align 4
  %115 = load i32, i32* %28, align 4
  %116 = load i32, i32* %30, align 4
  %117 = load i32, i32* %29, align 4
  %118 = load i32, i32* %43, align 4
  %119 = load i32, i32* %47, align 4
  %120 = call i32 @ILVR_B2_SB(i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32*, i32** %13, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %31, align 4
  %124 = load i32, i32* %32, align 4
  %125 = load i32, i32* %33, align 4
  %126 = load i32, i32* %34, align 4
  %127 = load i32, i32* %35, align 4
  %128 = load i32, i32* %36, align 4
  %129 = call i32 @LD_SB6(i32* %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128)
  %130 = load i32*, i32** %15, align 8
  %131 = load i32, i32* %16, align 4
  %132 = load i64, i64* %37, align 8
  %133 = load i64, i64* %38, align 8
  %134 = load i64, i64* %39, align 8
  %135 = load i64, i64* %40, align 8
  %136 = load i64, i64* %41, align 8
  %137 = load i64, i64* %42, align 8
  %138 = call i32 @LD_SH6(i32* %130, i32 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137)
  %139 = load i32, i32* %31, align 4
  %140 = load i32, i32* %32, align 4
  %141 = load i32, i32* %33, align 4
  %142 = load i32, i32* %34, align 4
  %143 = load i32, i32* %35, align 4
  %144 = load i32, i32* %36, align 4
  %145 = call i32 @XORI_B6_128_SB(i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %31, align 4
  %147 = load i32, i32* %30, align 4
  %148 = load i32, i32* %32, align 4
  %149 = load i32, i32* %31, align 4
  %150 = load i32, i32* %33, align 4
  %151 = load i32, i32* %32, align 4
  %152 = load i32, i32* %34, align 4
  %153 = load i32, i32* %33, align 4
  %154 = load i32, i32* %44, align 4
  %155 = load i32, i32* %48, align 4
  %156 = load i32, i32* %45, align 4
  %157 = load i32, i32* %49, align 4
  %158 = call i32 @ILVR_B4_SB(i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157)
  %159 = load i32, i32* %35, align 4
  %160 = load i32, i32* %34, align 4
  %161 = load i32, i32* %36, align 4
  %162 = load i32, i32* %35, align 4
  %163 = load i32, i32* %46, align 4
  %164 = load i32, i32* %50, align 4
  %165 = call i32 @ILVR_B2_SB(i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* %43, align 4
  %167 = load i32, i32* %44, align 4
  %168 = load i64, i64* %57, align 8
  %169 = load i64, i64* %58, align 8
  %170 = call i64 @HEVC_FILT_4TAP_SH(i32 %166, i32 %167, i64 %168, i64 %169)
  store i64 %170, i64* %51, align 8
  %171 = load i32, i32* %47, align 4
  %172 = load i32, i32* %48, align 4
  %173 = load i64, i64* %57, align 8
  %174 = load i64, i64* %58, align 8
  %175 = call i64 @HEVC_FILT_4TAP_SH(i32 %171, i32 %172, i64 %173, i64 %174)
  store i64 %175, i64* %52, align 8
  %176 = load i32, i32* %44, align 4
  %177 = load i32, i32* %45, align 4
  %178 = load i64, i64* %57, align 8
  %179 = load i64, i64* %58, align 8
  %180 = call i64 @HEVC_FILT_4TAP_SH(i32 %176, i32 %177, i64 %178, i64 %179)
  store i64 %180, i64* %53, align 8
  %181 = load i32, i32* %48, align 4
  %182 = load i32, i32* %49, align 4
  %183 = load i64, i64* %57, align 8
  %184 = load i64, i64* %58, align 8
  %185 = call i64 @HEVC_FILT_4TAP_SH(i32 %181, i32 %182, i64 %183, i64 %184)
  store i64 %185, i64* %54, align 8
  %186 = load i32, i32* %45, align 4
  %187 = load i32, i32* %46, align 4
  %188 = load i64, i64* %57, align 8
  %189 = load i64, i64* %58, align 8
  %190 = call i64 @HEVC_FILT_4TAP_SH(i32 %186, i32 %187, i64 %188, i64 %189)
  store i64 %190, i64* %55, align 8
  %191 = load i32, i32* %49, align 4
  %192 = load i32, i32* %50, align 4
  %193 = load i64, i64* %57, align 8
  %194 = load i64, i64* %58, align 8
  %195 = call i64 @HEVC_FILT_4TAP_SH(i32 %191, i32 %192, i64 %193, i64 %194)
  store i64 %195, i64* %56, align 8
  %196 = load i64, i64* %51, align 8
  %197 = load i64, i64* %52, align 8
  %198 = load i64, i64* %53, align 8
  %199 = load i64, i64* %54, align 8
  %200 = load i64, i64* %37, align 8
  %201 = load i64, i64* %38, align 8
  %202 = load i64, i64* %39, align 8
  %203 = load i64, i64* %40, align 8
  %204 = load i32, i32* %60, align 4
  %205 = load i32, i32* %62, align 4
  %206 = load i32, i32* %61, align 4
  %207 = load i64, i64* %51, align 8
  %208 = load i64, i64* %52, align 8
  %209 = load i64, i64* %53, align 8
  %210 = load i64, i64* %54, align 8
  %211 = call i32 @HEVC_BIW_RND_CLIP4(i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i32 %204, i32 %205, i32 %206, i64 %207, i64 %208, i64 %209, i64 %210)
  %212 = load i64, i64* %55, align 8
  %213 = load i64, i64* %56, align 8
  %214 = load i64, i64* %41, align 8
  %215 = load i64, i64* %42, align 8
  %216 = load i32, i32* %60, align 4
  %217 = load i32, i32* %62, align 4
  %218 = load i32, i32* %61, align 4
  %219 = load i64, i64* %55, align 8
  %220 = load i64, i64* %56, align 8
  %221 = call i32 @HEVC_BIW_RND_CLIP2(i64 %212, i64 %213, i64 %214, i64 %215, i32 %216, i32 %217, i32 %218, i64 %219, i64 %220)
  %222 = load i64, i64* %52, align 8
  %223 = load i64, i64* %51, align 8
  %224 = load i64, i64* %54, align 8
  %225 = load i64, i64* %53, align 8
  %226 = load i64, i64* %51, align 8
  %227 = load i64, i64* %52, align 8
  %228 = call i32 @PCKEV_B2_SH(i64 %222, i64 %223, i64 %224, i64 %225, i64 %226, i64 %227)
  %229 = load i64, i64* %56, align 8
  %230 = trunc i64 %229 to i32
  %231 = load i64, i64* %55, align 8
  %232 = trunc i64 %231 to i32
  %233 = call i64 @__msa_pckev_b(i32 %230, i32 %232)
  store i64 %233, i64* %54, align 8
  %234 = load i64, i64* %51, align 8
  %235 = load i64, i64* %52, align 8
  %236 = load i32*, i32** %17, align 8
  %237 = load i32, i32* %18, align 4
  %238 = call i32 @ST_D4(i64 %234, i64 %235, i32 0, i32 1, i32 0, i32 1, i32* %236, i32 %237)
  %239 = load i64, i64* %54, align 8
  %240 = load i32*, i32** %17, align 8
  %241 = load i32, i32* %18, align 4
  %242 = mul nsw i32 4, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  %245 = load i32, i32* %18, align 4
  %246 = call i32 @ST_D2(i64 %239, i32 0, i32 1, i32* %244, i32 %245)
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB6(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SH6(i32*, i32, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B6_128_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i32, i32, i64, i64) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP2(i64, i64, i64, i64, i32, i32, i32, i64, i64) #1

declare dso_local i32 @PCKEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_pckev_b(i32, i32) #1

declare dso_local i32 @ST_D4(i64, i64, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_D2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
