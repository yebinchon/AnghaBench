; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_lpf_msa.c_ff_vp8_v_loop_filter8uv_inner_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_lpf_msa.c_ff_vp8_v_loop_filter8uv_inner_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vp8_v_loop_filter8uv_inner_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
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
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @__msa_fill_b(i32 %47)
  store i64 %48, i64* %28, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @__msa_fill_b(i32 %49)
  store i64 %50, i64* %29, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @__msa_fill_b(i32 %51)
  store i64 %52, i64* %30, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = sub i64 0, %56
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  store i32* %58, i32** %7, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i64, i64* %31, align 8
  %62 = load i64, i64* %32, align 8
  %63 = load i64, i64* %33, align 8
  %64 = load i64, i64* %34, align 8
  %65 = load i64, i64* %38, align 8
  %66 = load i64, i64* %37, align 8
  %67 = load i64, i64* %36, align 8
  %68 = load i64, i64* %35, align 8
  %69 = call i32 @LD_UB8(i32* %59, i32 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68)
  %70 = load i32, i32* %9, align 4
  %71 = mul nsw i32 5, %70
  %72 = load i32*, i32** %7, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = sub i64 0, %78
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  store i32* %80, i32** %8, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i64, i64* %39, align 8
  %84 = load i64, i64* %40, align 8
  %85 = load i64, i64* %41, align 8
  %86 = load i64, i64* %42, align 8
  %87 = load i64, i64* %46, align 8
  %88 = load i64, i64* %45, align 8
  %89 = load i64, i64* %44, align 8
  %90 = load i64, i64* %43, align 8
  %91 = call i32 @LD_UB8(i32* %81, i32 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90)
  %92 = load i32, i32* %9, align 4
  %93 = mul nsw i32 5, %92
  %94 = load i32*, i32** %8, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %8, align 8
  %97 = load i64, i64* %39, align 8
  %98 = load i64, i64* %31, align 8
  %99 = load i64, i64* %40, align 8
  %100 = load i64, i64* %32, align 8
  %101 = load i64, i64* %41, align 8
  %102 = load i64, i64* %33, align 8
  %103 = load i64, i64* %42, align 8
  %104 = load i64, i64* %34, align 8
  %105 = load i64, i64* %17, align 8
  %106 = load i64, i64* %18, align 8
  %107 = load i64, i64* %19, align 8
  %108 = load i64, i64* %20, align 8
  %109 = call i32 @ILVR_D4_UB(i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108)
  %110 = load i64, i64* %46, align 8
  %111 = load i64, i64* %38, align 8
  %112 = load i64, i64* %45, align 8
  %113 = load i64, i64* %37, align 8
  %114 = load i64, i64* %44, align 8
  %115 = load i64, i64* %36, align 8
  %116 = load i64, i64* %43, align 8
  %117 = load i64, i64* %35, align 8
  %118 = load i64, i64* %24, align 8
  %119 = load i64, i64* %23, align 8
  %120 = load i64, i64* %22, align 8
  %121 = load i64, i64* %21, align 8
  %122 = call i32 @ILVR_D4_UB(i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121)
  %123 = load i64, i64* %17, align 8
  %124 = load i64, i64* %18, align 8
  %125 = load i64, i64* %19, align 8
  %126 = load i64, i64* %20, align 8
  %127 = load i64, i64* %24, align 8
  %128 = load i64, i64* %23, align 8
  %129 = load i64, i64* %22, align 8
  %130 = load i64, i64* %21, align 8
  %131 = load i64, i64* %29, align 8
  %132 = load i64, i64* %30, align 8
  %133 = load i64, i64* %28, align 8
  %134 = load i64, i64* %26, align 8
  %135 = load i64, i64* %25, align 8
  %136 = load i64, i64* %27, align 8
  %137 = call i32 @LPF_MASK_HEV(i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136)
  %138 = load i64, i64* %19, align 8
  %139 = load i64, i64* %20, align 8
  %140 = load i64, i64* %24, align 8
  %141 = load i64, i64* %23, align 8
  %142 = load i64, i64* %25, align 8
  %143 = load i64, i64* %26, align 8
  %144 = call i32 @VP8_LPF_FILTER4_4W(i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143)
  %145 = load i64, i64* %19, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 @__msa_copy_u_d(i32 %146, i32 0)
  store i32 %147, i32* %13, align 4
  %148 = load i64, i64* %20, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 @__msa_copy_u_d(i32 %149, i32 0)
  store i32 %150, i32* %14, align 4
  %151 = load i64, i64* %24, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i32 @__msa_copy_u_d(i32 %152, i32 0)
  store i32 %153, i32* %15, align 4
  %154 = load i64, i64* %23, align 8
  %155 = trunc i64 %154 to i32
  %156 = call i32 @__msa_copy_u_d(i32 %155, i32 0)
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sub nsw i32 0, %162
  %164 = call i32 @SD4(i32 %157, i32 %158, i32 %159, i32 %160, i32* %161, i32 %163)
  %165 = load i64, i64* %19, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 @__msa_copy_u_d(i32 %166, i32 1)
  store i32 %167, i32* %13, align 4
  %168 = load i64, i64* %20, align 8
  %169 = trunc i64 %168 to i32
  %170 = call i32 @__msa_copy_u_d(i32 %169, i32 1)
  store i32 %170, i32* %14, align 4
  %171 = load i64, i64* %24, align 8
  %172 = trunc i64 %171 to i32
  %173 = call i32 @__msa_copy_u_d(i32 %172, i32 1)
  store i32 %173, i32* %15, align 4
  %174 = load i64, i64* %23, align 8
  %175 = trunc i64 %174 to i32
  %176 = call i32 @__msa_copy_u_d(i32 %175, i32 1)
  store i32 %176, i32* %16, align 4
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %13, align 4
  %181 = load i32*, i32** %8, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sub nsw i32 0, %182
  %184 = call i32 @SD4(i32 %177, i32 %178, i32 %179, i32 %180, i32* %181, i32 %183)
  ret void
}

declare dso_local i64 @__msa_fill_b(i32) #1

declare dso_local i32 @LD_UB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_D4_UB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LPF_MASK_HEV(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VP8_LPF_FILTER4_4W(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @__msa_copy_u_d(i32, i32) #1

declare dso_local i32 @SD4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
