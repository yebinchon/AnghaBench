; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_avc_luma_hv_qrt_4x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_avc_luma_hv_qrt_4x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luma_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @avc_luma_hv_qrt_4x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_luma_hv_qrt_4x4_msa(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
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
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 64257, i32* %9, align 4
  store i32 5140, i32* %10, align 4
  store i32 507, i32* %11, align 4
  %42 = call i64 @__msa_fill_h(i32 64257)
  store i64 %42, i64* %33, align 8
  %43 = call i64 @__msa_fill_h(i32 5140)
  store i64 %43, i64* %34, align 8
  %44 = call i64 @__msa_fill_h(i32 507)
  store i64 %44, i64* %35, align 8
  %45 = load i32*, i32** @luma_mask_arr, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 48
  %47 = load i64, i64* %30, align 8
  %48 = load i64, i64* %31, align 8
  %49 = load i64, i64* %32, align 8
  %50 = call i32 @LD_SB3(i32* %46, i32 16, i64 %47, i64 %48, i64 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i64, i64* %19, align 8
  %54 = load i64, i64* %20, align 8
  %55 = load i64, i64* %21, align 8
  %56 = load i64, i64* %22, align 8
  %57 = load i64, i64* %23, align 8
  %58 = call i32 @LD_SB5(i32* %51, i32 %52, i64 %53, i64 %54, i64 %55, i64 %56, i64 %57)
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 5, %59
  %61 = load i32*, i32** %6, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %6, align 8
  %64 = load i64, i64* %19, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i64, i64* %20, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i64 @__msa_insve_w(i32 %65, i32 1, i32 %67)
  store i64 %68, i64* %19, align 8
  %69 = load i64, i64* %20, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* %21, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i64 @__msa_insve_w(i32 %70, i32 1, i32 %72)
  store i64 %73, i64* %20, align 8
  %74 = load i64, i64* %21, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i64, i64* %22, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i64 @__msa_insve_w(i32 %75, i32 1, i32 %77)
  store i64 %78, i64* %21, align 8
  %79 = load i64, i64* %22, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i64, i64* %23, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i64 @__msa_insve_w(i32 %80, i32 1, i32 %82)
  store i64 %83, i64* %22, align 8
  %84 = load i64, i64* %19, align 8
  %85 = load i64, i64* %20, align 8
  %86 = load i64, i64* %21, align 8
  %87 = load i64, i64* %22, align 8
  %88 = call i32 @XORI_B4_128_SB(i64 %84, i64 %85, i64 %86, i64 %87)
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %15, align 8
  %94 = load i64, i64* %16, align 8
  %95 = call i32 @LD_SB4(i32* %89, i32 %90, i64 %91, i64 %92, i64 %93, i64 %94)
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %15, align 8
  %99 = load i64, i64* %16, align 8
  %100 = call i32 @XORI_B4_128_SB(i64 %96, i64 %97, i64 %98, i64 %99)
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* %30, align 8
  %104 = load i64, i64* %31, align 8
  %105 = load i64, i64* %32, align 8
  %106 = call i64 @AVC_HORZ_FILTER_SH(i64 %101, i64 %102, i64 %103, i64 %104, i64 %105)
  store i64 %106, i64* %36, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i64, i64* %30, align 8
  %110 = load i64, i64* %31, align 8
  %111 = load i64, i64* %32, align 8
  %112 = call i64 @AVC_HORZ_FILTER_SH(i64 %107, i64 %108, i64 %109, i64 %110, i64 %111)
  store i64 %112, i64* %37, align 8
  %113 = load i64, i64* %36, align 8
  %114 = load i64, i64* %37, align 8
  %115 = call i32 @SRARI_H2_SH(i64 %113, i64 %114, i32 5)
  %116 = load i64, i64* %36, align 8
  %117 = load i64, i64* %37, align 8
  %118 = call i32 @SAT_SH2_SH(i64 %116, i64 %117, i32 7)
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i64, i64* %24, align 8
  %122 = load i64, i64* %25, align 8
  %123 = load i64, i64* %17, align 8
  %124 = load i64, i64* %18, align 8
  %125 = call i32 @LD_SB4(i32* %119, i32 %120, i64 %121, i64 %122, i64 %123, i64 %124)
  %126 = load i64, i64* %23, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i64, i64* %24, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i64 @__msa_insve_w(i32 %127, i32 1, i32 %129)
  store i64 %130, i64* %23, align 8
  %131 = load i64, i64* %24, align 8
  %132 = trunc i64 %131 to i32
  %133 = load i64, i64* %25, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i64 @__msa_insve_w(i32 %132, i32 1, i32 %134)
  store i64 %135, i64* %24, align 8
  %136 = load i64, i64* %25, align 8
  %137 = trunc i64 %136 to i32
  %138 = load i64, i64* %17, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i64 @__msa_insve_w(i32 %137, i32 1, i32 %139)
  store i64 %140, i64* %25, align 8
  %141 = load i64, i64* %17, align 8
  %142 = trunc i64 %141 to i32
  %143 = load i64, i64* %18, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i64 @__msa_insve_w(i32 %142, i32 1, i32 %144)
  store i64 %145, i64* %17, align 8
  %146 = load i64, i64* %23, align 8
  %147 = load i64, i64* %24, align 8
  %148 = load i64, i64* %25, align 8
  %149 = load i64, i64* %17, align 8
  %150 = call i32 @XORI_B4_128_SB(i64 %146, i64 %147, i64 %148, i64 %149)
  %151 = load i64, i64* %20, align 8
  %152 = load i64, i64* %19, align 8
  %153 = load i64, i64* %22, align 8
  %154 = load i64, i64* %21, align 8
  %155 = load i64, i64* %26, align 8
  %156 = load i64, i64* %27, align 8
  %157 = call i32 @ILVR_B2_SB(i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156)
  %158 = load i64, i64* %24, align 8
  %159 = load i64, i64* %23, align 8
  %160 = load i64, i64* %17, align 8
  %161 = load i64, i64* %25, align 8
  %162 = load i64, i64* %28, align 8
  %163 = load i64, i64* %29, align 8
  %164 = call i32 @ILVR_B2_SB(i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163)
  %165 = load i64, i64* %26, align 8
  %166 = load i64, i64* %27, align 8
  %167 = load i64, i64* %28, align 8
  %168 = load i64, i64* %33, align 8
  %169 = load i64, i64* %34, align 8
  %170 = load i64, i64* %35, align 8
  %171 = call i64 @AVC_DOT_SH3_SH(i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170)
  store i64 %171, i64* %38, align 8
  %172 = load i64, i64* %27, align 8
  %173 = load i64, i64* %28, align 8
  %174 = load i64, i64* %29, align 8
  %175 = load i64, i64* %33, align 8
  %176 = load i64, i64* %34, align 8
  %177 = load i64, i64* %35, align 8
  %178 = call i64 @AVC_DOT_SH3_SH(i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177)
  store i64 %178, i64* %39, align 8
  %179 = load i64, i64* %38, align 8
  %180 = load i64, i64* %39, align 8
  %181 = call i32 @SRARI_H2_SH(i64 %179, i64 %180, i32 5)
  %182 = load i64, i64* %38, align 8
  %183 = load i64, i64* %39, align 8
  %184 = call i32 @SAT_SH2_SH(i64 %182, i64 %183, i32 7)
  %185 = load i64, i64* %36, align 8
  %186 = load i64, i64* %38, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i64 @__msa_srari_h(i64 %187, i32 1)
  store i64 %188, i64* %40, align 8
  %189 = load i64, i64* %37, align 8
  %190 = load i64, i64* %39, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i64 @__msa_srari_h(i64 %191, i32 1)
  store i64 %192, i64* %41, align 8
  %193 = load i64, i64* %40, align 8
  %194 = load i64, i64* %41, align 8
  %195 = call i32 @SAT_SH2_SH(i64 %193, i64 %194, i32 7)
  %196 = load i64, i64* %40, align 8
  %197 = load i64, i64* %41, align 8
  %198 = call i32 @PCKEV_XORI128_UB(i64 %196, i64 %197)
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @ST_W4(i32 %199, i32 0, i32 1, i32 2, i32 3, i32* %200, i32 %201)
  ret void
}

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_insve_w(i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i64 @AVC_HORZ_FILTER_SH(i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H2_SH(i64, i64, i32) #1

declare dso_local i32 @SAT_SH2_SH(i64, i64, i32) #1

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @AVC_DOT_SH3_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_srari_h(i64, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i64, i64) #1

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
