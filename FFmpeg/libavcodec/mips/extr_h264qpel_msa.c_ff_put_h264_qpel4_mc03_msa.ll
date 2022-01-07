; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel4_mc03_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel4_mc03_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_h264_qpel4_mc03_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
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
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 64257, i32* %7, align 4
  store i32 5140, i32* %8, align 4
  store i32 507, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @__msa_fill_h(i32 %37)
  store i64 %38, i64* %32, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @__msa_fill_h(i32 %39)
  store i64 %40, i64* %33, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @__msa_fill_h(i32 %41)
  store i64 %42, i64* %34, align 8
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %43, 2
  %45 = load i32*, i32** %5, align 8
  %46 = sext i32 %44 to i64
  %47 = sub i64 0, %46
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %15, align 8
  %56 = call i32 @LD_SB5(i32* %49, i32 %50, i64 %51, i64 %52, i64 %53, i64 %54, i64 %55)
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 5, %57
  %59 = load i32*, i32** %5, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %5, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %20, align 8
  %71 = load i64, i64* %24, align 8
  %72 = load i64, i64* %21, align 8
  %73 = load i64, i64* %25, align 8
  %74 = call i32 @ILVR_B4_SB(i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73)
  %75 = load i64, i64* %24, align 8
  %76 = load i64, i64* %20, align 8
  %77 = load i64, i64* %25, align 8
  %78 = load i64, i64* %21, align 8
  %79 = load i64, i64* %28, align 8
  %80 = load i64, i64* %29, align 8
  %81 = call i32 @ILVR_D2_SB(i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, i64 %80)
  %82 = load i64, i64* %28, align 8
  %83 = load i64, i64* %29, align 8
  %84 = call i32 @XORI_B2_128_SB(i64 %82, i64 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* %17, align 8
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %19, align 8
  %91 = call i32 @LD_SB4(i32* %85, i32 %86, i64 %87, i64 %88, i64 %89, i64 %90)
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %15, align 8
  %94 = load i64, i64* %17, align 8
  %95 = load i64, i64* %16, align 8
  %96 = load i64, i64* %18, align 8
  %97 = load i64, i64* %17, align 8
  %98 = load i64, i64* %19, align 8
  %99 = load i64, i64* %18, align 8
  %100 = load i64, i64* %22, align 8
  %101 = load i64, i64* %26, align 8
  %102 = load i64, i64* %23, align 8
  %103 = load i64, i64* %27, align 8
  %104 = call i32 @ILVR_B4_SB(i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103)
  %105 = load i64, i64* %26, align 8
  %106 = load i64, i64* %22, align 8
  %107 = load i64, i64* %27, align 8
  %108 = load i64, i64* %23, align 8
  %109 = load i64, i64* %30, align 8
  %110 = load i64, i64* %31, align 8
  %111 = call i32 @ILVR_D2_SB(i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110)
  %112 = load i64, i64* %30, align 8
  %113 = load i64, i64* %31, align 8
  %114 = call i32 @XORI_B2_128_SB(i64 %112, i64 %113)
  %115 = load i64, i64* %28, align 8
  %116 = load i64, i64* %29, align 8
  %117 = load i64, i64* %30, align 8
  %118 = load i64, i64* %32, align 8
  %119 = load i64, i64* %33, align 8
  %120 = load i64, i64* %34, align 8
  %121 = call i32 @AVC_DOT_SH3_SH(i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120)
  store i32 %121, i32* %35, align 4
  %122 = load i64, i64* %29, align 8
  %123 = load i64, i64* %30, align 8
  %124 = load i64, i64* %31, align 8
  %125 = load i64, i64* %32, align 8
  %126 = load i64, i64* %33, align 8
  %127 = load i64, i64* %34, align 8
  %128 = call i32 @AVC_DOT_SH3_SH(i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127)
  store i32 %128, i32* %36, align 4
  %129 = load i32, i32* %35, align 4
  %130 = load i32, i32* %36, align 4
  %131 = call i32 @SRARI_H2_SH(i32 %129, i32 %130, i32 5)
  %132 = load i32, i32* %35, align 4
  %133 = load i32, i32* %36, align 4
  %134 = call i32 @SAT_SH2_SH(i32 %132, i32 %133, i32 7)
  %135 = load i32, i32* %35, align 4
  %136 = load i32, i32* %36, align 4
  %137 = call i32 @PCKEV_XORI128_UB(i32 %135, i32 %136)
  store i32 %137, i32* %10, align 4
  %138 = load i64, i64* %14, align 8
  %139 = trunc i64 %138 to i32
  %140 = load i64, i64* %15, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i64 @__msa_insve_w(i32 %139, i32 1, i32 %141)
  store i64 %142, i64* %21, align 8
  %143 = load i64, i64* %16, align 8
  %144 = trunc i64 %143 to i32
  %145 = load i64, i64* %17, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i64 @__msa_insve_w(i32 %144, i32 1, i32 %146)
  store i64 %147, i64* %22, align 8
  %148 = load i64, i64* %21, align 8
  %149 = trunc i64 %148 to i32
  %150 = load i64, i64* %22, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i64 @__msa_insve_d(i32 %149, i32 1, i32 %151)
  store i64 %152, i64* %21, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load i64, i64* %21, align 8
  %155 = trunc i64 %154 to i32
  %156 = call i32 @__msa_aver_u_b(i32 %153, i32 %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @ST_W4(i32 %157, i32 0, i32 1, i32 2, i32 3, i32* %158, i32 %159)
  ret void
}

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_D2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @AVC_DOT_SH3_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H2_SH(i32, i32, i32) #1

declare dso_local i32 @SAT_SH2_SH(i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i64 @__msa_insve_w(i32, i32, i32) #1

declare dso_local i64 @__msa_insve_d(i32, i32, i32) #1

declare dso_local i32 @__msa_aver_u_b(i32, i32) #1

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
