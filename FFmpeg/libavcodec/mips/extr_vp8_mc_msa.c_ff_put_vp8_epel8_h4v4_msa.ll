; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel8_h4v4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel8_h4v4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subpel_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_epel8_h4v4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %46 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %47 = load i32**, i32*** @subpel_filters_msa, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %47, i64 %50
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %16, align 8
  %53 = load i32**, i32*** @subpel_filters_msa, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %53, i64 %56
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %17, align 8
  %59 = load i32*, i32** @mc_filt_mask_arr, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = call i64 @LD_UB(i32* %60)
  store i64 %61, i64* %27, align 8
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 1, %62
  %64 = add nsw i32 1, %63
  %65 = load i32*, i32** %10, align 8
  %66 = sext i32 %64 to i64
  %67 = sub i64 0, %66
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32* %68, i32** %10, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = call i64 @LD_SH(i32* %69)
  store i64 %70, i64* %31, align 8
  %71 = load i64, i64* %31, align 8
  %72 = load i32, i32* %25, align 4
  %73 = load i32, i32* %26, align 4
  %74 = call i32 @SPLATI_H2_SB(i64 %71, i32 0, i32 1, i32 %72, i32 %73)
  %75 = load i64, i64* %27, align 8
  %76 = add nsw i64 %75, 2
  store i64 %76, i64* %28, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %20, align 4
  %82 = call i32 @LD_SB3(i32* %77, i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = mul nsw i32 3, %83
  %85 = load i32*, i32** %10, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %10, align 8
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* %20, align 4
  %91 = call i32 @XORI_B3_128_SB(i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i64, i64* %27, align 8
  %95 = load i64, i64* %28, align 8
  %96 = load i32, i32* %25, align 4
  %97 = load i32, i32* %26, align 4
  %98 = call i64 @HORIZ_4TAP_FILT(i32 %92, i32 %93, i64 %94, i64 %95, i32 %96, i32 %97)
  store i64 %98, i64* %38, align 8
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %19, align 4
  %101 = load i64, i64* %27, align 8
  %102 = load i64, i64* %28, align 8
  %103 = load i32, i32* %25, align 4
  %104 = load i32, i32* %26, align 4
  %105 = call i64 @HORIZ_4TAP_FILT(i32 %99, i32 %100, i64 %101, i64 %102, i32 %103, i32 %104)
  store i64 %105, i64* %39, align 8
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* %20, align 4
  %108 = load i64, i64* %27, align 8
  %109 = load i64, i64* %28, align 8
  %110 = load i32, i32* %25, align 4
  %111 = load i32, i32* %26, align 4
  %112 = call i64 @HORIZ_4TAP_FILT(i32 %106, i32 %107, i64 %108, i64 %109, i32 %110, i32 %111)
  store i64 %112, i64* %40, align 8
  %113 = load i64, i64* %38, align 8
  %114 = load i64, i64* %39, align 8
  %115 = load i64, i64* %39, align 8
  %116 = load i64, i64* %40, align 8
  %117 = load i64, i64* %42, align 8
  %118 = load i64, i64* %44, align 8
  %119 = call i32 @ILVEV_B2_SH(i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118)
  %120 = load i32*, i32** %17, align 8
  %121 = call i64 @LD_SH(i32* %120)
  store i64 %121, i64* %31, align 8
  %122 = load i64, i64* %31, align 8
  %123 = load i64, i64* %32, align 8
  %124 = load i64, i64* %33, align 8
  %125 = call i32 @SPLATI_H2_SH(i64 %122, i32 0, i32 1, i64 %123, i64 %124)
  %126 = load i32, i32* %12, align 4
  %127 = ashr i32 %126, 2
  store i32 %127, i32* %15, align 4
  br label %128

128:                                              ; preds = %132, %7
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %15, align 4
  %131 = icmp ne i32 %129, 0
  br i1 %131, label %132, label %248

132:                                              ; preds = %128
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %21, align 4
  %136 = load i32, i32* %22, align 4
  %137 = load i32, i32* %23, align 4
  %138 = load i32, i32* %24, align 4
  %139 = call i32 @LD_SB4(i32* %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* %11, align 4
  %141 = mul nsw i32 4, %140
  %142 = load i32*, i32** %10, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %10, align 8
  %145 = load i32, i32* %21, align 4
  %146 = load i32, i32* %22, align 4
  %147 = load i32, i32* %23, align 4
  %148 = load i32, i32* %24, align 4
  %149 = call i32 @XORI_B4_128_SB(i32 %145, i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %21, align 4
  %151 = load i32, i32* %21, align 4
  %152 = load i64, i64* %27, align 8
  %153 = load i64, i64* %28, align 8
  %154 = load i32, i32* %25, align 4
  %155 = load i32, i32* %26, align 4
  %156 = call i64 @HORIZ_4TAP_FILT(i32 %150, i32 %151, i64 %152, i64 %153, i32 %154, i32 %155)
  store i64 %156, i64* %41, align 8
  %157 = load i64, i64* %41, align 8
  %158 = trunc i64 %157 to i32
  %159 = load i64, i64* %40, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i64 @__msa_ilvev_b(i32 %158, i32 %160)
  store i64 %161, i64* %43, align 8
  %162 = load i64, i64* %42, align 8
  %163 = load i64, i64* %43, align 8
  %164 = load i64, i64* %32, align 8
  %165 = load i64, i64* %33, align 8
  %166 = call i64 @FILT_4TAP_DPADD_S_H(i64 %162, i64 %163, i64 %164, i64 %165)
  store i64 %166, i64* %34, align 8
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* %22, align 4
  %169 = load i64, i64* %27, align 8
  %170 = load i64, i64* %28, align 8
  %171 = load i32, i32* %25, align 4
  %172 = load i32, i32* %26, align 4
  %173 = call i64 @HORIZ_4TAP_FILT(i32 %167, i32 %168, i64 %169, i64 %170, i32 %171, i32 %172)
  store i64 %173, i64* %38, align 8
  %174 = load i64, i64* %38, align 8
  %175 = trunc i64 %174 to i32
  %176 = load i64, i64* %41, align 8
  %177 = trunc i64 %176 to i32
  %178 = call i64 @__msa_ilvev_b(i32 %175, i32 %177)
  store i64 %178, i64* %45, align 8
  %179 = load i64, i64* %44, align 8
  %180 = load i64, i64* %45, align 8
  %181 = load i64, i64* %32, align 8
  %182 = load i64, i64* %33, align 8
  %183 = call i64 @FILT_4TAP_DPADD_S_H(i64 %179, i64 %180, i64 %181, i64 %182)
  store i64 %183, i64* %35, align 8
  %184 = load i32, i32* %23, align 4
  %185 = load i32, i32* %23, align 4
  %186 = load i64, i64* %27, align 8
  %187 = load i64, i64* %28, align 8
  %188 = load i32, i32* %25, align 4
  %189 = load i32, i32* %26, align 4
  %190 = call i64 @HORIZ_4TAP_FILT(i32 %184, i32 %185, i64 %186, i64 %187, i32 %188, i32 %189)
  store i64 %190, i64* %39, align 8
  %191 = load i64, i64* %39, align 8
  %192 = trunc i64 %191 to i32
  %193 = load i64, i64* %38, align 8
  %194 = trunc i64 %193 to i32
  %195 = call i64 @__msa_ilvev_b(i32 %192, i32 %194)
  store i64 %195, i64* %46, align 8
  %196 = load i64, i64* %43, align 8
  %197 = load i64, i64* %46, align 8
  %198 = load i64, i64* %32, align 8
  %199 = load i64, i64* %33, align 8
  %200 = call i64 @FILT_4TAP_DPADD_S_H(i64 %196, i64 %197, i64 %198, i64 %199)
  store i64 %200, i64* %36, align 8
  %201 = load i32, i32* %24, align 4
  %202 = load i32, i32* %24, align 4
  %203 = load i64, i64* %27, align 8
  %204 = load i64, i64* %28, align 8
  %205 = load i32, i32* %25, align 4
  %206 = load i32, i32* %26, align 4
  %207 = call i64 @HORIZ_4TAP_FILT(i32 %201, i32 %202, i64 %203, i64 %204, i32 %205, i32 %206)
  store i64 %207, i64* %40, align 8
  %208 = load i64, i64* %41, align 8
  %209 = load i64, i64* %38, align 8
  %210 = load i64, i64* %39, align 8
  %211 = load i64, i64* %40, align 8
  %212 = load i64, i64* %42, align 8
  %213 = load i64, i64* %43, align 8
  %214 = call i32 @ILVEV_B2_SH(i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213)
  %215 = load i64, i64* %42, align 8
  %216 = load i64, i64* %43, align 8
  %217 = load i64, i64* %32, align 8
  %218 = load i64, i64* %33, align 8
  %219 = call i64 @FILT_4TAP_DPADD_S_H(i64 %215, i64 %216, i64 %217, i64 %218)
  store i64 %219, i64* %37, align 8
  %220 = load i64, i64* %34, align 8
  %221 = load i64, i64* %35, align 8
  %222 = load i64, i64* %36, align 8
  %223 = load i64, i64* %37, align 8
  %224 = call i32 @SRARI_H4_SH(i64 %220, i64 %221, i64 %222, i64 %223, i32 7)
  %225 = load i64, i64* %34, align 8
  %226 = load i64, i64* %35, align 8
  %227 = load i64, i64* %36, align 8
  %228 = load i64, i64* %37, align 8
  %229 = call i32 @SAT_SH4_SH(i64 %225, i64 %226, i64 %227, i64 %228, i32 7)
  %230 = load i64, i64* %34, align 8
  %231 = load i64, i64* %35, align 8
  %232 = call i64 @PCKEV_XORI128_UB(i64 %230, i64 %231)
  store i64 %232, i64* %29, align 8
  %233 = load i64, i64* %36, align 8
  %234 = load i64, i64* %37, align 8
  %235 = call i64 @PCKEV_XORI128_UB(i64 %233, i64 %234)
  store i64 %235, i64* %30, align 8
  %236 = load i64, i64* %29, align 8
  %237 = load i64, i64* %30, align 8
  %238 = load i32*, i32** %8, align 8
  %239 = load i32, i32* %9, align 4
  %240 = call i32 @ST_D4(i64 %236, i64 %237, i32 0, i32 1, i32 0, i32 1, i32* %238, i32 %239)
  %241 = load i32, i32* %9, align 4
  %242 = mul nsw i32 4, %241
  %243 = load i32*, i32** %8, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32* %245, i32** %8, align 8
  %246 = load i64, i64* %46, align 8
  store i64 %246, i64* %42, align 8
  %247 = load i64, i64* %43, align 8
  store i64 %247, i64* %44, align 8
  br label %128

248:                                              ; preds = %128
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i64, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i64 @HORIZ_4TAP_FILT(i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @ILVEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i64 @__msa_ilvev_b(i32, i32) #1

declare dso_local i64 @FILT_4TAP_DPADD_S_H(i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @SAT_SH4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i64 @PCKEV_XORI128_UB(i64, i64) #1

declare dso_local i32 @ST_D4(i64, i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
