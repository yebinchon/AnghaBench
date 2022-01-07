; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel4_h6v4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel4_h6v4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subpel_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_epel4_h6v4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %60 = getelementptr inbounds i32, i32* %59, i64 16
  %61 = call i64 @LD_UB(i32* %60)
  store i64 %61, i64* %30, align 8
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 1, %62
  %64 = add nsw i32 2, %63
  %65 = load i32*, i32** %10, align 8
  %66 = sext i32 %64 to i64
  %67 = sub i64 0, %66
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32* %68, i32** %10, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = call i64 @LD_SH(i32* %69)
  store i64 %70, i64* %33, align 8
  %71 = load i64, i64* %33, align 8
  %72 = load i32, i32* %25, align 4
  %73 = load i32, i32* %26, align 4
  %74 = load i32, i32* %27, align 4
  %75 = call i32 @SPLATI_H3_SB(i64 %71, i32 0, i32 1, i32 2, i32 %72, i32 %73, i32 %74)
  %76 = load i64, i64* %30, align 8
  %77 = add nsw i64 %76, 2
  store i64 %77, i64* %31, align 8
  %78 = load i64, i64* %30, align 8
  %79 = add nsw i64 %78, 4
  store i64 %79, i64* %32, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %20, align 4
  %85 = call i32 @LD_SB3(i32* %80, i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = mul nsw i32 3, %86
  %88 = load i32*, i32** %10, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %10, align 8
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %20, align 4
  %94 = call i32 @XORI_B3_128_SB(i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load i64, i64* %30, align 8
  %98 = load i64, i64* %31, align 8
  %99 = load i64, i64* %32, align 8
  %100 = load i32, i32* %25, align 4
  %101 = load i32, i32* %26, align 4
  %102 = load i32, i32* %27, align 4
  %103 = call i64 @HORIZ_6TAP_FILT(i32 %95, i32 %96, i64 %97, i64 %98, i64 %99, i32 %100, i32 %101, i32 %102)
  store i64 %103, i64* %41, align 8
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %20, align 4
  %106 = load i64, i64* %30, align 8
  %107 = load i64, i64* %31, align 8
  %108 = load i64, i64* %32, align 8
  %109 = load i32, i32* %25, align 4
  %110 = load i32, i32* %26, align 4
  %111 = load i32, i32* %27, align 4
  %112 = call i64 @HORIZ_6TAP_FILT(i32 %104, i32 %105, i64 %106, i64 %107, i64 %108, i32 %109, i32 %110, i32 %111)
  store i64 %112, i64* %42, align 8
  %113 = load i64, i64* %42, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i64, i64* %41, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i64 @__msa_ilvev_b(i32 %114, i32 %116)
  store i64 %117, i64* %38, align 8
  %118 = load i32*, i32** %17, align 8
  %119 = call i64 @LD_SH(i32* %118)
  store i64 %119, i64* %33, align 8
  %120 = load i64, i64* %33, align 8
  %121 = load i64, i64* %34, align 8
  %122 = load i64, i64* %35, align 8
  %123 = call i32 @SPLATI_H2_SH(i64 %120, i32 0, i32 1, i64 %121, i64 %122)
  %124 = load i32, i32* %12, align 4
  %125 = ashr i32 %124, 2
  store i32 %125, i32* %15, align 4
  br label %126

126:                                              ; preds = %130, %7
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %15, align 4
  %129 = icmp ne i32 %127, 0
  br i1 %129, label %130, label %231

130:                                              ; preds = %126
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %22, align 4
  %135 = load i32, i32* %23, align 4
  %136 = load i32, i32* %24, align 4
  %137 = call i32 @LD_SB4(i32* %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* %11, align 4
  %139 = mul nsw i32 4, %138
  %140 = load i32*, i32** %10, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32* %142, i32** %10, align 8
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* %22, align 4
  %145 = load i32, i32* %23, align 4
  %146 = load i32, i32* %24, align 4
  %147 = call i32 @XORI_B4_128_SB(i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = load i32, i32* %21, align 4
  %149 = load i32, i32* %22, align 4
  %150 = load i64, i64* %30, align 8
  %151 = load i64, i64* %31, align 8
  %152 = load i64, i64* %32, align 8
  %153 = load i32, i32* %25, align 4
  %154 = load i32, i32* %26, align 4
  %155 = load i32, i32* %27, align 4
  %156 = call i64 @HORIZ_6TAP_FILT(i32 %148, i32 %149, i64 %150, i64 %151, i64 %152, i32 %153, i32 %154, i32 %155)
  store i64 %156, i64* %44, align 8
  %157 = load i64, i64* %44, align 8
  %158 = trunc i64 %157 to i32
  %159 = load i64, i64* %42, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i64 @__msa_sldi_b(i32 %158, i32 %160, i32 8)
  store i64 %161, i64* %43, align 8
  %162 = load i64, i64* %44, align 8
  %163 = trunc i64 %162 to i32
  %164 = load i64, i64* %43, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i64 @__msa_ilvev_b(i32 %163, i32 %165)
  store i64 %166, i64* %39, align 8
  %167 = load i64, i64* %38, align 8
  %168 = load i64, i64* %39, align 8
  %169 = load i64, i64* %34, align 8
  %170 = load i64, i64* %35, align 8
  %171 = call i64 @FILT_4TAP_DPADD_S_H(i64 %167, i64 %168, i64 %169, i64 %170)
  store i64 %171, i64* %36, align 8
  %172 = load i32, i32* %23, align 4
  %173 = load i32, i32* %24, align 4
  %174 = load i64, i64* %30, align 8
  %175 = load i64, i64* %31, align 8
  %176 = load i64, i64* %32, align 8
  %177 = load i32, i32* %25, align 4
  %178 = load i32, i32* %26, align 4
  %179 = load i32, i32* %27, align 4
  %180 = call i64 @HORIZ_6TAP_FILT(i32 %172, i32 %173, i64 %174, i64 %175, i64 %176, i32 %177, i32 %178, i32 %179)
  store i64 %180, i64* %46, align 8
  %181 = load i64, i64* %46, align 8
  %182 = trunc i64 %181 to i32
  %183 = load i64, i64* %44, align 8
  %184 = trunc i64 %183 to i32
  %185 = call i64 @__msa_sldi_b(i32 %182, i32 %184, i32 8)
  store i64 %185, i64* %45, align 8
  %186 = load i64, i64* %46, align 8
  %187 = trunc i64 %186 to i32
  %188 = load i64, i64* %45, align 8
  %189 = trunc i64 %188 to i32
  %190 = call i64 @__msa_ilvev_b(i32 %187, i32 %189)
  store i64 %190, i64* %40, align 8
  %191 = load i64, i64* %39, align 8
  %192 = load i64, i64* %40, align 8
  %193 = load i64, i64* %34, align 8
  %194 = load i64, i64* %35, align 8
  %195 = call i64 @FILT_4TAP_DPADD_S_H(i64 %191, i64 %192, i64 %193, i64 %194)
  store i64 %195, i64* %37, align 8
  %196 = load i64, i64* %36, align 8
  %197 = load i64, i64* %37, align 8
  %198 = call i32 @SRARI_H2_SH(i64 %196, i64 %197, i32 7)
  %199 = load i64, i64* %36, align 8
  %200 = load i64, i64* %37, align 8
  %201 = call i32 @SAT_SH2_SH(i64 %199, i64 %200, i32 7)
  %202 = load i64, i64* %36, align 8
  %203 = load i64, i64* %36, align 8
  %204 = load i64, i64* %37, align 8
  %205 = load i64, i64* %37, align 8
  %206 = load i64, i64* %28, align 8
  %207 = load i64, i64* %29, align 8
  %208 = call i32 @PCKEV_B2_UB(i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207)
  %209 = load i64, i64* %28, align 8
  %210 = load i64, i64* %29, align 8
  %211 = call i32 @XORI_B2_128_UB(i64 %209, i64 %210)
  %212 = load i64, i64* %28, align 8
  %213 = load i32*, i32** %8, align 8
  %214 = load i32, i32* %9, align 4
  %215 = call i32 @ST_W2(i64 %212, i32 0, i32 1, i32* %213, i32 %214)
  %216 = load i64, i64* %29, align 8
  %217 = load i32*, i32** %8, align 8
  %218 = load i32, i32* %9, align 4
  %219 = mul nsw i32 2, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  %222 = load i32, i32* %9, align 4
  %223 = call i32 @ST_W2(i64 %216, i32 0, i32 1, i32* %221, i32 %222)
  %224 = load i32, i32* %9, align 4
  %225 = mul nsw i32 4, %224
  %226 = load i32*, i32** %8, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32* %228, i32** %8, align 8
  %229 = load i64, i64* %46, align 8
  store i64 %229, i64* %42, align 8
  %230 = load i64, i64* %40, align 8
  store i64 %230, i64* %38, align 8
  br label %126

231:                                              ; preds = %126
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H3_SB(i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i64 @HORIZ_6TAP_FILT(i32, i32, i64, i64, i64, i32, i32, i32) #1

declare dso_local i64 @__msa_ilvev_b(i32, i32) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i64 @__msa_sldi_b(i32, i32, i32) #1

declare dso_local i64 @FILT_4TAP_DPADD_S_H(i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H2_SH(i64, i64, i32) #1

declare dso_local i32 @SAT_SH2_SH(i64, i64, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B2_128_UB(i64, i64) #1

declare dso_local i32 @ST_W2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
