; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_qpeldsp_msa.c_vert_mc_qpel_aver_src1_8x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_qpeldsp_msa.c_vert_mc_qpel_aver_src1_8x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @vert_mc_qpel_aver_src1_8x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vert_mc_qpel_aver_src1_8x8_msa(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
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
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %25 = call i64 @__msa_ldi_b(i32 20)
  store i64 %25, i64* %22, align 8
  %26 = call i64 @__msa_ldi_b(i32 6)
  store i64 %26, i64* %23, align 8
  %27 = call i64 @__msa_ldi_b(i32 3)
  store i64 %27, i64* %24, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @LD_UB4(i32* %28, i32 %29, i64 %30, i64 %31, i64 %32, i64 %33)
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 4, %35
  %37 = load i32*, i32** %5, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @LD_UB2(i32* %40, i32 %41, i64 %42, i64 %43)
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 2, %45
  %47 = load i32*, i32** %5, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %5, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* %22, align 8
  %67 = load i64, i64* %23, align 8
  %68 = load i64, i64* %24, align 8
  %69 = call i64 @APPLY_VERT_QPEL_FILTER_8BYTE(i64 %50, i64 %51, i64 %52, i64 %53, i64 %54, i64 %55, i64 %56, i64 %57, i64 %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68)
  store i64 %69, i64* %20, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* %16, align 8
  %74 = call i32 @LD_UB2(i32* %70, i32 %71, i64 %72, i64 %73)
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 2, %75
  %77 = load i32*, i32** %5, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %5, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* %16, align 8
  %96 = load i64, i64* %22, align 8
  %97 = load i64, i64* %23, align 8
  %98 = load i64, i64* %24, align 8
  %99 = call i64 @APPLY_VERT_QPEL_FILTER_8BYTE(i64 %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98)
  store i64 %99, i64* %21, align 8
  %100 = load i64, i64* %10, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i64, i64* %11, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i64 @__msa_insve_d(i32 %101, i32 1, i32 %103)
  store i64 %104, i64* %18, align 8
  %105 = load i64, i64* %12, align 8
  %106 = trunc i64 %105 to i32
  %107 = load i64, i64* %13, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i64 @__msa_insve_d(i32 %106, i32 1, i32 %108)
  store i64 %109, i64* %19, align 8
  %110 = load i64, i64* %20, align 8
  %111 = load i64, i64* %18, align 8
  %112 = load i64, i64* %21, align 8
  %113 = load i64, i64* %19, align 8
  %114 = load i64, i64* %20, align 8
  %115 = load i64, i64* %21, align 8
  %116 = call i32 @AVER_UB2_UB(i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115)
  %117 = load i64, i64* %20, align 8
  %118 = load i64, i64* %21, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @ST_D4(i64 %117, i64 %118, i32 0, i32 1, i32 0, i32 1, i32* %119, i32 %120)
  %122 = load i32*, i32** %5, align 8
  %123 = call i64 @LD_UB(i32* %122)
  store i64 %123, i64* %17, align 8
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %14, align 8
  %129 = load i64, i64* %15, align 8
  %130 = load i64, i64* %16, align 8
  %131 = load i64, i64* %17, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* %13, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* %11, align 8
  %136 = load i64, i64* %15, align 8
  %137 = load i64, i64* %16, align 8
  %138 = load i64, i64* %17, align 8
  %139 = load i64, i64* %17, align 8
  %140 = load i64, i64* %22, align 8
  %141 = load i64, i64* %23, align 8
  %142 = load i64, i64* %24, align 8
  %143 = call i64 @APPLY_VERT_QPEL_FILTER_8BYTE(i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142)
  store i64 %143, i64* %20, align 8
  %144 = load i64, i64* %15, align 8
  %145 = load i64, i64* %14, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load i64, i64* %16, align 8
  %149 = load i64, i64* %17, align 8
  %150 = load i64, i64* %17, align 8
  %151 = load i64, i64* %16, align 8
  %152 = load i64, i64* %16, align 8
  %153 = load i64, i64* %15, align 8
  %154 = load i64, i64* %14, align 8
  %155 = load i64, i64* %13, align 8
  %156 = load i64, i64* %17, align 8
  %157 = load i64, i64* %17, align 8
  %158 = load i64, i64* %16, align 8
  %159 = load i64, i64* %15, align 8
  %160 = load i64, i64* %22, align 8
  %161 = load i64, i64* %23, align 8
  %162 = load i64, i64* %24, align 8
  %163 = call i64 @APPLY_VERT_QPEL_FILTER_8BYTE(i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162)
  store i64 %163, i64* %21, align 8
  %164 = load i64, i64* %14, align 8
  %165 = trunc i64 %164 to i32
  %166 = load i64, i64* %15, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i64 @__msa_insve_d(i32 %165, i32 1, i32 %167)
  store i64 %168, i64* %18, align 8
  %169 = load i64, i64* %16, align 8
  %170 = trunc i64 %169 to i32
  %171 = load i64, i64* %17, align 8
  %172 = trunc i64 %171 to i32
  %173 = call i64 @__msa_insve_d(i32 %170, i32 1, i32 %172)
  store i64 %173, i64* %19, align 8
  %174 = load i64, i64* %20, align 8
  %175 = load i64, i64* %18, align 8
  %176 = load i64, i64* %21, align 8
  %177 = load i64, i64* %19, align 8
  %178 = load i64, i64* %20, align 8
  %179 = load i64, i64* %21, align 8
  %180 = call i32 @AVER_UB2_UB(i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179)
  %181 = load i64, i64* %20, align 8
  %182 = load i64, i64* %21, align 8
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %8, align 4
  %185 = mul nsw i32 4, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @ST_D4(i64 %181, i64 %182, i32 0, i32 1, i32 0, i32 1, i32* %187, i32 %188)
  ret void
}

declare dso_local i64 @__msa_ldi_b(i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_UB2(i32*, i32, i64, i64) #1

declare dso_local i64 @APPLY_VERT_QPEL_FILTER_8BYTE(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_insve_d(i32, i32, i32) #1

declare dso_local i32 @AVER_UB2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ST_D4(i64, i64, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @LD_UB(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
