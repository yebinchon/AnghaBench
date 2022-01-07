; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel4_h6v6_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel4_h6v6_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subpel_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_epel4_h6v6_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %52 = load i32**, i32*** @subpel_filters_msa, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %52, i64 %55
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %16, align 8
  %58 = load i32**, i32*** @subpel_filters_msa, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %58, i64 %61
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %17, align 8
  %64 = load i32*, i32** @mc_filt_mask_arr, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 16
  %66 = call i64 @LD_UB(i32* %65)
  store i64 %66, i64* %30, align 8
  %67 = load i32, i32* %11, align 4
  %68 = mul nsw i32 2, %67
  %69 = add nsw i32 2, %68
  %70 = load i32*, i32** %10, align 8
  %71 = sext i32 %69 to i64
  %72 = sub i64 0, %71
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32* %73, i32** %10, align 8
  %74 = load i32*, i32** %16, align 8
  %75 = call i64 @LD_SH(i32* %74)
  store i64 %75, i64* %44, align 8
  %76 = load i64, i64* %44, align 8
  %77 = load i32, i32* %27, align 4
  %78 = load i32, i32* %28, align 4
  %79 = load i32, i32* %29, align 4
  %80 = call i32 @SPLATI_H3_SB(i64 %76, i32 0, i32 1, i32 2, i32 %77, i32 %78, i32 %79)
  %81 = load i32*, i32** %17, align 8
  %82 = call i64 @LD_SH(i32* %81)
  store i64 %82, i64* %44, align 8
  %83 = load i64, i64* %44, align 8
  %84 = load i64, i64* %45, align 8
  %85 = load i64, i64* %46, align 8
  %86 = load i64, i64* %47, align 8
  %87 = call i32 @SPLATI_H3_SH(i64 %83, i32 0, i32 1, i32 2, i64 %84, i64 %85, i64 %86)
  %88 = load i64, i64* %30, align 8
  %89 = add nsw i64 %88, 2
  store i64 %89, i64* %31, align 8
  %90 = load i64, i64* %30, align 8
  %91 = add nsw i64 %90, 4
  store i64 %91, i64* %32, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %21, align 4
  %98 = load i32, i32* %22, align 4
  %99 = call i32 @LD_SB5(i32* %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = mul nsw i32 5, %100
  %102 = load i32*, i32** %10, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %10, align 8
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %20, align 4
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %22, align 4
  %110 = call i32 @XORI_B5_128_SB(i32 %105, i32 %106, i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i64, i64* %30, align 8
  %114 = load i64, i64* %31, align 8
  %115 = load i64, i64* %32, align 8
  %116 = load i32, i32* %27, align 4
  %117 = load i32, i32* %28, align 4
  %118 = load i32, i32* %29, align 4
  %119 = call i64 @HORIZ_6TAP_FILT(i32 %111, i32 %112, i64 %113, i64 %114, i64 %115, i32 %116, i32 %117, i32 %118)
  store i64 %119, i64* %36, align 8
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* %21, align 4
  %122 = load i64, i64* %30, align 8
  %123 = load i64, i64* %31, align 8
  %124 = load i64, i64* %32, align 8
  %125 = load i32, i32* %27, align 4
  %126 = load i32, i32* %28, align 4
  %127 = load i32, i32* %29, align 4
  %128 = call i64 @HORIZ_6TAP_FILT(i32 %120, i32 %121, i64 %122, i64 %123, i64 %124, i32 %125, i32 %126, i32 %127)
  store i64 %128, i64* %38, align 8
  %129 = load i64, i64* %38, align 8
  %130 = trunc i64 %129 to i32
  %131 = load i64, i64* %36, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i64 @__msa_sldi_b(i32 %130, i32 %132, i32 8)
  store i64 %133, i64* %37, align 8
  %134 = load i32, i32* %21, align 4
  %135 = load i32, i32* %22, align 4
  %136 = load i64, i64* %30, align 8
  %137 = load i64, i64* %31, align 8
  %138 = load i64, i64* %32, align 8
  %139 = load i32, i32* %27, align 4
  %140 = load i32, i32* %28, align 4
  %141 = load i32, i32* %29, align 4
  %142 = call i64 @HORIZ_6TAP_FILT(i32 %134, i32 %135, i64 %136, i64 %137, i64 %138, i32 %139, i32 %140, i32 %141)
  store i64 %142, i64* %39, align 8
  %143 = load i64, i64* %36, align 8
  %144 = load i64, i64* %37, align 8
  %145 = load i64, i64* %38, align 8
  %146 = load i64, i64* %39, align 8
  %147 = load i64, i64* %48, align 8
  %148 = load i64, i64* %49, align 8
  %149 = call i32 @ILVEV_B2_SH(i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148)
  %150 = load i32, i32* %12, align 4
  %151 = ashr i32 %150, 2
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %156, %7
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %15, align 4
  %155 = icmp ne i32 %153, 0
  br i1 %155, label %156, label %256

156:                                              ; preds = %152
  %157 = load i32*, i32** %10, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %23, align 4
  %160 = load i32, i32* %24, align 4
  %161 = call i32 @LD_SB2(i32* %157, i32 %158, i32 %159, i32 %160)
  %162 = load i32, i32* %11, align 4
  %163 = mul nsw i32 2, %162
  %164 = load i32*, i32** %10, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32* %166, i32** %10, align 8
  %167 = load i32, i32* %23, align 4
  %168 = load i32, i32* %24, align 4
  %169 = call i32 @XORI_B2_128_SB(i32 %167, i32 %168)
  %170 = load i32, i32* %23, align 4
  %171 = load i32, i32* %24, align 4
  %172 = load i64, i64* %30, align 8
  %173 = load i64, i64* %31, align 8
  %174 = load i64, i64* %32, align 8
  %175 = load i32, i32* %27, align 4
  %176 = load i32, i32* %28, align 4
  %177 = load i32, i32* %29, align 4
  %178 = call i64 @HORIZ_6TAP_FILT(i32 %170, i32 %171, i64 %172, i64 %173, i64 %174, i32 %175, i32 %176, i32 %177)
  store i64 %178, i64* %41, align 8
  %179 = load i64, i64* %41, align 8
  %180 = trunc i64 %179 to i32
  %181 = load i64, i64* %39, align 8
  %182 = trunc i64 %181 to i32
  %183 = call i64 @__msa_sldi_b(i32 %180, i32 %182, i32 8)
  store i64 %183, i64* %40, align 8
  %184 = load i32*, i32** %10, align 8
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %25, align 4
  %187 = load i32, i32* %26, align 4
  %188 = call i32 @LD_SB2(i32* %184, i32 %185, i32 %186, i32 %187)
  %189 = load i32, i32* %11, align 4
  %190 = mul nsw i32 2, %189
  %191 = load i32*, i32** %10, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  store i32* %193, i32** %10, align 8
  %194 = load i32, i32* %25, align 4
  %195 = load i32, i32* %26, align 4
  %196 = call i32 @XORI_B2_128_SB(i32 %194, i32 %195)
  %197 = load i32, i32* %25, align 4
  %198 = load i32, i32* %26, align 4
  %199 = load i64, i64* %30, align 8
  %200 = load i64, i64* %31, align 8
  %201 = load i64, i64* %32, align 8
  %202 = load i32, i32* %27, align 4
  %203 = load i32, i32* %28, align 4
  %204 = load i32, i32* %29, align 4
  %205 = call i64 @HORIZ_6TAP_FILT(i32 %197, i32 %198, i64 %199, i64 %200, i64 %201, i32 %202, i32 %203, i32 %204)
  store i64 %205, i64* %43, align 8
  %206 = load i64, i64* %43, align 8
  %207 = trunc i64 %206 to i32
  %208 = load i64, i64* %41, align 8
  %209 = trunc i64 %208 to i32
  %210 = call i64 @__msa_sldi_b(i32 %207, i32 %209, i32 8)
  store i64 %210, i64* %42, align 8
  %211 = load i64, i64* %41, align 8
  %212 = trunc i64 %211 to i32
  %213 = load i64, i64* %40, align 8
  %214 = trunc i64 %213 to i32
  %215 = call i64 @__msa_ilvev_b(i32 %212, i32 %214)
  store i64 %215, i64* %50, align 8
  %216 = load i64, i64* %48, align 8
  %217 = load i64, i64* %49, align 8
  %218 = load i64, i64* %50, align 8
  %219 = load i64, i64* %45, align 8
  %220 = load i64, i64* %46, align 8
  %221 = load i64, i64* %47, align 8
  %222 = call i64 @DPADD_SH3_SH(i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221)
  store i64 %222, i64* %34, align 8
  %223 = load i64, i64* %43, align 8
  %224 = trunc i64 %223 to i32
  %225 = load i64, i64* %42, align 8
  %226 = trunc i64 %225 to i32
  %227 = call i64 @__msa_ilvev_b(i32 %224, i32 %226)
  store i64 %227, i64* %51, align 8
  %228 = load i64, i64* %49, align 8
  %229 = load i64, i64* %50, align 8
  %230 = load i64, i64* %51, align 8
  %231 = load i64, i64* %45, align 8
  %232 = load i64, i64* %46, align 8
  %233 = load i64, i64* %47, align 8
  %234 = call i64 @DPADD_SH3_SH(i64 %228, i64 %229, i64 %230, i64 %231, i64 %232, i64 %233)
  store i64 %234, i64* %35, align 8
  %235 = load i64, i64* %34, align 8
  %236 = load i64, i64* %35, align 8
  %237 = call i32 @SRARI_H2_SH(i64 %235, i64 %236, i32 7)
  %238 = load i64, i64* %34, align 8
  %239 = load i64, i64* %35, align 8
  %240 = call i32 @SAT_SH2_SH(i64 %238, i64 %239, i32 7)
  %241 = load i64, i64* %34, align 8
  %242 = load i64, i64* %35, align 8
  %243 = call i64 @PCKEV_XORI128_UB(i64 %241, i64 %242)
  store i64 %243, i64* %33, align 8
  %244 = load i64, i64* %33, align 8
  %245 = load i32*, i32** %8, align 8
  %246 = load i32, i32* %9, align 4
  %247 = call i32 @ST_W4(i64 %244, i32 0, i32 1, i32 2, i32 3, i32* %245, i32 %246)
  %248 = load i32, i32* %9, align 4
  %249 = mul nsw i32 4, %248
  %250 = load i32*, i32** %8, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  store i32* %252, i32** %8, align 8
  %253 = load i64, i64* %43, align 8
  store i64 %253, i64* %39, align 8
  %254 = load i64, i64* %50, align 8
  store i64 %254, i64* %48, align 8
  %255 = load i64, i64* %51, align 8
  store i64 %255, i64* %49, align 8
  br label %152

256:                                              ; preds = %152
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H3_SB(i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SPLATI_H3_SH(i64, i32, i32, i32, i64, i64, i64) #1

declare dso_local i32 @LD_SB5(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B5_128_SB(i32, i32, i32, i32, i32) #1

declare dso_local i64 @HORIZ_6TAP_FILT(i32, i32, i64, i64, i64, i32, i32, i32) #1

declare dso_local i64 @__msa_sldi_b(i32, i32, i32) #1

declare dso_local i32 @ILVEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i64 @__msa_ilvev_b(i32, i32) #1

declare dso_local i64 @DPADD_SH3_SH(i64, i64, i64, i64, i64, i64) #1

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
