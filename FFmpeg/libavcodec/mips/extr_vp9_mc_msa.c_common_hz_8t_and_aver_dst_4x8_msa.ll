; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_and_aver_dst_4x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_and_aver_dst_4x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @common_hz_8t_and_aver_dst_4x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_8t_and_aver_dst_4x8_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
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
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %38 = load i32*, i32** @mc_filt_mask_arr, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 16
  %40 = call i64 @LD_UB(i32* %39)
  store i64 %40, i64* %23, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 -3
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @LD_SH(i32* %43)
  store i32 %44, i32* %33, align 4
  %45 = load i32, i32* %33, align 4
  %46 = load i32, i32* %19, align 4
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* %21, align 4
  %49 = load i32, i32* %22, align 4
  %50 = call i32 @SPLATI_H4_SB(i32 %45, i32 0, i32 1, i32 2, i32 3, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load i64, i64* %23, align 8
  %52 = add nsw i64 %51, 2
  store i64 %52, i64* %24, align 8
  %53 = load i64, i64* %23, align 8
  %54 = add nsw i64 %53, 4
  store i64 %54, i64* %25, align 8
  %55 = load i64, i64* %23, align 8
  %56 = add nsw i64 %55, 6
  store i64 %56, i64* %26, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %18, align 4
  %63 = call i32 @LD_SB4(i32* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %18, align 4
  %68 = call i32 @XORI_B4_128_SB(i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 4, %69
  %71 = load i32*, i32** %6, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %6, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @LW4(i32* %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i64, i64* %31, align 8
  %86 = call i32 @INSERT_W4_UB(i32 %81, i32 %82, i32 %83, i32 %84, i64 %85)
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = mul nsw i32 4, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @LW4(i32* %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i64, i64* %32, align 8
  %103 = call i32 @INSERT_W4_UB(i32 %98, i32 %99, i32 %100, i32 %101, i64 %102)
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load i64, i64* %23, align 8
  %109 = load i64, i64* %24, align 8
  %110 = load i64, i64* %25, align 8
  %111 = load i64, i64* %26, align 8
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %34, align 4
  %117 = load i32, i32* %35, align 4
  %118 = call i32 @HORIZ_8TAP_4WID_4VECS_FILT(i32 %104, i32 %105, i32 %106, i32 %107, i64 %108, i64 %109, i64 %110, i64 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117)
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @LD_SB4(i32* %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @XORI_B4_128_SB(i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %18, align 4
  %135 = load i64, i64* %23, align 8
  %136 = load i64, i64* %24, align 8
  %137 = load i64, i64* %25, align 8
  %138 = load i64, i64* %26, align 8
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %21, align 4
  %142 = load i32, i32* %22, align 4
  %143 = load i32, i32* %36, align 4
  %144 = load i32, i32* %37, align 4
  %145 = call i32 @HORIZ_8TAP_4WID_4VECS_FILT(i32 %131, i32 %132, i32 %133, i32 %134, i64 %135, i64 %136, i64 %137, i64 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %34, align 4
  %147 = load i32, i32* %35, align 4
  %148 = load i32, i32* %36, align 4
  %149 = load i32, i32* %37, align 4
  %150 = call i32 @SRARI_H4_SH(i32 %146, i32 %147, i32 %148, i32 %149, i32 7)
  %151 = load i32, i32* %34, align 4
  %152 = load i32, i32* %35, align 4
  %153 = load i32, i32* %36, align 4
  %154 = load i32, i32* %37, align 4
  %155 = call i32 @SAT_SH4_SH(i32 %151, i32 %152, i32 %153, i32 %154, i32 7)
  %156 = load i32, i32* %34, align 4
  %157 = load i32, i32* %34, align 4
  %158 = load i32, i32* %35, align 4
  %159 = load i32, i32* %35, align 4
  %160 = load i32, i32* %36, align 4
  %161 = load i32, i32* %36, align 4
  %162 = load i32, i32* %37, align 4
  %163 = load i32, i32* %37, align 4
  %164 = load i64, i64* %27, align 8
  %165 = load i64, i64* %28, align 8
  %166 = load i64, i64* %29, align 8
  %167 = load i64, i64* %30, align 8
  %168 = call i32 @PCKEV_B4_UB(i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i64 %164, i64 %165, i64 %166, i64 %167)
  %169 = load i64, i64* %28, align 8
  %170 = load i64, i64* %27, align 8
  %171 = load i64, i64* %30, align 8
  %172 = load i64, i64* %29, align 8
  %173 = load i64, i64* %27, align 8
  %174 = load i64, i64* %29, align 8
  %175 = call i32 @ILVR_D2_UB(i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174)
  %176 = load i64, i64* %27, align 8
  %177 = load i64, i64* %29, align 8
  %178 = call i32 @XORI_B2_128_UB(i64 %176, i64 %177)
  %179 = load i64, i64* %27, align 8
  %180 = load i64, i64* %31, align 8
  %181 = load i64, i64* %29, align 8
  %182 = load i64, i64* %32, align 8
  %183 = load i64, i64* %27, align 8
  %184 = load i64, i64* %29, align 8
  %185 = call i32 @AVER_UB2_UB(i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184)
  %186 = load i64, i64* %27, align 8
  %187 = load i64, i64* %29, align 8
  %188 = load i32*, i32** %8, align 8
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @ST_W8(i64 %186, i64 %187, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %188, i32 %189)
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @LW4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INSERT_W4_UB(i32, i32, i32, i32, i64) #1

declare dso_local i32 @HORIZ_8TAP_4WID_4VECS_FILT(i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_D2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B2_128_UB(i64, i64) #1

declare dso_local i32 @AVER_UB2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ST_W8(i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
