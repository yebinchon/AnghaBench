; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_lpf_msa.c_ff_vp8_h_loop_filter8uv_inner_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_lpf_msa.c_ff_vp8_h_loop_filter8uv_inner_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vp8_h_loop_filter8uv_inner_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
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
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @__msa_fill_b(i32 %49)
  store i64 %50, i64* %24, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @__msa_fill_b(i32 %51)
  store i64 %52, i64* %25, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @__msa_fill_b(i32 %53)
  store i64 %54, i64* %26, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 -4
  %57 = load i32, i32* %9, align 4
  %58 = load i64, i64* %27, align 8
  %59 = load i64, i64* %28, align 8
  %60 = load i64, i64* %29, align 8
  %61 = load i64, i64* %30, align 8
  %62 = load i64, i64* %31, align 8
  %63 = load i64, i64* %32, align 8
  %64 = load i64, i64* %33, align 8
  %65 = load i64, i64* %34, align 8
  %66 = call i32 @LD_UB8(i32* %56, i32 %57, i64 %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65)
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 -4
  %69 = load i32, i32* %9, align 4
  %70 = load i64, i64* %35, align 8
  %71 = load i64, i64* %36, align 8
  %72 = load i64, i64* %37, align 8
  %73 = load i64, i64* %38, align 8
  %74 = load i64, i64* %39, align 8
  %75 = load i64, i64* %40, align 8
  %76 = load i64, i64* %41, align 8
  %77 = load i64, i64* %42, align 8
  %78 = call i32 @LD_UB8(i32* %68, i32 %69, i64 %70, i64 %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76, i64 %77)
  %79 = load i64, i64* %27, align 8
  %80 = load i64, i64* %28, align 8
  %81 = load i64, i64* %29, align 8
  %82 = load i64, i64* %30, align 8
  %83 = load i64, i64* %31, align 8
  %84 = load i64, i64* %32, align 8
  %85 = load i64, i64* %33, align 8
  %86 = load i64, i64* %34, align 8
  %87 = load i64, i64* %35, align 8
  %88 = load i64, i64* %36, align 8
  %89 = load i64, i64* %37, align 8
  %90 = load i64, i64* %38, align 8
  %91 = load i64, i64* %39, align 8
  %92 = load i64, i64* %40, align 8
  %93 = load i64, i64* %41, align 8
  %94 = load i64, i64* %42, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %16, align 8
  %99 = load i64, i64* %20, align 8
  %100 = load i64, i64* %19, align 8
  %101 = load i64, i64* %18, align 8
  %102 = load i64, i64* %17, align 8
  %103 = call i32 @TRANSPOSE16x8_UB_UB(i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102)
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* %16, align 8
  %108 = load i64, i64* %20, align 8
  %109 = load i64, i64* %19, align 8
  %110 = load i64, i64* %18, align 8
  %111 = load i64, i64* %17, align 8
  %112 = load i64, i64* %25, align 8
  %113 = load i64, i64* %26, align 8
  %114 = load i64, i64* %24, align 8
  %115 = load i64, i64* %22, align 8
  %116 = load i64, i64* %21, align 8
  %117 = load i64, i64* %23, align 8
  %118 = call i32 @LPF_MASK_HEV(i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117)
  %119 = load i64, i64* %15, align 8
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* %20, align 8
  %122 = load i64, i64* %19, align 8
  %123 = load i64, i64* %21, align 8
  %124 = load i64, i64* %22, align 8
  %125 = call i32 @VP8_LPF_FILTER4_4W(i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124)
  %126 = load i64, i64* %16, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* %19, align 8
  %129 = load i64, i64* %20, align 8
  %130 = load i64, i64* %43, align 8
  %131 = load i64, i64* %44, align 8
  %132 = call i32 @ILVR_B2_SW(i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131)
  %133 = load i64, i64* %44, align 8
  %134 = load i64, i64* %43, align 8
  %135 = load i64, i64* %45, align 8
  %136 = load i64, i64* %46, align 8
  %137 = call i32 @ILVRL_H2_SW(i64 %133, i64 %134, i64 %135, i64 %136)
  %138 = load i64, i64* %16, align 8
  %139 = trunc i64 %138 to i32
  %140 = load i64, i64* %15, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i64 @__msa_ilvl_b(i32 %139, i32 %141)
  store i64 %142, i64* %43, align 8
  %143 = load i64, i64* %19, align 8
  %144 = trunc i64 %143 to i32
  %145 = load i64, i64* %20, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i64 @__msa_ilvl_b(i32 %144, i32 %146)
  store i64 %147, i64* %44, align 8
  %148 = load i64, i64* %44, align 8
  %149 = load i64, i64* %43, align 8
  %150 = load i64, i64* %47, align 8
  %151 = load i64, i64* %48, align 8
  %152 = call i32 @ILVRL_H2_SW(i64 %148, i64 %149, i64 %150, i64 %151)
  %153 = load i64, i64* %45, align 8
  %154 = load i64, i64* %46, align 8
  %155 = load i32*, i32** %7, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 -2
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @ST_W8(i64 %153, i64 %154, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %156, i32 %157)
  %159 = load i64, i64* %47, align 8
  %160 = load i64, i64* %48, align 8
  %161 = load i32*, i32** %8, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 -2
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @ST_W8(i64 %159, i64 %160, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %162, i32 %163)
  ret void
}

declare dso_local i64 @__msa_fill_b(i32) #1

declare dso_local i32 @LD_UB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @TRANSPOSE16x8_UB_UB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LPF_MASK_HEV(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VP8_LPF_FILTER4_4W(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SW(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVRL_H2_SW(i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvl_b(i32, i32) #1

declare dso_local i32 @ST_W8(i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
