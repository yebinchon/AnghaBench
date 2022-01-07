; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_4t_6w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_4t_6w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_4t_6w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_4t_6w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %28 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = call i64 @LD_SB(i32* %29)
  store i64 %30, i64* %19, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 -1
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @LD_SH(i32* %33)
  store i32 %34, i32* %23, align 4
  %35 = load i32, i32* %23, align 4
  %36 = load i64, i64* %17, align 8
  %37 = load i64, i64* %18, align 8
  %38 = call i32 @SPLATI_H2_SB(i32 %35, i32 0, i32 1, i64 %36, i64 %37)
  %39 = load i64, i64* %19, align 8
  %40 = add nsw i64 %39, 2
  store i64 %40, i64* %20, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* %16, align 8
  %47 = call i32 @LD_SB4(i32* %41, i32 %42, i64 %43, i64 %44, i64 %45, i64 %46)
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 4, %48
  %50 = load i32*, i32** %7, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %7, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* %16, align 8
  %57 = call i32 @XORI_B4_128_SB(i64 %53, i64 %54, i64 %55, i64 %56)
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* %16, align 8
  %62 = load i64, i64* %19, align 8
  %63 = load i64, i64* %20, align 8
  %64 = load i64, i64* %17, align 8
  %65 = load i64, i64* %18, align 8
  %66 = load i32, i32* %24, align 4
  %67 = load i32, i32* %25, align 4
  %68 = load i32, i32* %26, align 4
  %69 = load i32, i32* %27, align 4
  %70 = call i32 @HORIZ_4TAP_8WID_4VECS_FILT(i64 %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %24, align 4
  %72 = load i32, i32* %25, align 4
  %73 = load i32, i32* %26, align 4
  %74 = load i32, i32* %27, align 4
  %75 = call i32 @SRARI_H4_SH(i32 %71, i32 %72, i32 %73, i32 %74, i32 6)
  %76 = load i32, i32* %24, align 4
  %77 = load i32, i32* %25, align 4
  %78 = load i32, i32* %26, align 4
  %79 = load i32, i32* %27, align 4
  %80 = call i32 @SAT_SH4_SH(i32 %76, i32 %77, i32 %78, i32 %79, i32 7)
  %81 = load i32, i32* %24, align 4
  %82 = load i32, i32* %25, align 4
  %83 = call i32 @PCKEV_XORI128_UB(i32 %81, i32 %82)
  store i32 %83, i32* %21, align 4
  %84 = load i32, i32* %26, align 4
  %85 = load i32, i32* %27, align 4
  %86 = call i32 @PCKEV_XORI128_UB(i32 %84, i32 %85)
  store i32 %86, i32* %22, align 4
  %87 = load i32, i32* %21, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @ST_W2(i32 %87, i32 0, i32 2, i32* %88, i32 %89)
  %91 = load i32, i32* %21, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @ST_H2(i32 %91, i32 2, i32 6, i32* %93, i32 %94)
  %96 = load i32, i32* %22, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = mul nsw i32 2, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @ST_W2(i32 %96, i32 0, i32 2, i32* %101, i32 %102)
  %104 = load i32, i32* %22, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = mul nsw i32 2, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @ST_H2(i32 %104, i32 2, i32 6, i32* %110, i32 %111)
  %113 = load i32, i32* %10, align 4
  %114 = mul nsw i32 4, %113
  %115 = load i32*, i32** %9, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %9, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* %15, align 8
  %123 = load i64, i64* %16, align 8
  %124 = call i32 @LD_SB4(i32* %118, i32 %119, i64 %120, i64 %121, i64 %122, i64 %123)
  %125 = load i32, i32* %8, align 4
  %126 = mul nsw i32 4, %125
  %127 = load i32*, i32** %7, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %7, align 8
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* %14, align 8
  %132 = load i64, i64* %15, align 8
  %133 = load i64, i64* %16, align 8
  %134 = call i32 @XORI_B4_128_SB(i64 %130, i64 %131, i64 %132, i64 %133)
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* %14, align 8
  %137 = load i64, i64* %15, align 8
  %138 = load i64, i64* %16, align 8
  %139 = load i64, i64* %19, align 8
  %140 = load i64, i64* %20, align 8
  %141 = load i64, i64* %17, align 8
  %142 = load i64, i64* %18, align 8
  %143 = load i32, i32* %24, align 4
  %144 = load i32, i32* %25, align 4
  %145 = load i32, i32* %26, align 4
  %146 = load i32, i32* %27, align 4
  %147 = call i32 @HORIZ_4TAP_8WID_4VECS_FILT(i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = load i32, i32* %24, align 4
  %149 = load i32, i32* %25, align 4
  %150 = load i32, i32* %26, align 4
  %151 = load i32, i32* %27, align 4
  %152 = call i32 @SRARI_H4_SH(i32 %148, i32 %149, i32 %150, i32 %151, i32 6)
  %153 = load i32, i32* %24, align 4
  %154 = load i32, i32* %25, align 4
  %155 = load i32, i32* %26, align 4
  %156 = load i32, i32* %27, align 4
  %157 = call i32 @SAT_SH4_SH(i32 %153, i32 %154, i32 %155, i32 %156, i32 7)
  %158 = load i32, i32* %24, align 4
  %159 = load i32, i32* %25, align 4
  %160 = call i32 @PCKEV_XORI128_UB(i32 %158, i32 %159)
  store i32 %160, i32* %21, align 4
  %161 = load i32, i32* %26, align 4
  %162 = load i32, i32* %27, align 4
  %163 = call i32 @PCKEV_XORI128_UB(i32 %161, i32 %162)
  store i32 %163, i32* %22, align 4
  %164 = load i32, i32* %21, align 4
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @ST_W2(i32 %164, i32 0, i32 2, i32* %165, i32 %166)
  %168 = load i32, i32* %21, align 4
  %169 = load i32*, i32** %9, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 4
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @ST_H2(i32 %168, i32 2, i32 6, i32* %170, i32 %171)
  %173 = load i32, i32* %22, align 4
  %174 = load i32*, i32** %9, align 8
  %175 = load i32, i32* %10, align 4
  %176 = mul nsw i32 2, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %10, align 4
  %180 = call i32 @ST_W2(i32 %173, i32 0, i32 2, i32* %178, i32 %179)
  %181 = load i32, i32* %22, align 4
  %182 = load i32*, i32** %9, align 8
  %183 = load i32, i32* %10, align 4
  %184 = mul nsw i32 2, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = getelementptr inbounds i32, i32* %186, i64 4
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @ST_H2(i32 %181, i32 2, i32 6, i32* %187, i32 %188)
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @HORIZ_4TAP_8WID_4VECS_FILT(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_W2(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_H2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
