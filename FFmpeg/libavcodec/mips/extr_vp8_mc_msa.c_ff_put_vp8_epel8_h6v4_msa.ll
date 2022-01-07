; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel8_h6v4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel8_h6v4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subpel_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_epel8_h6v4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
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
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %48 = load i32**, i32*** @subpel_filters_msa, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %48, i64 %51
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %16, align 8
  %54 = load i32**, i32*** @subpel_filters_msa, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %54, i64 %57
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %17, align 8
  %60 = load i32*, i32** @mc_filt_mask_arr, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = call i64 @LD_SB(i32* %61)
  store i64 %62, i64* %28, align 8
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 2, %63
  %65 = load i32*, i32** %10, align 8
  %66 = sext i32 %64 to i64
  %67 = sub i64 0, %66
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32* %68, i32** %10, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = call i64 @LD_SH(i32* %69)
  store i64 %70, i64* %31, align 8
  %71 = load i64, i64* %31, align 8
  %72 = load i64, i64* %25, align 8
  %73 = load i64, i64* %26, align 8
  %74 = load i64, i64* %27, align 8
  %75 = call i32 @SPLATI_H3_SB(i64 %71, i32 0, i32 1, i32 2, i64 %72, i64 %73, i64 %74)
  %76 = load i64, i64* %28, align 8
  %77 = add nsw i64 %76, 2
  store i64 %77, i64* %29, align 8
  %78 = load i64, i64* %28, align 8
  %79 = add nsw i64 %78, 4
  store i64 %79, i64* %30, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i64, i64* %18, align 8
  %83 = load i64, i64* %19, align 8
  %84 = load i64, i64* %20, align 8
  %85 = call i32 @LD_SB3(i32* %80, i32 %81, i64 %82, i64 %83, i64 %84)
  %86 = load i32, i32* %11, align 4
  %87 = mul nsw i32 3, %86
  %88 = load i32*, i32** %10, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %10, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* %20, align 8
  %94 = call i32 @XORI_B3_128_SB(i64 %91, i64 %92, i64 %93)
  %95 = load i64, i64* %18, align 8
  %96 = load i64, i64* %18, align 8
  %97 = load i64, i64* %28, align 8
  %98 = load i64, i64* %29, align 8
  %99 = load i64, i64* %30, align 8
  %100 = load i64, i64* %25, align 8
  %101 = load i64, i64* %26, align 8
  %102 = load i64, i64* %27, align 8
  %103 = call i64 @HORIZ_6TAP_FILT(i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102)
  store i64 %103, i64* %34, align 8
  %104 = load i64, i64* %19, align 8
  %105 = load i64, i64* %19, align 8
  %106 = load i64, i64* %28, align 8
  %107 = load i64, i64* %29, align 8
  %108 = load i64, i64* %30, align 8
  %109 = load i64, i64* %25, align 8
  %110 = load i64, i64* %26, align 8
  %111 = load i64, i64* %27, align 8
  %112 = call i64 @HORIZ_6TAP_FILT(i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111)
  store i64 %112, i64* %35, align 8
  %113 = load i64, i64* %20, align 8
  %114 = load i64, i64* %20, align 8
  %115 = load i64, i64* %28, align 8
  %116 = load i64, i64* %29, align 8
  %117 = load i64, i64* %30, align 8
  %118 = load i64, i64* %25, align 8
  %119 = load i64, i64* %26, align 8
  %120 = load i64, i64* %27, align 8
  %121 = call i64 @HORIZ_6TAP_FILT(i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120)
  store i64 %121, i64* %36, align 8
  %122 = load i64, i64* %34, align 8
  %123 = load i64, i64* %35, align 8
  %124 = load i64, i64* %35, align 8
  %125 = load i64, i64* %36, align 8
  %126 = load i64, i64* %42, align 8
  %127 = load i64, i64* %44, align 8
  %128 = call i32 @ILVEV_B2_SH(i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127)
  %129 = load i32*, i32** %17, align 8
  %130 = call i64 @LD_SH(i32* %129)
  store i64 %130, i64* %31, align 8
  %131 = load i64, i64* %31, align 8
  %132 = load i64, i64* %32, align 8
  %133 = load i64, i64* %33, align 8
  %134 = call i32 @SPLATI_H2_SH(i64 %131, i32 0, i32 1, i64 %132, i64 %133)
  %135 = load i32, i32* %12, align 4
  %136 = ashr i32 %135, 2
  store i32 %136, i32* %15, align 4
  br label %137

137:                                              ; preds = %141, %7
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %15, align 4
  %140 = icmp ne i32 %138, 0
  br i1 %140, label %141, label %257

141:                                              ; preds = %137
  %142 = load i32*, i32** %10, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i64, i64* %21, align 8
  %145 = load i64, i64* %22, align 8
  %146 = load i64, i64* %23, align 8
  %147 = load i64, i64* %24, align 8
  %148 = call i32 @LD_SB4(i32* %142, i32 %143, i64 %144, i64 %145, i64 %146, i64 %147)
  %149 = load i32, i32* %11, align 4
  %150 = mul nsw i32 4, %149
  %151 = load i32*, i32** %10, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %10, align 8
  %154 = load i64, i64* %21, align 8
  %155 = load i64, i64* %22, align 8
  %156 = load i64, i64* %23, align 8
  %157 = load i64, i64* %24, align 8
  %158 = call i32 @XORI_B4_128_SB(i64 %154, i64 %155, i64 %156, i64 %157)
  %159 = load i64, i64* %21, align 8
  %160 = load i64, i64* %21, align 8
  %161 = load i64, i64* %28, align 8
  %162 = load i64, i64* %29, align 8
  %163 = load i64, i64* %30, align 8
  %164 = load i64, i64* %25, align 8
  %165 = load i64, i64* %26, align 8
  %166 = load i64, i64* %27, align 8
  %167 = call i64 @HORIZ_6TAP_FILT(i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166)
  store i64 %167, i64* %37, align 8
  %168 = load i64, i64* %37, align 8
  %169 = load i64, i64* %36, align 8
  %170 = call i64 @__msa_ilvev_b(i64 %168, i64 %169)
  store i64 %170, i64* %43, align 8
  %171 = load i64, i64* %42, align 8
  %172 = load i64, i64* %43, align 8
  %173 = load i64, i64* %32, align 8
  %174 = load i64, i64* %33, align 8
  %175 = call i64 @FILT_4TAP_DPADD_S_H(i64 %171, i64 %172, i64 %173, i64 %174)
  store i64 %175, i64* %38, align 8
  %176 = load i64, i64* %22, align 8
  %177 = load i64, i64* %22, align 8
  %178 = load i64, i64* %28, align 8
  %179 = load i64, i64* %29, align 8
  %180 = load i64, i64* %30, align 8
  %181 = load i64, i64* %25, align 8
  %182 = load i64, i64* %26, align 8
  %183 = load i64, i64* %27, align 8
  %184 = call i64 @HORIZ_6TAP_FILT(i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183)
  store i64 %184, i64* %34, align 8
  %185 = load i64, i64* %34, align 8
  %186 = load i64, i64* %37, align 8
  %187 = call i64 @__msa_ilvev_b(i64 %185, i64 %186)
  store i64 %187, i64* %45, align 8
  %188 = load i64, i64* %44, align 8
  %189 = load i64, i64* %45, align 8
  %190 = load i64, i64* %32, align 8
  %191 = load i64, i64* %33, align 8
  %192 = call i64 @FILT_4TAP_DPADD_S_H(i64 %188, i64 %189, i64 %190, i64 %191)
  store i64 %192, i64* %39, align 8
  %193 = load i64, i64* %23, align 8
  %194 = load i64, i64* %23, align 8
  %195 = load i64, i64* %28, align 8
  %196 = load i64, i64* %29, align 8
  %197 = load i64, i64* %30, align 8
  %198 = load i64, i64* %25, align 8
  %199 = load i64, i64* %26, align 8
  %200 = load i64, i64* %27, align 8
  %201 = call i64 @HORIZ_6TAP_FILT(i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200)
  store i64 %201, i64* %35, align 8
  %202 = load i64, i64* %35, align 8
  %203 = load i64, i64* %34, align 8
  %204 = call i64 @__msa_ilvev_b(i64 %202, i64 %203)
  store i64 %204, i64* %42, align 8
  %205 = load i64, i64* %43, align 8
  %206 = load i64, i64* %42, align 8
  %207 = load i64, i64* %32, align 8
  %208 = load i64, i64* %33, align 8
  %209 = call i64 @FILT_4TAP_DPADD_S_H(i64 %205, i64 %206, i64 %207, i64 %208)
  store i64 %209, i64* %40, align 8
  %210 = load i64, i64* %24, align 8
  %211 = load i64, i64* %24, align 8
  %212 = load i64, i64* %28, align 8
  %213 = load i64, i64* %29, align 8
  %214 = load i64, i64* %30, align 8
  %215 = load i64, i64* %25, align 8
  %216 = load i64, i64* %26, align 8
  %217 = load i64, i64* %27, align 8
  %218 = call i64 @HORIZ_6TAP_FILT(i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217)
  store i64 %218, i64* %36, align 8
  %219 = load i64, i64* %37, align 8
  %220 = load i64, i64* %34, align 8
  %221 = load i64, i64* %35, align 8
  %222 = load i64, i64* %36, align 8
  %223 = load i64, i64* %43, align 8
  %224 = load i64, i64* %44, align 8
  %225 = call i32 @ILVEV_B2_SH(i64 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224)
  %226 = load i64, i64* %43, align 8
  %227 = load i64, i64* %44, align 8
  %228 = load i64, i64* %32, align 8
  %229 = load i64, i64* %33, align 8
  %230 = call i64 @FILT_4TAP_DPADD_S_H(i64 %226, i64 %227, i64 %228, i64 %229)
  store i64 %230, i64* %41, align 8
  %231 = load i64, i64* %38, align 8
  %232 = load i64, i64* %39, align 8
  %233 = load i64, i64* %40, align 8
  %234 = load i64, i64* %41, align 8
  %235 = call i32 @SRARI_H4_SH(i64 %231, i64 %232, i64 %233, i64 %234, i32 7)
  %236 = load i64, i64* %38, align 8
  %237 = load i64, i64* %39, align 8
  %238 = load i64, i64* %40, align 8
  %239 = load i64, i64* %41, align 8
  %240 = call i32 @SAT_SH4_SH(i64 %236, i64 %237, i64 %238, i64 %239, i32 7)
  %241 = load i64, i64* %38, align 8
  %242 = load i64, i64* %39, align 8
  %243 = call i32 @PCKEV_XORI128_UB(i64 %241, i64 %242)
  store i32 %243, i32* %46, align 4
  %244 = load i64, i64* %40, align 8
  %245 = load i64, i64* %41, align 8
  %246 = call i32 @PCKEV_XORI128_UB(i64 %244, i64 %245)
  store i32 %246, i32* %47, align 4
  %247 = load i32, i32* %46, align 4
  %248 = load i32, i32* %47, align 4
  %249 = load i32*, i32** %8, align 8
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @ST_D4(i32 %247, i32 %248, i32 0, i32 1, i32 0, i32 1, i32* %249, i32 %250)
  %252 = load i32, i32* %9, align 4
  %253 = mul nsw i32 4, %252
  %254 = load i32*, i32** %8, align 8
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  store i32* %256, i32** %8, align 8
  br label %137

257:                                              ; preds = %137
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H3_SB(i64, i32, i32, i32, i64, i64, i64) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i64 @HORIZ_6TAP_FILT(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvev_b(i64, i64) #1

declare dso_local i64 @FILT_4TAP_DPADD_S_H(i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @SAT_SH4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i64, i64) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
