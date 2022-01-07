; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_common_hz_4t_4x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_common_hz_4t_4x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @common_hz_4t_4x16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_4t_4x16_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
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
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %29 = load i32*, i32** @mc_filt_mask_arr, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 16
  %31 = call i64 @LD_SB(i32* %30)
  store i64 %31, i64* %21, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 -1
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @LD_SH(i32* %34)
  store i32 %35, i32* %24, align 4
  %36 = load i32, i32* %24, align 4
  %37 = load i64, i64* %19, align 8
  %38 = load i64, i64* %20, align 8
  %39 = call i32 @SPLATI_H2_SB(i32 %36, i32 0, i32 1, i64 %37, i64 %38)
  %40 = load i64, i64* %21, align 8
  %41 = add nsw i64 %40, 2
  store i64 %41, i64* %22, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* %16, align 8
  %50 = load i64, i64* %17, align 8
  %51 = load i64, i64* %18, align 8
  %52 = call i32 @LD_SB8(i32* %42, i32 %43, i64 %44, i64 %45, i64 %46, i64 %47, i64 %48, i64 %49, i64 %50, i64 %51)
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 8, %53
  %55 = load i32*, i32** %6, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %6, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %16, align 8
  %64 = load i64, i64* %17, align 8
  %65 = load i64, i64* %18, align 8
  %66 = call i32 @XORI_B8_128_SB(i64 %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65)
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %21, align 8
  %72 = load i64, i64* %22, align 8
  %73 = load i64, i64* %19, align 8
  %74 = load i64, i64* %20, align 8
  %75 = load i32, i32* %25, align 4
  %76 = load i32, i32* %26, align 4
  %77 = call i32 @HORIZ_4TAP_4WID_4VECS_FILT(i64 %67, i64 %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73, i64 %74, i32 %75, i32 %76)
  %78 = load i64, i64* %15, align 8
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* %18, align 8
  %82 = load i64, i64* %21, align 8
  %83 = load i64, i64* %22, align 8
  %84 = load i64, i64* %19, align 8
  %85 = load i64, i64* %20, align 8
  %86 = load i32, i32* %27, align 4
  %87 = load i32, i32* %28, align 4
  %88 = call i32 @HORIZ_4TAP_4WID_4VECS_FILT(i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %25, align 4
  %90 = load i32, i32* %26, align 4
  %91 = load i32, i32* %27, align 4
  %92 = load i32, i32* %28, align 4
  %93 = call i32 @SRARI_H4_SH(i32 %89, i32 %90, i32 %91, i32 %92, i32 7)
  %94 = load i32, i32* %25, align 4
  %95 = load i32, i32* %26, align 4
  %96 = load i32, i32* %27, align 4
  %97 = load i32, i32* %28, align 4
  %98 = call i32 @SAT_SH4_SH(i32 %94, i32 %95, i32 %96, i32 %97, i32 7)
  %99 = load i32, i32* %25, align 4
  %100 = load i32, i32* %26, align 4
  %101 = call i32 @PCKEV_XORI128_UB(i32 %99, i32 %100)
  store i32 %101, i32* %23, align 4
  %102 = load i32, i32* %23, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @ST_W4(i32 %102, i32 0, i32 1, i32 2, i32 3, i32* %103, i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = mul nsw i32 4, %106
  %108 = load i32*, i32** %8, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %8, align 8
  %111 = load i32, i32* %27, align 4
  %112 = load i32, i32* %28, align 4
  %113 = call i32 @PCKEV_XORI128_UB(i32 %111, i32 %112)
  store i32 %113, i32* %23, align 4
  %114 = load i32, i32* %23, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @ST_W4(i32 %114, i32 0, i32 1, i32 2, i32 3, i32* %115, i32 %116)
  %118 = load i32, i32* %9, align 4
  %119 = mul nsw i32 4, %118
  %120 = load i32*, i32** %8, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %8, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* %14, align 8
  %129 = load i64, i64* %15, align 8
  %130 = load i64, i64* %16, align 8
  %131 = load i64, i64* %17, align 8
  %132 = load i64, i64* %18, align 8
  %133 = call i32 @LD_SB8(i32* %123, i32 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132)
  %134 = load i32, i32* %7, align 4
  %135 = mul nsw i32 8, %134
  %136 = load i32*, i32** %6, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %6, align 8
  %139 = load i64, i64* %11, align 8
  %140 = load i64, i64* %12, align 8
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* %14, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* %16, align 8
  %145 = load i64, i64* %17, align 8
  %146 = load i64, i64* %18, align 8
  %147 = call i32 @XORI_B8_128_SB(i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146)
  %148 = load i64, i64* %11, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* %13, align 8
  %151 = load i64, i64* %14, align 8
  %152 = load i64, i64* %21, align 8
  %153 = load i64, i64* %22, align 8
  %154 = load i64, i64* %19, align 8
  %155 = load i64, i64* %20, align 8
  %156 = load i32, i32* %25, align 4
  %157 = load i32, i32* %26, align 4
  %158 = call i32 @HORIZ_4TAP_4WID_4VECS_FILT(i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i32 %156, i32 %157)
  %159 = load i64, i64* %15, align 8
  %160 = load i64, i64* %16, align 8
  %161 = load i64, i64* %17, align 8
  %162 = load i64, i64* %18, align 8
  %163 = load i64, i64* %21, align 8
  %164 = load i64, i64* %22, align 8
  %165 = load i64, i64* %19, align 8
  %166 = load i64, i64* %20, align 8
  %167 = load i32, i32* %27, align 4
  %168 = load i32, i32* %28, align 4
  %169 = call i32 @HORIZ_4TAP_4WID_4VECS_FILT(i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i32 %167, i32 %168)
  %170 = load i32, i32* %25, align 4
  %171 = load i32, i32* %26, align 4
  %172 = load i32, i32* %27, align 4
  %173 = load i32, i32* %28, align 4
  %174 = call i32 @SRARI_H4_SH(i32 %170, i32 %171, i32 %172, i32 %173, i32 7)
  %175 = load i32, i32* %25, align 4
  %176 = load i32, i32* %26, align 4
  %177 = load i32, i32* %27, align 4
  %178 = load i32, i32* %28, align 4
  %179 = call i32 @SAT_SH4_SH(i32 %175, i32 %176, i32 %177, i32 %178, i32 7)
  %180 = load i32, i32* %25, align 4
  %181 = load i32, i32* %26, align 4
  %182 = call i32 @PCKEV_XORI128_UB(i32 %180, i32 %181)
  store i32 %182, i32* %23, align 4
  %183 = load i32, i32* %23, align 4
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @ST_W4(i32 %183, i32 0, i32 1, i32 2, i32 3, i32* %184, i32 %185)
  %187 = load i32, i32* %9, align 4
  %188 = mul nsw i32 4, %187
  %189 = load i32*, i32** %8, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32* %191, i32** %8, align 8
  %192 = load i32, i32* %27, align 4
  %193 = load i32, i32* %28, align 4
  %194 = call i32 @PCKEV_XORI128_UB(i32 %192, i32 %193)
  store i32 %194, i32* %23, align 4
  %195 = load i32, i32* %23, align 4
  %196 = load i32*, i32** %8, align 8
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @ST_W4(i32 %195, i32 0, i32 1, i32 2, i32 3, i32* %196, i32 %197)
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HORIZ_4TAP_4WID_4VECS_FILT(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
