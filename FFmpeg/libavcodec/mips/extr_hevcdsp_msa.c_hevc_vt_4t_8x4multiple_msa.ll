; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_8x4multiple_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_8x4multiple_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_4t_8x4multiple_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_4t_8x4multiple_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
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
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = sext i32 %35 to i64
  %38 = sub i64 0, %37
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32* %39, i32** %7, align 8
  %40 = call i32 @__msa_ldi_h(i32 128)
  store i32 %40, i32* %34, align 4
  %41 = load i32, i32* %34, align 4
  %42 = shl i32 %41, 6
  store i32 %42, i32* %34, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @LD_SH(i32* %43)
  store i32 %44, i32* %33, align 4
  %45 = load i32, i32* %33, align 4
  %46 = load i32, i32* %31, align 4
  %47 = load i32, i32* %32, align 4
  %48 = call i32 @SPLATI_H2_SH(i32 %45, i32 0, i32 1, i32 %46, i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @LD_SB3(i32* %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = mul nsw i32 3, %55
  %57 = load i32*, i32** %7, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %7, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call i32 @XORI_B3_128_SB(i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %23, align 4
  %70 = call i32 @ILVR_B2_SB(i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = ashr i32 %71, 2
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %77, %6
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %13, align 4
  %76 = icmp ne i32 %74, 0
  br i1 %76, label %77, label %156

77:                                               ; preds = %73
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %20, align 4
  %84 = call i32 @LD_SB4(i32* %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = mul nsw i32 4, %85
  %87 = load i32*, i32** %7, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %7, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %20, align 4
  %94 = call i32 @XORI_B4_128_SB(i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %22, align 4
  %100 = load i32, i32* %24, align 4
  %101 = call i32 @ILVR_B2_SB(i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %25, align 4
  %107 = load i32, i32* %26, align 4
  %108 = call i32 @ILVR_B2_SB(i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %34, align 4
  store i32 %109, i32* %27, align 4
  %110 = load i32, i32* %34, align 4
  store i32 %110, i32* %28, align 4
  %111 = load i32, i32* %34, align 4
  store i32 %111, i32* %29, align 4
  %112 = load i32, i32* %34, align 4
  store i32 %112, i32* %30, align 4
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* %22, align 4
  %115 = load i32, i32* %31, align 4
  %116 = load i32, i32* %32, align 4
  %117 = load i32, i32* %27, align 4
  %118 = load i32, i32* %27, align 4
  %119 = call i32 @DPADD_SB2_SH(i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %23, align 4
  %121 = load i32, i32* %24, align 4
  %122 = load i32, i32* %31, align 4
  %123 = load i32, i32* %32, align 4
  %124 = load i32, i32* %28, align 4
  %125 = load i32, i32* %28, align 4
  %126 = call i32 @DPADD_SB2_SH(i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* %22, align 4
  %128 = load i32, i32* %25, align 4
  %129 = load i32, i32* %31, align 4
  %130 = load i32, i32* %32, align 4
  %131 = load i32, i32* %29, align 4
  %132 = load i32, i32* %29, align 4
  %133 = call i32 @DPADD_SB2_SH(i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* %24, align 4
  %135 = load i32, i32* %26, align 4
  %136 = load i32, i32* %31, align 4
  %137 = load i32, i32* %32, align 4
  %138 = load i32, i32* %30, align 4
  %139 = load i32, i32* %30, align 4
  %140 = call i32 @DPADD_SB2_SH(i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %27, align 4
  %142 = load i32, i32* %28, align 4
  %143 = load i32, i32* %29, align 4
  %144 = load i32, i32* %30, align 4
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @ST_SH4(i32 %141, i32 %142, i32 %143, i32 %144, i32* %145, i32 %146)
  %148 = load i32, i32* %10, align 4
  %149 = mul nsw i32 4, %148
  %150 = load i32*, i32** %9, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %9, align 8
  %153 = load i32, i32* %20, align 4
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %25, align 4
  store i32 %154, i32* %21, align 4
  %155 = load i32, i32* %26, align 4
  store i32 %155, i32* %23, align 4
  br label %73

156:                                              ; preds = %73
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
