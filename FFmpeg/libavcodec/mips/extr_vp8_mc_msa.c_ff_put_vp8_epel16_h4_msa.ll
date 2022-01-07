; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel16_h4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel16_h4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subpel_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_epel16_h4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
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
  %40 = load i32, i32* %13, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %39, i64 %42
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %16, align 8
  %45 = load i32*, i32** @mc_filt_mask_arr, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = call i64 @LD_SB(i32* %46)
  store i64 %47, i64* %27, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 -1
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 @LD_SH(i32* %50)
  store i32 %51, i32* %29, align 4
  %52 = load i32, i32* %29, align 4
  %53 = load i64, i64* %25, align 8
  %54 = load i64, i64* %26, align 8
  %55 = call i32 @SPLATI_H2_SB(i32 %52, i32 0, i32 1, i64 %53, i64 %54)
  %56 = load i64, i64* %27, align 8
  %57 = add nsw i64 %56, 2
  store i64 %57, i64* %28, align 8
  %58 = load i32, i32* %12, align 4
  %59 = ashr i32 %58, 2
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %64, %7
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %15, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %64, label %180

64:                                               ; preds = %60
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i64, i64* %17, align 8
  %68 = load i64, i64* %19, align 8
  %69 = load i64, i64* %21, align 8
  %70 = load i64, i64* %23, align 8
  %71 = call i32 @LD_SB4(i32* %65, i32 %66, i64 %67, i64 %68, i64 %69, i64 %70)
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 8
  %74 = load i32, i32* %11, align 4
  %75 = load i64, i64* %18, align 8
  %76 = load i64, i64* %20, align 8
  %77 = load i64, i64* %22, align 8
  %78 = load i64, i64* %24, align 8
  %79 = call i32 @LD_SB4(i32* %73, i32 %74, i64 %75, i64 %76, i64 %77, i64 %78)
  %80 = load i32, i32* %11, align 4
  %81 = mul nsw i32 4, %80
  %82 = load i32*, i32** %10, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %10, align 8
  %85 = load i64, i64* %17, align 8
  %86 = load i64, i64* %18, align 8
  %87 = load i64, i64* %19, align 8
  %88 = load i64, i64* %20, align 8
  %89 = load i64, i64* %21, align 8
  %90 = load i64, i64* %22, align 8
  %91 = load i64, i64* %23, align 8
  %92 = load i64, i64* %24, align 8
  %93 = call i32 @XORI_B8_128_SB(i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92)
  %94 = load i64, i64* %17, align 8
  %95 = load i64, i64* %18, align 8
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* %20, align 8
  %98 = load i64, i64* %27, align 8
  %99 = load i64, i64* %28, align 8
  %100 = load i64, i64* %25, align 8
  %101 = load i64, i64* %26, align 8
  %102 = load i32, i32* %30, align 4
  %103 = load i32, i32* %31, align 4
  %104 = load i32, i32* %32, align 4
  %105 = load i32, i32* %33, align 4
  %106 = call i32 @HORIZ_4TAP_8WID_4VECS_FILT(i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load i64, i64* %21, align 8
  %108 = load i64, i64* %22, align 8
  %109 = load i64, i64* %23, align 8
  %110 = load i64, i64* %24, align 8
  %111 = load i64, i64* %27, align 8
  %112 = load i64, i64* %28, align 8
  %113 = load i64, i64* %25, align 8
  %114 = load i64, i64* %26, align 8
  %115 = load i32, i32* %34, align 4
  %116 = load i32, i32* %35, align 4
  %117 = load i32, i32* %36, align 4
  %118 = load i32, i32* %37, align 4
  %119 = call i32 @HORIZ_4TAP_8WID_4VECS_FILT(i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %30, align 4
  %121 = load i32, i32* %31, align 4
  %122 = load i32, i32* %32, align 4
  %123 = load i32, i32* %33, align 4
  %124 = call i32 @SRARI_H4_SH(i32 %120, i32 %121, i32 %122, i32 %123, i32 7)
  %125 = load i32, i32* %34, align 4
  %126 = load i32, i32* %35, align 4
  %127 = load i32, i32* %36, align 4
  %128 = load i32, i32* %37, align 4
  %129 = call i32 @SRARI_H4_SH(i32 %125, i32 %126, i32 %127, i32 %128, i32 7)
  %130 = load i32, i32* %30, align 4
  %131 = load i32, i32* %31, align 4
  %132 = load i32, i32* %32, align 4
  %133 = load i32, i32* %33, align 4
  %134 = call i32 @SAT_SH4_SH(i32 %130, i32 %131, i32 %132, i32 %133, i32 7)
  %135 = load i32, i32* %34, align 4
  %136 = load i32, i32* %35, align 4
  %137 = load i32, i32* %36, align 4
  %138 = load i32, i32* %37, align 4
  %139 = call i32 @SAT_SH4_SH(i32 %135, i32 %136, i32 %137, i32 %138, i32 7)
  %140 = load i32, i32* %30, align 4
  %141 = load i32, i32* %31, align 4
  %142 = call i32 @PCKEV_XORI128_UB(i32 %140, i32 %141)
  store i32 %142, i32* %38, align 4
  %143 = load i32, i32* %38, align 4
  %144 = load i32*, i32** %8, align 8
  %145 = call i32 @ST_UB(i32 %143, i32* %144)
  %146 = load i32, i32* %9, align 4
  %147 = load i32*, i32** %8, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32* %149, i32** %8, align 8
  %150 = load i32, i32* %32, align 4
  %151 = load i32, i32* %33, align 4
  %152 = call i32 @PCKEV_XORI128_UB(i32 %150, i32 %151)
  store i32 %152, i32* %38, align 4
  %153 = load i32, i32* %38, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 @ST_UB(i32 %153, i32* %154)
  %156 = load i32, i32* %9, align 4
  %157 = load i32*, i32** %8, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %8, align 8
  %160 = load i32, i32* %34, align 4
  %161 = load i32, i32* %35, align 4
  %162 = call i32 @PCKEV_XORI128_UB(i32 %160, i32 %161)
  store i32 %162, i32* %38, align 4
  %163 = load i32, i32* %38, align 4
  %164 = load i32*, i32** %8, align 8
  %165 = call i32 @ST_UB(i32 %163, i32* %164)
  %166 = load i32, i32* %9, align 4
  %167 = load i32*, i32** %8, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %8, align 8
  %170 = load i32, i32* %36, align 4
  %171 = load i32, i32* %37, align 4
  %172 = call i32 @PCKEV_XORI128_UB(i32 %170, i32 %171)
  store i32 %172, i32* %38, align 4
  %173 = load i32, i32* %38, align 4
  %174 = load i32*, i32** %8, align 8
  %175 = call i32 @ST_UB(i32 %173, i32* %174)
  %176 = load i32, i32* %9, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  store i32* %179, i32** %8, align 8
  br label %60

180:                                              ; preds = %60
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HORIZ_4TAP_8WID_4VECS_FILT(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_UB(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
