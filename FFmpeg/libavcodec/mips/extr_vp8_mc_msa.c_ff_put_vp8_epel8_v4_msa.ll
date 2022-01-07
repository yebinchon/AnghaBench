; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel8_v4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel8_v4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subpel_filters_msa = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_epel8_v4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
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
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %39 = load i32**, i32*** @subpel_filters_msa, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %39, i64 %42
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %16, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = sext i32 %45 to i64
  %48 = sub i64 0, %47
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 @LD_SH(i32* %50)
  store i32 %51, i32* %34, align 4
  %52 = load i32, i32* %34, align 4
  %53 = load i32, i32* %30, align 4
  %54 = load i32, i32* %31, align 4
  %55 = call i32 @SPLATI_H2_SB(i32 %52, i32 0, i32 1, i32 %53, i32 %54)
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %19, align 4
  %61 = call i32 @LD_SB3(i32* %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 3, %62
  %64 = load i32*, i32** %10, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %10, align 8
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %19, align 4
  %70 = call i32 @XORI_B3_128_SB(i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %24, align 4
  %76 = load i32, i32* %27, align 4
  %77 = call i32 @ILVR_B2_SB(i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = ashr i32 %78, 2
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %84, %7
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %15, align 4
  %83 = icmp ne i32 %81, 0
  br i1 %83, label %84, label %164

84:                                               ; preds = %80
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* %22, align 4
  %90 = load i32, i32* %23, align 4
  %91 = call i32 @LD_SB4(i32* %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %11, align 4
  %93 = mul nsw i32 4, %92
  %94 = load i32*, i32** %10, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %10, align 8
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %22, align 4
  %100 = load i32, i32* %23, align 4
  %101 = call i32 @XORI_B4_128_SB(i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* %19, align 4
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* %23, align 4
  %109 = load i32, i32* %22, align 4
  %110 = load i32, i32* %25, align 4
  %111 = load i32, i32* %28, align 4
  %112 = load i32, i32* %26, align 4
  %113 = load i32, i32* %29, align 4
  %114 = call i32 @ILVR_B4_SB(i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %24, align 4
  %116 = load i32, i32* %25, align 4
  %117 = load i32, i32* %30, align 4
  %118 = load i32, i32* %31, align 4
  %119 = call i32 @FILT_4TAP_DPADD_S_H(i32 %115, i32 %116, i32 %117, i32 %118)
  store i32 %119, i32* %35, align 4
  %120 = load i32, i32* %27, align 4
  %121 = load i32, i32* %28, align 4
  %122 = load i32, i32* %30, align 4
  %123 = load i32, i32* %31, align 4
  %124 = call i32 @FILT_4TAP_DPADD_S_H(i32 %120, i32 %121, i32 %122, i32 %123)
  store i32 %124, i32* %36, align 4
  %125 = load i32, i32* %25, align 4
  %126 = load i32, i32* %26, align 4
  %127 = load i32, i32* %30, align 4
  %128 = load i32, i32* %31, align 4
  %129 = call i32 @FILT_4TAP_DPADD_S_H(i32 %125, i32 %126, i32 %127, i32 %128)
  store i32 %129, i32* %37, align 4
  %130 = load i32, i32* %28, align 4
  %131 = load i32, i32* %29, align 4
  %132 = load i32, i32* %30, align 4
  %133 = load i32, i32* %31, align 4
  %134 = call i32 @FILT_4TAP_DPADD_S_H(i32 %130, i32 %131, i32 %132, i32 %133)
  store i32 %134, i32* %38, align 4
  %135 = load i32, i32* %35, align 4
  %136 = load i32, i32* %36, align 4
  %137 = load i32, i32* %37, align 4
  %138 = load i32, i32* %38, align 4
  %139 = call i32 @SRARI_H4_SH(i32 %135, i32 %136, i32 %137, i32 %138, i32 7)
  %140 = load i32, i32* %35, align 4
  %141 = load i32, i32* %36, align 4
  %142 = load i32, i32* %37, align 4
  %143 = load i32, i32* %38, align 4
  %144 = call i32 @SAT_SH4_SH(i32 %140, i32 %141, i32 %142, i32 %143, i32 7)
  %145 = load i32, i32* %35, align 4
  %146 = load i32, i32* %36, align 4
  %147 = call i32 @PCKEV_XORI128_UB(i32 %145, i32 %146)
  store i32 %147, i32* %32, align 4
  %148 = load i32, i32* %37, align 4
  %149 = load i32, i32* %38, align 4
  %150 = call i32 @PCKEV_XORI128_UB(i32 %148, i32 %149)
  store i32 %150, i32* %33, align 4
  %151 = load i32, i32* %32, align 4
  %152 = load i32, i32* %33, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @ST_D4(i32 %151, i32 %152, i32 0, i32 1, i32 0, i32 1, i32* %153, i32 %154)
  %156 = load i32, i32* %9, align 4
  %157 = mul nsw i32 4, %156
  %158 = load i32*, i32** %8, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32* %160, i32** %8, align 8
  %161 = load i32, i32* %26, align 4
  store i32 %161, i32* %24, align 4
  %162 = load i32, i32* %29, align 4
  store i32 %162, i32* %27, align 4
  %163 = load i32, i32* %23, align 4
  store i32 %163, i32* %19, align 4
  br label %80

164:                                              ; preds = %80
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FILT_4TAP_DPADD_S_H(i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
