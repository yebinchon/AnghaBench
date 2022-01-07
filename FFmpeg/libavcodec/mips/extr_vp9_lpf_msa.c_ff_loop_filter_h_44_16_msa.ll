; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_lpf_msa.c_ff_loop_filter_h_44_16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_lpf_msa.c_ff_loop_filter_h_44_16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_loop_filter_h_44_16_msa(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
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
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 -4
  %52 = load i32, i32* %7, align 4
  %53 = load i64, i64* %28, align 8
  %54 = load i64, i64* %29, align 8
  %55 = load i64, i64* %30, align 8
  %56 = load i64, i64* %31, align 8
  %57 = load i64, i64* %32, align 8
  %58 = load i64, i64* %33, align 8
  %59 = load i64, i64* %34, align 8
  %60 = load i64, i64* %35, align 8
  %61 = call i32 @LD_UB8(i32* %51, i32 %52, i64 %53, i64 %54, i64 %55, i64 %56, i64 %57, i64 %58, i64 %59, i64 %60)
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 -4
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 8, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %7, align 4
  %69 = load i64, i64* %36, align 8
  %70 = load i64, i64* %37, align 8
  %71 = load i64, i64* %38, align 8
  %72 = load i64, i64* %39, align 8
  %73 = load i64, i64* %40, align 8
  %74 = load i64, i64* %41, align 8
  %75 = load i64, i64* %42, align 8
  %76 = load i64, i64* %43, align 8
  %77 = call i32 @LD_UB8(i32* %67, i32 %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76)
  %78 = load i64, i64* %28, align 8
  %79 = load i64, i64* %29, align 8
  %80 = load i64, i64* %30, align 8
  %81 = load i64, i64* %31, align 8
  %82 = load i64, i64* %32, align 8
  %83 = load i64, i64* %33, align 8
  %84 = load i64, i64* %34, align 8
  %85 = load i64, i64* %35, align 8
  %86 = load i64, i64* %36, align 8
  %87 = load i64, i64* %37, align 8
  %88 = load i64, i64* %38, align 8
  %89 = load i64, i64* %39, align 8
  %90 = load i64, i64* %40, align 8
  %91 = load i64, i64* %41, align 8
  %92 = load i64, i64* %42, align 8
  %93 = load i64, i64* %43, align 8
  %94 = load i64, i64* %20, align 8
  %95 = load i64, i64* %21, align 8
  %96 = load i64, i64* %22, align 8
  %97 = load i64, i64* %23, align 8
  %98 = load i64, i64* %27, align 8
  %99 = load i64, i64* %26, align 8
  %100 = load i64, i64* %25, align 8
  %101 = load i64, i64* %24, align 8
  %102 = call i32 @TRANSPOSE16x8_UB_UB(i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101)
  %103 = load i32, i32* %10, align 4
  %104 = call i64 @__msa_fill_b(i32 %103)
  store i64 %104, i64* %14, align 8
  %105 = load i32, i32* %10, align 4
  %106 = ashr i32 %105, 8
  %107 = call i64 @__msa_fill_b(i32 %106)
  store i64 %107, i64* %17, align 8
  %108 = load i64, i64* %17, align 8
  %109 = trunc i64 %108 to i32
  %110 = load i64, i64* %14, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i64 @__msa_ilvr_d(i32 %109, i32 %111)
  store i64 %112, i64* %14, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i64 @__msa_fill_b(i32 %113)
  store i64 %114, i64* %15, align 8
  %115 = load i32, i32* %8, align 4
  %116 = ashr i32 %115, 8
  %117 = call i64 @__msa_fill_b(i32 %116)
  store i64 %117, i64* %18, align 8
  %118 = load i64, i64* %18, align 8
  %119 = trunc i64 %118 to i32
  %120 = load i64, i64* %15, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i64 @__msa_ilvr_d(i32 %119, i32 %121)
  store i64 %122, i64* %15, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i64 @__msa_fill_b(i32 %123)
  store i64 %124, i64* %16, align 8
  %125 = load i32, i32* %9, align 4
  %126 = ashr i32 %125, 8
  %127 = call i64 @__msa_fill_b(i32 %126)
  store i64 %127, i64* %19, align 8
  %128 = load i64, i64* %19, align 8
  %129 = trunc i64 %128 to i32
  %130 = load i64, i64* %16, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i64 @__msa_ilvr_d(i32 %129, i32 %131)
  store i64 %132, i64* %16, align 8
  %133 = load i64, i64* %20, align 8
  %134 = load i64, i64* %21, align 8
  %135 = load i64, i64* %22, align 8
  %136 = load i64, i64* %23, align 8
  %137 = load i64, i64* %27, align 8
  %138 = load i64, i64* %26, align 8
  %139 = load i64, i64* %25, align 8
  %140 = load i64, i64* %24, align 8
  %141 = load i64, i64* %16, align 8
  %142 = load i64, i64* %15, align 8
  %143 = load i64, i64* %14, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* %11, align 8
  %146 = load i64, i64* %13, align 8
  %147 = call i32 @LPF_MASK_HEV(i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146)
  %148 = load i64, i64* %22, align 8
  %149 = load i64, i64* %23, align 8
  %150 = load i64, i64* %27, align 8
  %151 = load i64, i64* %26, align 8
  %152 = load i64, i64* %11, align 8
  %153 = load i64, i64* %12, align 8
  %154 = load i64, i64* %22, align 8
  %155 = load i64, i64* %23, align 8
  %156 = load i64, i64* %27, align 8
  %157 = load i64, i64* %26, align 8
  %158 = call i32 @VP9_LPF_FILTER4_4W(i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157)
  %159 = load i64, i64* %23, align 8
  %160 = load i64, i64* %22, align 8
  %161 = load i64, i64* %26, align 8
  %162 = load i64, i64* %27, align 8
  %163 = load i32, i32* %44, align 4
  %164 = load i32, i32* %45, align 4
  %165 = call i32 @ILVR_B2_SH(i64 %159, i64 %160, i64 %161, i64 %162, i32 %163, i32 %164)
  %166 = load i32, i32* %45, align 4
  %167 = load i32, i32* %44, align 4
  %168 = load i32, i32* %46, align 4
  %169 = load i32, i32* %47, align 4
  %170 = call i32 @ILVRL_H2_SH(i32 %166, i32 %167, i32 %168, i32 %169)
  %171 = load i64, i64* %23, align 8
  %172 = load i64, i64* %22, align 8
  %173 = load i64, i64* %26, align 8
  %174 = load i64, i64* %27, align 8
  %175 = load i32, i32* %44, align 4
  %176 = load i32, i32* %45, align 4
  %177 = call i32 @ILVL_B2_SH(i64 %171, i64 %172, i64 %173, i64 %174, i32 %175, i32 %176)
  %178 = load i32, i32* %45, align 4
  %179 = load i32, i32* %44, align 4
  %180 = load i32, i32* %48, align 4
  %181 = load i32, i32* %49, align 4
  %182 = call i32 @ILVRL_H2_SH(i32 %178, i32 %179, i32 %180, i32 %181)
  %183 = load i32*, i32** %6, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 -2
  store i32* %184, i32** %6, align 8
  %185 = load i32, i32* %46, align 4
  %186 = load i32, i32* %47, align 4
  %187 = load i32*, i32** %6, align 8
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @ST_W8(i32 %185, i32 %186, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %187, i32 %188)
  %190 = load i32, i32* %48, align 4
  %191 = load i32, i32* %49, align 4
  %192 = load i32*, i32** %6, align 8
  %193 = load i32, i32* %7, align 4
  %194 = mul nsw i32 8, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @ST_W8(i32 %190, i32 %191, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %196, i32 %197)
  ret void
}

declare dso_local i32 @LD_UB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @TRANSPOSE16x8_UB_UB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_fill_b(i32) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i32 @LPF_MASK_HEV(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VP9_LPF_FILTER4_4W(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SH(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_B2_SH(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
