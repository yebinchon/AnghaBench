; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel4_h4v6_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel4_h4v6_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subpel_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_epel4_h4v6_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %31 = alloca i32, align 4
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
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %50 = load i32**, i32*** @subpel_filters_msa, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %50, i64 %53
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %16, align 8
  %56 = load i32**, i32*** @subpel_filters_msa, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %56, i64 %59
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %17, align 8
  %62 = load i32*, i32** @mc_filt_mask_arr, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 16
  %64 = call i64 @LD_SB(i32* %63)
  store i64 %64, i64* %29, align 8
  %65 = load i32, i32* %11, align 4
  %66 = mul nsw i32 2, %65
  %67 = add nsw i32 1, %66
  %68 = load i32*, i32** %10, align 8
  %69 = sext i32 %67 to i64
  %70 = sub i64 0, %69
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32* %71, i32** %10, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = call i64 @LD_SH(i32* %72)
  store i64 %73, i64* %46, align 8
  %74 = load i64, i64* %46, align 8
  %75 = load i64, i64* %27, align 8
  %76 = load i64, i64* %28, align 8
  %77 = call i32 @SPLATI_H2_SB(i64 %74, i32 0, i32 1, i64 %75, i64 %76)
  %78 = load i64, i64* %29, align 8
  %79 = add nsw i64 %78, 2
  store i64 %79, i64* %30, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i64, i64* %18, align 8
  %83 = load i64, i64* %19, align 8
  %84 = load i64, i64* %20, align 8
  %85 = load i64, i64* %21, align 8
  %86 = load i64, i64* %22, align 8
  %87 = call i32 @LD_SB5(i32* %80, i32 %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86)
  %88 = load i32, i32* %11, align 4
  %89 = mul nsw i32 5, %88
  %90 = load i32*, i32** %10, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %10, align 8
  %93 = load i64, i64* %18, align 8
  %94 = load i64, i64* %19, align 8
  %95 = load i64, i64* %20, align 8
  %96 = load i64, i64* %21, align 8
  %97 = load i64, i64* %22, align 8
  %98 = call i32 @XORI_B5_128_SB(i64 %93, i64 %94, i64 %95, i64 %96, i64 %97)
  %99 = load i64, i64* %18, align 8
  %100 = load i64, i64* %19, align 8
  %101 = load i64, i64* %29, align 8
  %102 = load i64, i64* %30, align 8
  %103 = load i64, i64* %27, align 8
  %104 = load i64, i64* %28, align 8
  %105 = call i64 @HORIZ_4TAP_FILT(i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104)
  store i64 %105, i64* %32, align 8
  %106 = load i64, i64* %20, align 8
  %107 = load i64, i64* %21, align 8
  %108 = load i64, i64* %29, align 8
  %109 = load i64, i64* %30, align 8
  %110 = load i64, i64* %27, align 8
  %111 = load i64, i64* %28, align 8
  %112 = call i64 @HORIZ_4TAP_FILT(i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111)
  store i64 %112, i64* %34, align 8
  %113 = load i64, i64* %21, align 8
  %114 = load i64, i64* %22, align 8
  %115 = load i64, i64* %29, align 8
  %116 = load i64, i64* %30, align 8
  %117 = load i64, i64* %27, align 8
  %118 = load i64, i64* %28, align 8
  %119 = call i64 @HORIZ_4TAP_FILT(i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118)
  store i64 %119, i64* %35, align 8
  %120 = load i64, i64* %34, align 8
  %121 = load i64, i64* %32, align 8
  %122 = call i64 @__msa_sldi_b(i64 %120, i64 %121, i32 8)
  store i64 %122, i64* %33, align 8
  %123 = load i64, i64* %32, align 8
  %124 = load i64, i64* %33, align 8
  %125 = load i64, i64* %34, align 8
  %126 = load i64, i64* %35, align 8
  %127 = load i64, i64* %42, align 8
  %128 = load i64, i64* %43, align 8
  %129 = call i32 @ILVEV_B2_SH(i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128)
  %130 = load i32*, i32** %17, align 8
  %131 = call i64 @LD_SH(i32* %130)
  store i64 %131, i64* %46, align 8
  %132 = load i64, i64* %46, align 8
  %133 = load i64, i64* %47, align 8
  %134 = load i64, i64* %48, align 8
  %135 = load i64, i64* %49, align 8
  %136 = call i32 @SPLATI_H3_SH(i64 %132, i32 0, i32 1, i32 2, i64 %133, i64 %134, i64 %135)
  %137 = load i32, i32* %12, align 4
  %138 = ashr i32 %137, 2
  store i32 %138, i32* %15, align 4
  br label %139

139:                                              ; preds = %143, %7
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %15, align 4
  %142 = icmp ne i32 %140, 0
  br i1 %142, label %143, label %222

143:                                              ; preds = %139
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* %11, align 4
  %146 = load i64, i64* %23, align 8
  %147 = load i64, i64* %24, align 8
  %148 = load i64, i64* %25, align 8
  %149 = load i64, i64* %26, align 8
  %150 = call i32 @LD_SB4(i32* %144, i32 %145, i64 %146, i64 %147, i64 %148, i64 %149)
  %151 = load i64, i64* %23, align 8
  %152 = load i64, i64* %24, align 8
  %153 = load i64, i64* %25, align 8
  %154 = load i64, i64* %26, align 8
  %155 = call i32 @XORI_B4_128_SB(i64 %151, i64 %152, i64 %153, i64 %154)
  %156 = load i32, i32* %11, align 4
  %157 = mul nsw i32 4, %156
  %158 = load i32*, i32** %10, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32* %160, i32** %10, align 8
  %161 = load i64, i64* %23, align 8
  %162 = load i64, i64* %24, align 8
  %163 = load i64, i64* %29, align 8
  %164 = load i64, i64* %30, align 8
  %165 = load i64, i64* %27, align 8
  %166 = load i64, i64* %28, align 8
  %167 = call i64 @HORIZ_4TAP_FILT(i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166)
  store i64 %167, i64* %37, align 8
  %168 = load i64, i64* %37, align 8
  %169 = load i64, i64* %35, align 8
  %170 = call i64 @__msa_sldi_b(i64 %168, i64 %169, i32 8)
  store i64 %170, i64* %36, align 8
  %171 = load i64, i64* %37, align 8
  %172 = load i64, i64* %36, align 8
  %173 = call i64 @__msa_ilvev_b(i64 %171, i64 %172)
  store i64 %173, i64* %44, align 8
  %174 = load i64, i64* %42, align 8
  %175 = load i64, i64* %43, align 8
  %176 = load i64, i64* %44, align 8
  %177 = load i64, i64* %47, align 8
  %178 = load i64, i64* %48, align 8
  %179 = load i64, i64* %49, align 8
  %180 = call i64 @DPADD_SH3_SH(i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179)
  store i64 %180, i64* %40, align 8
  %181 = load i64, i64* %25, align 8
  %182 = load i64, i64* %26, align 8
  %183 = load i64, i64* %29, align 8
  %184 = load i64, i64* %30, align 8
  %185 = load i64, i64* %27, align 8
  %186 = load i64, i64* %28, align 8
  %187 = call i64 @HORIZ_4TAP_FILT(i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186)
  store i64 %187, i64* %39, align 8
  %188 = load i64, i64* %39, align 8
  %189 = load i64, i64* %37, align 8
  %190 = call i64 @__msa_sldi_b(i64 %188, i64 %189, i32 8)
  store i64 %190, i64* %38, align 8
  %191 = load i64, i64* %39, align 8
  %192 = load i64, i64* %38, align 8
  %193 = call i64 @__msa_ilvev_b(i64 %191, i64 %192)
  store i64 %193, i64* %45, align 8
  %194 = load i64, i64* %43, align 8
  %195 = load i64, i64* %44, align 8
  %196 = load i64, i64* %45, align 8
  %197 = load i64, i64* %47, align 8
  %198 = load i64, i64* %48, align 8
  %199 = load i64, i64* %49, align 8
  %200 = call i64 @DPADD_SH3_SH(i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199)
  store i64 %200, i64* %41, align 8
  %201 = load i64, i64* %40, align 8
  %202 = load i64, i64* %41, align 8
  %203 = call i32 @SRARI_H2_SH(i64 %201, i64 %202, i32 7)
  %204 = load i64, i64* %40, align 8
  %205 = load i64, i64* %41, align 8
  %206 = call i32 @SAT_SH2_SH(i64 %204, i64 %205, i32 7)
  %207 = load i64, i64* %40, align 8
  %208 = load i64, i64* %41, align 8
  %209 = call i32 @PCKEV_XORI128_UB(i64 %207, i64 %208)
  store i32 %209, i32* %31, align 4
  %210 = load i32, i32* %31, align 4
  %211 = load i32*, i32** %8, align 8
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @ST_W4(i32 %210, i32 0, i32 1, i32 2, i32 3, i32* %211, i32 %212)
  %214 = load i32, i32* %9, align 4
  %215 = mul nsw i32 4, %214
  %216 = load i32*, i32** %8, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32* %218, i32** %8, align 8
  %219 = load i64, i64* %39, align 8
  store i64 %219, i64* %35, align 8
  %220 = load i64, i64* %44, align 8
  store i64 %220, i64* %42, align 8
  %221 = load i64, i64* %45, align 8
  store i64 %221, i64* %43, align 8
  br label %139

222:                                              ; preds = %139
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i64, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #1

declare dso_local i64 @HORIZ_4TAP_FILT(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_sldi_b(i64, i64, i32) #1

declare dso_local i32 @ILVEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SPLATI_H3_SH(i64, i32, i32, i32, i64, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvev_b(i64, i64) #1

declare dso_local i64 @DPADD_SH3_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H2_SH(i64, i64, i32) #1

declare dso_local i32 @SAT_SH2_SH(i64, i64, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i64, i64) #1

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
