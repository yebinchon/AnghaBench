; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_vt_4t_8x6_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_vt_4t_8x6_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @common_vt_4t_8x6_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_vt_4t_8x6_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
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
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = sext i32 %32 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i64 @LD_SH(i32* %37)
  store i64 %38, i64* %29, align 8
  %39 = load i64, i64* %29, align 8
  %40 = load i64, i64* %30, align 8
  %41 = load i64, i64* %31, align 8
  %42 = call i32 @SPLATI_H2_SH(i64 %39, i32 0, i32 1, i64 %40, i64 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @LD_SB3(i32* %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 3, %49
  %51 = load i32*, i32** %6, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %6, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %17, align 4
  %57 = call i32 @XORI_B3_128_SB(i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i64, i64* %21, align 8
  %63 = load i64, i64* %23, align 8
  %64 = call i32 @ILVR_B2_SH(i32 %58, i32 %59, i32 %60, i32 %61, i64 %62, i64 %63)
  store i32 2, i32* %11, align 4
  br label %65

65:                                               ; preds = %69, %5
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %11, align 4
  %68 = icmp ne i32 %66, 0
  br i1 %68, label %69, label %162

69:                                               ; preds = %65
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %20, align 4
  %75 = call i32 @LD_SB3(i32* %70, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = mul nsw i32 3, %76
  %78 = load i32*, i32** %6, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %6, align 8
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %20, align 4
  %84 = call i32 @XORI_B3_128_SB(i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %19, align 4
  %91 = load i64, i64* %22, align 8
  %92 = load i64, i64* %24, align 8
  %93 = load i64, i64* %25, align 8
  %94 = call i32 @ILVR_B3_SH(i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i64 %91, i64 %92, i64 %93)
  %95 = load i64, i64* %21, align 8
  %96 = load i64, i64* %22, align 8
  %97 = load i64, i64* %30, align 8
  %98 = load i64, i64* %31, align 8
  %99 = call i64 @HEVC_FILT_4TAP_SH(i64 %95, i64 %96, i64 %97, i64 %98)
  store i64 %99, i64* %26, align 8
  %100 = load i64, i64* %23, align 8
  %101 = load i64, i64* %24, align 8
  %102 = load i64, i64* %30, align 8
  %103 = load i64, i64* %31, align 8
  %104 = call i64 @HEVC_FILT_4TAP_SH(i64 %100, i64 %101, i64 %102, i64 %103)
  store i64 %104, i64* %27, align 8
  %105 = load i64, i64* %22, align 8
  %106 = load i64, i64* %25, align 8
  %107 = load i64, i64* %30, align 8
  %108 = load i64, i64* %31, align 8
  %109 = call i64 @HEVC_FILT_4TAP_SH(i64 %105, i64 %106, i64 %107, i64 %108)
  store i64 %109, i64* %28, align 8
  %110 = load i64, i64* %26, align 8
  %111 = load i64, i64* %27, align 8
  %112 = call i32 @SRARI_H2_SH(i64 %110, i64 %111, i32 6)
  %113 = load i64, i64* %28, align 8
  %114 = call i64 @__msa_srari_h(i64 %113, i32 6)
  store i64 %114, i64* %28, align 8
  %115 = load i64, i64* %26, align 8
  %116 = load i64, i64* %27, align 8
  %117 = load i64, i64* %28, align 8
  %118 = call i32 @SAT_SH3_SH(i64 %115, i64 %116, i64 %117, i32 7)
  %119 = load i64, i64* %27, align 8
  %120 = load i64, i64* %26, align 8
  %121 = load i64, i64* %28, align 8
  %122 = load i64, i64* %28, align 8
  %123 = load i64, i64* %26, align 8
  %124 = load i64, i64* %28, align 8
  %125 = call i32 @PCKEV_B2_SH(i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124)
  %126 = load i64, i64* %26, align 8
  %127 = load i64, i64* %28, align 8
  %128 = call i32 @XORI_B2_128_SH(i64 %126, i64 %127)
  %129 = load i64, i64* %26, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @__msa_copy_u_d(i32 %130, i32 0)
  store i32 %131, i32* %12, align 4
  %132 = load i64, i64* %26, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 @__msa_copy_u_d(i32 %133, i32 1)
  store i32 %134, i32* %13, align 4
  %135 = load i64, i64* %28, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i32 @__msa_copy_u_d(i32 %136, i32 0)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 @SD(i32 %138, i32* %139)
  %141 = load i32, i32* %9, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %8, align 8
  %145 = load i32, i32* %13, align 4
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @SD(i32 %145, i32* %146)
  %148 = load i32, i32* %9, align 4
  %149 = load i32*, i32** %8, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %8, align 8
  %152 = load i32, i32* %14, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @SD(i32 %152, i32* %153)
  %155 = load i32, i32* %9, align 4
  %156 = load i32*, i32** %8, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32* %158, i32** %8, align 8
  %159 = load i32, i32* %20, align 4
  store i32 %159, i32* %17, align 4
  %160 = load i64, i64* %24, align 8
  store i64 %160, i64* %21, align 8
  %161 = load i64, i64* %25, align 8
  store i64 %161, i64* %23, align 8
  br label %65

162:                                              ; preds = %65
  ret void
}

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SH(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @ILVR_B3_SH(i32, i32, i32, i32, i32, i32, i64, i64, i64) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H2_SH(i64, i64, i32) #1

declare dso_local i64 @__msa_srari_h(i64, i32) #1

declare dso_local i32 @SAT_SH3_SH(i64, i64, i64, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B2_128_SH(i64, i64) #1

declare dso_local i32 @__msa_copy_u_d(i32, i32) #1

declare dso_local i32 @SD(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
