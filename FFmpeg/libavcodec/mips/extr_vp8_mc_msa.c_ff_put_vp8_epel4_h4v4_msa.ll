; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel4_h4v4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel4_h4v4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subpel_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_epel4_h4v4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %44 = load i32**, i32*** @subpel_filters_msa, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %44, i64 %47
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %16, align 8
  %50 = load i32**, i32*** @subpel_filters_msa, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %50, i64 %53
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %17, align 8
  %56 = load i32*, i32** @mc_filt_mask_arr, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 16
  %58 = call i64 @LD_UB(i32* %57)
  store i64 %58, i64* %27, align 8
  %59 = load i32, i32* %11, align 4
  %60 = mul nsw i32 1, %59
  %61 = add nsw i32 1, %60
  %62 = load i32*, i32** %10, align 8
  %63 = sext i32 %61 to i64
  %64 = sub i64 0, %63
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %16, align 8
  %67 = call i64 @LD_SH(i32* %66)
  store i64 %67, i64* %30, align 8
  %68 = load i64, i64* %30, align 8
  %69 = load i32, i32* %25, align 4
  %70 = load i32, i32* %26, align 4
  %71 = call i32 @SPLATI_H2_SB(i64 %68, i32 0, i32 1, i32 %69, i32 %70)
  %72 = load i64, i64* %27, align 8
  %73 = add nsw i64 %72, 2
  store i64 %73, i64* %28, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %20, align 4
  %79 = call i32 @LD_SB3(i32* %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = mul nsw i32 3, %80
  %82 = load i32*, i32** %10, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %10, align 8
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %20, align 4
  %88 = call i32 @XORI_B3_128_SB(i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %19, align 4
  %91 = load i64, i64* %27, align 8
  %92 = load i64, i64* %28, align 8
  %93 = load i32, i32* %25, align 4
  %94 = load i32, i32* %26, align 4
  %95 = call i64 @HORIZ_4TAP_FILT(i32 %89, i32 %90, i64 %91, i64 %92, i32 %93, i32 %94)
  store i64 %95, i64* %38, align 8
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %20, align 4
  %98 = load i64, i64* %27, align 8
  %99 = load i64, i64* %28, align 8
  %100 = load i32, i32* %25, align 4
  %101 = load i32, i32* %26, align 4
  %102 = call i64 @HORIZ_4TAP_FILT(i32 %96, i32 %97, i64 %98, i64 %99, i32 %100, i32 %101)
  store i64 %102, i64* %39, align 8
  %103 = load i64, i64* %39, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i64, i64* %38, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i64 @__msa_ilvev_b(i32 %104, i32 %106)
  store i64 %107, i64* %35, align 8
  %108 = load i32*, i32** %17, align 8
  %109 = call i64 @LD_SH(i32* %108)
  store i64 %109, i64* %30, align 8
  %110 = load i64, i64* %30, align 8
  %111 = load i64, i64* %31, align 8
  %112 = load i64, i64* %32, align 8
  %113 = call i32 @SPLATI_H2_SH(i64 %110, i32 0, i32 1, i64 %111, i64 %112)
  %114 = load i32, i32* %12, align 4
  %115 = ashr i32 %114, 2
  store i32 %115, i32* %15, align 4
  br label %116

116:                                              ; preds = %120, %7
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %15, align 4
  %119 = icmp ne i32 %117, 0
  br i1 %119, label %120, label %203

120:                                              ; preds = %116
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %22, align 4
  %125 = load i32, i32* %23, align 4
  %126 = load i32, i32* %24, align 4
  %127 = call i32 @LD_SB4(i32* %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %11, align 4
  %129 = mul nsw i32 4, %128
  %130 = load i32*, i32** %10, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32* %132, i32** %10, align 8
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %22, align 4
  %135 = call i32 @XORI_B2_128_SB(i32 %133, i32 %134)
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* %22, align 4
  %138 = load i64, i64* %27, align 8
  %139 = load i64, i64* %28, align 8
  %140 = load i32, i32* %25, align 4
  %141 = load i32, i32* %26, align 4
  %142 = call i64 @HORIZ_4TAP_FILT(i32 %136, i32 %137, i64 %138, i64 %139, i32 %140, i32 %141)
  store i64 %142, i64* %41, align 8
  %143 = load i64, i64* %41, align 8
  %144 = trunc i64 %143 to i32
  %145 = load i64, i64* %39, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i64 @__msa_sldi_b(i32 %144, i32 %146, i32 8)
  store i64 %147, i64* %40, align 8
  %148 = load i64, i64* %41, align 8
  %149 = trunc i64 %148 to i32
  %150 = load i64, i64* %40, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i64 @__msa_ilvev_b(i32 %149, i32 %151)
  store i64 %152, i64* %36, align 8
  %153 = load i64, i64* %35, align 8
  %154 = load i64, i64* %36, align 8
  %155 = load i64, i64* %31, align 8
  %156 = load i64, i64* %32, align 8
  %157 = call i64 @FILT_4TAP_DPADD_S_H(i64 %153, i64 %154, i64 %155, i64 %156)
  store i64 %157, i64* %33, align 8
  %158 = load i32, i32* %23, align 4
  %159 = load i32, i32* %24, align 4
  %160 = call i32 @XORI_B2_128_SB(i32 %158, i32 %159)
  %161 = load i32, i32* %23, align 4
  %162 = load i32, i32* %24, align 4
  %163 = load i64, i64* %27, align 8
  %164 = load i64, i64* %28, align 8
  %165 = load i32, i32* %25, align 4
  %166 = load i32, i32* %26, align 4
  %167 = call i64 @HORIZ_4TAP_FILT(i32 %161, i32 %162, i64 %163, i64 %164, i32 %165, i32 %166)
  store i64 %167, i64* %43, align 8
  %168 = load i64, i64* %43, align 8
  %169 = trunc i64 %168 to i32
  %170 = load i64, i64* %41, align 8
  %171 = trunc i64 %170 to i32
  %172 = call i64 @__msa_sldi_b(i32 %169, i32 %171, i32 8)
  store i64 %172, i64* %42, align 8
  %173 = load i64, i64* %43, align 8
  %174 = trunc i64 %173 to i32
  %175 = load i64, i64* %42, align 8
  %176 = trunc i64 %175 to i32
  %177 = call i64 @__msa_ilvev_b(i32 %174, i32 %176)
  store i64 %177, i64* %37, align 8
  %178 = load i64, i64* %36, align 8
  %179 = load i64, i64* %37, align 8
  %180 = load i64, i64* %31, align 8
  %181 = load i64, i64* %32, align 8
  %182 = call i64 @FILT_4TAP_DPADD_S_H(i64 %178, i64 %179, i64 %180, i64 %181)
  store i64 %182, i64* %34, align 8
  %183 = load i64, i64* %33, align 8
  %184 = load i64, i64* %34, align 8
  %185 = call i32 @SRARI_H2_SH(i64 %183, i64 %184, i32 7)
  %186 = load i64, i64* %33, align 8
  %187 = load i64, i64* %34, align 8
  %188 = call i32 @SAT_SH2_SH(i64 %186, i64 %187, i32 7)
  %189 = load i64, i64* %33, align 8
  %190 = load i64, i64* %34, align 8
  %191 = call i64 @PCKEV_XORI128_UB(i64 %189, i64 %190)
  store i64 %191, i64* %29, align 8
  %192 = load i64, i64* %29, align 8
  %193 = load i32*, i32** %8, align 8
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @ST_W4(i64 %192, i32 0, i32 1, i32 2, i32 3, i32* %193, i32 %194)
  %196 = load i32, i32* %9, align 4
  %197 = mul nsw i32 4, %196
  %198 = load i32*, i32** %8, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32* %200, i32** %8, align 8
  %201 = load i64, i64* %43, align 8
  store i64 %201, i64* %39, align 8
  %202 = load i64, i64* %37, align 8
  store i64 %202, i64* %35, align 8
  br label %116

203:                                              ; preds = %116
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i64, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i64 @HORIZ_4TAP_FILT(i32, i32, i64, i64, i32, i32) #1

declare dso_local i64 @__msa_ilvev_b(i32, i32) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i64 @__msa_sldi_b(i32, i32, i32) #1

declare dso_local i64 @FILT_4TAP_DPADD_S_H(i64, i64, i64, i64) #1

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
