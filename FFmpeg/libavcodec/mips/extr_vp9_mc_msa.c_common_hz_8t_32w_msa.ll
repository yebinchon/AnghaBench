; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_32w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_32w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_8t_32w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_8t_32w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %32 = load i32*, i32** @mc_filt_mask_arr, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = call i64 @LD_UB(i32* %33)
  store i64 %34, i64* %22, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 -3
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @LD_SH(i32* %37)
  store i32 %38, i32* %27, align 4
  %39 = load i32, i32* %27, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %21, align 4
  %44 = call i32 @SPLATI_H4_SB(i32 %39, i32 0, i32 1, i32 2, i32 3, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i64, i64* %22, align 8
  %46 = add nsw i64 %45, 2
  store i64 %46, i64* %23, align 8
  %47 = load i64, i64* %22, align 8
  %48 = add nsw i64 %47, 4
  store i64 %48, i64* %24, align 8
  %49 = load i64, i64* %22, align 8
  %50 = add nsw i64 %49, 6
  store i64 %50, i64* %25, align 8
  %51 = load i32, i32* %12, align 4
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %57, %6
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %13, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %57, label %186

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @LD_SB(i32* %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 16
  %62 = call i32 @LD_SB(i32* %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 24
  %65 = call i32 @LD_SB(i32* %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @__msa_sldi_b(i32 %66, i32 %67, i32 8)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %7, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @XORI_B4_128_SB(i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i64, i64* %22, align 8
  %83 = load i64, i64* %23, align 8
  %84 = load i64, i64* %24, align 8
  %85 = load i64, i64* %25, align 8
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %28, align 4
  %91 = load i32, i32* %29, align 4
  %92 = load i32, i32* %30, align 4
  %93 = load i32, i32* %31, align 4
  %94 = call i32 @HORIZ_8TAP_8WID_4VECS_FILT(i32 %78, i32 %79, i32 %80, i32 %81, i64 %82, i64 %83, i64 %84, i64 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %28, align 4
  %96 = load i32, i32* %29, align 4
  %97 = load i32, i32* %30, align 4
  %98 = load i32, i32* %31, align 4
  %99 = call i32 @SRARI_H4_SH(i32 %95, i32 %96, i32 %97, i32 %98, i32 7)
  %100 = load i32, i32* %28, align 4
  %101 = load i32, i32* %29, align 4
  %102 = load i32, i32* %30, align 4
  %103 = load i32, i32* %31, align 4
  %104 = call i32 @SAT_SH4_SH(i32 %100, i32 %101, i32 %102, i32 %103, i32 7)
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @LD_SB(i32* %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 16
  %109 = call i32 @LD_SB(i32* %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 24
  %112 = call i32 @LD_SB(i32* %111)
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @__msa_sldi_b(i32 %113, i32 %114, i32 8)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %7, align 8
  %120 = load i32, i32* %28, align 4
  %121 = load i32, i32* %29, align 4
  %122 = call i64 @PCKEV_XORI128_UB(i32 %120, i32 %121)
  store i64 %122, i64* %26, align 8
  %123 = load i64, i64* %26, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 @ST_UB(i64 %123, i32* %124)
  %126 = load i32, i32* %30, align 4
  %127 = load i32, i32* %31, align 4
  %128 = call i64 @PCKEV_XORI128_UB(i32 %126, i32 %127)
  store i64 %128, i64* %26, align 8
  %129 = load i64, i64* %26, align 8
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 16
  %132 = call i32 @ST_UB(i64 %129, i32* %131)
  %133 = load i32, i32* %10, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32* %136, i32** %9, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %17, align 4
  %141 = call i32 @XORI_B4_128_SB(i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %17, align 4
  %146 = load i64, i64* %22, align 8
  %147 = load i64, i64* %23, align 8
  %148 = load i64, i64* %24, align 8
  %149 = load i64, i64* %25, align 8
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* %21, align 4
  %154 = load i32, i32* %28, align 4
  %155 = load i32, i32* %29, align 4
  %156 = load i32, i32* %30, align 4
  %157 = load i32, i32* %31, align 4
  %158 = call i32 @HORIZ_8TAP_8WID_4VECS_FILT(i32 %142, i32 %143, i32 %144, i32 %145, i64 %146, i64 %147, i64 %148, i64 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157)
  %159 = load i32, i32* %28, align 4
  %160 = load i32, i32* %29, align 4
  %161 = load i32, i32* %30, align 4
  %162 = load i32, i32* %31, align 4
  %163 = call i32 @SRARI_H4_SH(i32 %159, i32 %160, i32 %161, i32 %162, i32 7)
  %164 = load i32, i32* %28, align 4
  %165 = load i32, i32* %29, align 4
  %166 = load i32, i32* %30, align 4
  %167 = load i32, i32* %31, align 4
  %168 = call i32 @SAT_SH4_SH(i32 %164, i32 %165, i32 %166, i32 %167, i32 7)
  %169 = load i32, i32* %28, align 4
  %170 = load i32, i32* %29, align 4
  %171 = call i64 @PCKEV_XORI128_UB(i32 %169, i32 %170)
  store i64 %171, i64* %26, align 8
  %172 = load i64, i64* %26, align 8
  %173 = load i32*, i32** %9, align 8
  %174 = call i32 @ST_UB(i64 %172, i32* %173)
  %175 = load i32, i32* %30, align 4
  %176 = load i32, i32* %31, align 4
  %177 = call i64 @PCKEV_XORI128_UB(i32 %175, i32 %176)
  store i64 %177, i64* %26, align 8
  %178 = load i64, i64* %26, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 16
  %181 = call i32 @ST_UB(i64 %178, i32* %180)
  %182 = load i32, i32* %10, align 4
  %183 = load i32*, i32** %9, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32* %185, i32** %9, align 8
  br label %53

186:                                              ; preds = %53
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i32 @__msa_sldi_b(i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @HORIZ_8TAP_8WID_4VECS_FILT(i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i64 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_UB(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
