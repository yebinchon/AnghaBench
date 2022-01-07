; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel4_v6_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel4_v6_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subpel_filters_msa = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_epel4_v6_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %45 = load i32**, i32*** @subpel_filters_msa, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %45, i64 %48
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %16, align 8
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 2, %51
  %53 = load i32*, i32** %10, align 8
  %54 = sext i32 %52 to i64
  %55 = sub i64 0, %54
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = call i32 @LD_SH(i32* %57)
  store i32 %58, i32* %42, align 4
  %59 = load i32, i32* %42, align 4
  %60 = load i32, i32* %38, align 4
  %61 = load i32, i32* %39, align 4
  %62 = load i32, i32* %40, align 4
  %63 = call i32 @SPLATI_H3_SB(i32 %59, i32 0, i32 1, i32 2, i32 %60, i32 %61, i32 %62)
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* %21, align 4
  %71 = call i32 @LD_SB5(i32* %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = mul nsw i32 5, %72
  %74 = load i32*, i32** %10, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %10, align 8
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %21, align 4
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %26, align 4
  %86 = load i32, i32* %30, align 4
  %87 = load i32, i32* %27, align 4
  %88 = load i32, i32* %31, align 4
  %89 = call i32 @ILVR_B4_SB(i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %30, align 4
  %91 = load i32, i32* %26, align 4
  %92 = load i32, i32* %31, align 4
  %93 = load i32, i32* %27, align 4
  %94 = load i32, i32* %34, align 4
  %95 = load i32, i32* %35, align 4
  %96 = call i32 @ILVR_D2_SB(i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %34, align 4
  %98 = load i32, i32* %35, align 4
  %99 = call i32 @XORI_B2_128_SB(i32 %97, i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = ashr i32 %100, 2
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %106, %7
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %15, align 4
  %105 = icmp ne i32 %103, 0
  br i1 %105, label %106, label %177

106:                                              ; preds = %102
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %22, align 4
  %110 = load i32, i32* %23, align 4
  %111 = load i32, i32* %24, align 4
  %112 = load i32, i32* %25, align 4
  %113 = call i32 @LD_SB4(i32* %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %11, align 4
  %115 = mul nsw i32 4, %114
  %116 = load i32*, i32** %10, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %10, align 8
  %119 = load i32, i32* %22, align 4
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* %23, align 4
  %122 = load i32, i32* %22, align 4
  %123 = load i32, i32* %24, align 4
  %124 = load i32, i32* %23, align 4
  %125 = load i32, i32* %25, align 4
  %126 = load i32, i32* %24, align 4
  %127 = load i32, i32* %28, align 4
  %128 = load i32, i32* %32, align 4
  %129 = load i32, i32* %29, align 4
  %130 = load i32, i32* %33, align 4
  %131 = call i32 @ILVR_B4_SB(i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130)
  %132 = load i32, i32* %32, align 4
  %133 = load i32, i32* %28, align 4
  %134 = load i32, i32* %33, align 4
  %135 = load i32, i32* %29, align 4
  %136 = load i32, i32* %36, align 4
  %137 = load i32, i32* %37, align 4
  %138 = call i32 @ILVR_D2_SB(i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137)
  %139 = load i32, i32* %36, align 4
  %140 = load i32, i32* %37, align 4
  %141 = call i32 @XORI_B2_128_SB(i32 %139, i32 %140)
  %142 = load i32, i32* %34, align 4
  %143 = load i32, i32* %35, align 4
  %144 = load i32, i32* %36, align 4
  %145 = load i32, i32* %38, align 4
  %146 = load i32, i32* %39, align 4
  %147 = load i32, i32* %40, align 4
  %148 = call i32 @DPADD_SH3_SH(i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %43, align 4
  %149 = load i32, i32* %35, align 4
  %150 = load i32, i32* %36, align 4
  %151 = load i32, i32* %37, align 4
  %152 = load i32, i32* %38, align 4
  %153 = load i32, i32* %39, align 4
  %154 = load i32, i32* %40, align 4
  %155 = call i32 @DPADD_SH3_SH(i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154)
  store i32 %155, i32* %44, align 4
  %156 = load i32, i32* %43, align 4
  %157 = load i32, i32* %44, align 4
  %158 = call i32 @SRARI_H2_SH(i32 %156, i32 %157, i32 7)
  %159 = load i32, i32* %43, align 4
  %160 = load i32, i32* %44, align 4
  %161 = call i32 @SAT_SH2_SH(i32 %159, i32 %160, i32 7)
  %162 = load i32, i32* %43, align 4
  %163 = load i32, i32* %44, align 4
  %164 = call i32 @PCKEV_XORI128_UB(i32 %162, i32 %163)
  store i32 %164, i32* %41, align 4
  %165 = load i32, i32* %41, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @ST_W4(i32 %165, i32 0, i32 1, i32 2, i32 3, i32* %166, i32 %167)
  %169 = load i32, i32* %9, align 4
  %170 = mul nsw i32 4, %169
  %171 = load i32*, i32** %8, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32* %173, i32** %8, align 8
  %174 = load i32, i32* %36, align 4
  store i32 %174, i32* %34, align 4
  %175 = load i32, i32* %37, align 4
  store i32 %175, i32* %35, align 4
  %176 = load i32, i32* %25, align 4
  store i32 %176, i32* %21, align 4
  br label %102

177:                                              ; preds = %102
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H3_SB(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SH3_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H2_SH(i32, i32, i32) #1

declare dso_local i32 @SAT_SH2_SH(i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
