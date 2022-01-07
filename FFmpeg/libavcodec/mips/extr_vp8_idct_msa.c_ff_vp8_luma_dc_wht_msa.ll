; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_idct_msa.c_ff_vp8_luma_dc_wht_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_idct_msa.c_ff_vp8_luma_dc_wht_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vp8_luma_dc_wht_msa([4 x [16 x i32]]* %0, i32* %1) #0 {
  %3 = alloca [4 x [16 x i32]]*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
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
  store [4 x [16 x i32]]* %0, [4 x [16 x i32]]** %3, align 8
  store i32* %1, i32** %4, align 8
  %24 = load [4 x [16 x i32]]*, [4 x [16 x i32]]** %3, align 8
  %25 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %24, i64 0
  %26 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %25, i64 0, i64 0
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @LD_SH2(i32* %28, i32 8, i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @UNPCK_SH_SW(i32 %32, i64 %33, i64 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @UNPCK_SH_SW(i32 %36, i64 %37, i64 %38)
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %15, align 8
  %48 = call i32 @BUTTERFLY_4(i64 %40, i64 %41, i64 %42, i64 %43, i64 %44, i64 %45, i64 %46, i64 %47)
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %17, align 8
  %55 = load i64, i64* %19, align 8
  %56 = load i64, i64* %18, align 8
  %57 = call i32 @BUTTERFLY_4(i64 %49, i64 %50, i64 %51, i64 %52, i64 %53, i64 %54, i64 %55, i64 %56)
  %58 = load i64, i64* %16, align 8
  %59 = load i64, i64* %17, align 8
  %60 = load i64, i64* %18, align 8
  %61 = load i64, i64* %19, align 8
  %62 = load i64, i64* %16, align 8
  %63 = load i64, i64* %17, align 8
  %64 = load i64, i64* %18, align 8
  %65 = load i64, i64* %19, align 8
  %66 = call i32 @TRANSPOSE4x4_SW_SW(i64 %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65)
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* %19, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i32 @BUTTERFLY_4(i64 %67, i64 %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73, i64 %74)
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %20, align 8
  %81 = load i64, i64* %21, align 8
  %82 = load i64, i64* %23, align 8
  %83 = load i64, i64* %22, align 8
  %84 = call i32 @BUTTERFLY_4(i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83)
  %85 = load i64, i64* %20, align 8
  %86 = load i64, i64* %21, align 8
  %87 = load i64, i64* %22, align 8
  %88 = load i64, i64* %23, align 8
  %89 = load i64, i64* %20, align 8
  %90 = load i64, i64* %21, align 8
  %91 = load i64, i64* %22, align 8
  %92 = load i64, i64* %23, align 8
  %93 = call i32 @ADD4(i64 %85, i32 3, i64 %86, i32 3, i64 %87, i32 3, i64 %88, i32 3, i64 %89, i64 %90, i64 %91, i64 %92)
  %94 = load i64, i64* %20, align 8
  %95 = load i64, i64* %21, align 8
  %96 = load i64, i64* %22, align 8
  %97 = load i64, i64* %23, align 8
  %98 = call i32 @SRA_4V(i64 %94, i64 %95, i64 %96, i64 %97, i32 3)
  %99 = load i64, i64* %20, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @__msa_copy_s_h(i32 %100, i32 0)
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %101, i32* %103, align 4
  %104 = load i64, i64* %21, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @__msa_copy_s_h(i32 %105, i32 0)
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 16
  store i32 %106, i32* %108, align 4
  %109 = load i64, i64* %22, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @__msa_copy_s_h(i32 %110, i32 0)
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 32
  store i32 %111, i32* %113, align 4
  %114 = load i64, i64* %23, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @__msa_copy_s_h(i32 %115, i32 0)
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 48
  store i32 %116, i32* %118, align 4
  %119 = load i64, i64* %20, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @__msa_copy_s_h(i32 %120, i32 2)
  %122 = load i32*, i32** %5, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 64
  store i32 %121, i32* %123, align 4
  %124 = load i64, i64* %21, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @__msa_copy_s_h(i32 %125, i32 2)
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 80
  store i32 %126, i32* %128, align 4
  %129 = load i64, i64* %22, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @__msa_copy_s_h(i32 %130, i32 2)
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 96
  store i32 %131, i32* %133, align 4
  %134 = load i64, i64* %23, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @__msa_copy_s_h(i32 %135, i32 2)
  %137 = load i32*, i32** %5, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 112
  store i32 %136, i32* %138, align 4
  %139 = load i64, i64* %20, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @__msa_copy_s_h(i32 %140, i32 4)
  %142 = load i32*, i32** %5, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 128
  store i32 %141, i32* %143, align 4
  %144 = load i64, i64* %21, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 @__msa_copy_s_h(i32 %145, i32 4)
  %147 = load i32*, i32** %5, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 144
  store i32 %146, i32* %148, align 4
  %149 = load i64, i64* %22, align 8
  %150 = trunc i64 %149 to i32
  %151 = call i32 @__msa_copy_s_h(i32 %150, i32 4)
  %152 = load i32*, i32** %5, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 160
  store i32 %151, i32* %153, align 4
  %154 = load i64, i64* %23, align 8
  %155 = trunc i64 %154 to i32
  %156 = call i32 @__msa_copy_s_h(i32 %155, i32 4)
  %157 = load i32*, i32** %5, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 176
  store i32 %156, i32* %158, align 4
  %159 = load i64, i64* %20, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 @__msa_copy_s_h(i32 %160, i32 6)
  %162 = load i32*, i32** %5, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 192
  store i32 %161, i32* %163, align 4
  %164 = load i64, i64* %21, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i32 @__msa_copy_s_h(i32 %165, i32 6)
  %167 = load i32*, i32** %5, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 208
  store i32 %166, i32* %168, align 4
  %169 = load i64, i64* %22, align 8
  %170 = trunc i64 %169 to i32
  %171 = call i32 @__msa_copy_s_h(i32 %170, i32 6)
  %172 = load i32*, i32** %5, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 224
  store i32 %171, i32* %173, align 4
  %174 = load i64, i64* %23, align 8
  %175 = trunc i64 %174 to i32
  %176 = call i32 @__msa_copy_s_h(i32 %175, i32 6)
  %177 = load i32*, i32** %5, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 240
  store i32 %176, i32* %178, align 4
  %179 = load i32*, i32** %4, align 8
  %180 = call i32 @memset(i32* %179, i32 0, i32 64)
  ret void
}

declare dso_local i32 @LD_SH2(i32*, i32, i32, i32) #1

declare dso_local i32 @UNPCK_SH_SW(i32, i64, i64) #1

declare dso_local i32 @BUTTERFLY_4(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @TRANSPOSE4x4_SW_SW(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ADD4(i64, i32, i64, i32, i64, i32, i64, i32, i64, i64, i64, i64) #1

declare dso_local i32 @SRA_4V(i64, i64, i64, i64, i32) #1

declare dso_local i32 @__msa_copy_s_h(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
