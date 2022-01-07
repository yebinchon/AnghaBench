; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel16_h6_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel16_h6_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subpel_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_epel16_h6_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %41 = load i32**, i32*** @subpel_filters_msa, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %41, i64 %44
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %16, align 8
  %47 = load i32*, i32** @mc_filt_mask_arr, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = call i64 @LD_UB(i32* %48)
  store i64 %49, i64* %28, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 -2
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = call i32 @LD_SH(i32* %52)
  store i32 %53, i32* %32, align 4
  %54 = load i32, i32* %32, align 4
  %55 = load i32, i32* %25, align 4
  %56 = load i32, i32* %26, align 4
  %57 = load i32, i32* %27, align 4
  %58 = call i32 @SPLATI_H3_SB(i32 %54, i32 0, i32 1, i32 2, i32 %55, i32 %56, i32 %57)
  %59 = load i64, i64* %28, align 8
  %60 = add nsw i64 %59, 2
  store i64 %60, i64* %29, align 8
  %61 = load i64, i64* %28, align 8
  %62 = add nsw i64 %61, 4
  store i64 %62, i64* %30, align 8
  %63 = load i32, i32* %12, align 4
  %64 = ashr i32 %63, 2
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %69, %7
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %15, align 4
  %68 = icmp ne i32 %66, 0
  br i1 %68, label %69, label %189

69:                                               ; preds = %65
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %23, align 4
  %76 = call i32 @LD_SB4(i32* %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %22, align 4
  %83 = load i32, i32* %24, align 4
  %84 = call i32 @LD_SB4(i32* %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %22, align 4
  %91 = load i32, i32* %23, align 4
  %92 = load i32, i32* %24, align 4
  %93 = call i32 @XORI_B8_128_SB(i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 4, %94
  %96 = load i32*, i32** %10, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %10, align 8
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %20, align 4
  %103 = load i64, i64* %28, align 8
  %104 = load i64, i64* %29, align 8
  %105 = load i64, i64* %30, align 8
  %106 = load i32, i32* %25, align 4
  %107 = load i32, i32* %26, align 4
  %108 = load i32, i32* %27, align 4
  %109 = load i32, i32* %33, align 4
  %110 = load i32, i32* %34, align 4
  %111 = load i32, i32* %35, align 4
  %112 = load i32, i32* %36, align 4
  %113 = call i32 @HORIZ_6TAP_8WID_4VECS_FILT(i32 %99, i32 %100, i32 %101, i32 %102, i64 %103, i64 %104, i64 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %23, align 4
  %117 = load i32, i32* %24, align 4
  %118 = load i64, i64* %28, align 8
  %119 = load i64, i64* %29, align 8
  %120 = load i64, i64* %30, align 8
  %121 = load i32, i32* %25, align 4
  %122 = load i32, i32* %26, align 4
  %123 = load i32, i32* %27, align 4
  %124 = load i32, i32* %37, align 4
  %125 = load i32, i32* %38, align 4
  %126 = load i32, i32* %39, align 4
  %127 = load i32, i32* %40, align 4
  %128 = call i32 @HORIZ_6TAP_8WID_4VECS_FILT(i32 %114, i32 %115, i32 %116, i32 %117, i64 %118, i64 %119, i64 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %33, align 4
  %130 = load i32, i32* %34, align 4
  %131 = load i32, i32* %35, align 4
  %132 = load i32, i32* %36, align 4
  %133 = call i32 @SRARI_H4_SH(i32 %129, i32 %130, i32 %131, i32 %132, i32 7)
  %134 = load i32, i32* %37, align 4
  %135 = load i32, i32* %38, align 4
  %136 = load i32, i32* %39, align 4
  %137 = load i32, i32* %40, align 4
  %138 = call i32 @SRARI_H4_SH(i32 %134, i32 %135, i32 %136, i32 %137, i32 7)
  %139 = load i32, i32* %33, align 4
  %140 = load i32, i32* %34, align 4
  %141 = load i32, i32* %35, align 4
  %142 = load i32, i32* %36, align 4
  %143 = call i32 @SAT_SH4_SH(i32 %139, i32 %140, i32 %141, i32 %142, i32 7)
  %144 = load i32, i32* %37, align 4
  %145 = load i32, i32* %38, align 4
  %146 = load i32, i32* %39, align 4
  %147 = load i32, i32* %40, align 4
  %148 = call i32 @SAT_SH4_SH(i32 %144, i32 %145, i32 %146, i32 %147, i32 7)
  %149 = load i32, i32* %33, align 4
  %150 = load i32, i32* %34, align 4
  %151 = call i64 @PCKEV_XORI128_UB(i32 %149, i32 %150)
  store i64 %151, i64* %31, align 8
  %152 = load i64, i64* %31, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @ST_UB(i64 %152, i32* %153)
  %155 = load i32, i32* %9, align 4
  %156 = load i32*, i32** %8, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32* %158, i32** %8, align 8
  %159 = load i32, i32* %35, align 4
  %160 = load i32, i32* %36, align 4
  %161 = call i64 @PCKEV_XORI128_UB(i32 %159, i32 %160)
  store i64 %161, i64* %31, align 8
  %162 = load i64, i64* %31, align 8
  %163 = load i32*, i32** %8, align 8
  %164 = call i32 @ST_UB(i64 %162, i32* %163)
  %165 = load i32, i32* %9, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %8, align 8
  %169 = load i32, i32* %37, align 4
  %170 = load i32, i32* %38, align 4
  %171 = call i64 @PCKEV_XORI128_UB(i32 %169, i32 %170)
  store i64 %171, i64* %31, align 8
  %172 = load i64, i64* %31, align 8
  %173 = load i32*, i32** %8, align 8
  %174 = call i32 @ST_UB(i64 %172, i32* %173)
  %175 = load i32, i32* %9, align 4
  %176 = load i32*, i32** %8, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32* %178, i32** %8, align 8
  %179 = load i32, i32* %39, align 4
  %180 = load i32, i32* %40, align 4
  %181 = call i64 @PCKEV_XORI128_UB(i32 %179, i32 %180)
  store i64 %181, i64* %31, align 8
  %182 = load i64, i64* %31, align 8
  %183 = load i32*, i32** %8, align 8
  %184 = call i32 @ST_UB(i64 %182, i32* %183)
  %185 = load i32, i32* %9, align 4
  %186 = load i32*, i32** %8, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32* %188, i32** %8, align 8
  br label %65

189:                                              ; preds = %65
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H3_SB(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B8_128_SB(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HORIZ_6TAP_8WID_4VECS_FILT(i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32) #1

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
