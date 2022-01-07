; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_8t_32w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_8t_32w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
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
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
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
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %36 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call i64 @LD_UB(i32* %37)
  store i64 %38, i64* %14, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 -3
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @LD_SH(i32* %41)
  store i32 %42, i32* %31, align 4
  %43 = load i32, i32* %31, align 4
  %44 = load i32, i32* %27, align 4
  %45 = load i32, i32* %28, align 4
  %46 = load i32, i32* %29, align 4
  %47 = load i32, i32* %30, align 4
  %48 = call i32 @SPLATI_H4_SB(i32 %43, i32 0, i32 1, i32 2, i32 3, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i64, i64* %14, align 8
  %50 = add nsw i64 %49, 2
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %14, align 8
  %52 = add nsw i64 %51, 4
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %14, align 8
  %54 = add nsw i64 %53, 6
  store i64 %54, i64* %17, align 8
  %55 = load i32, i32* %12, align 4
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %61, %6
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %13, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %190

61:                                               ; preds = %57
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @LD_SB(i32* %62)
  store i32 %63, i32* %19, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  %66 = call i32 @LD_SB(i32* %65)
  store i32 %66, i32* %20, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 16
  %69 = call i32 @LD_SB(i32* %68)
  store i32 %69, i32* %21, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 24
  %72 = call i32 @LD_SB(i32* %71)
  store i32 %72, i32* %22, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %7, align 8
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %22, align 4
  %81 = call i32 @XORI_B4_128_SB(i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @LD_SB(i32* %82)
  store i32 %83, i32* %23, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 8
  %86 = call i32 @LD_SB(i32* %85)
  store i32 %86, i32* %24, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 16
  %89 = call i32 @LD_SB(i32* %88)
  store i32 %89, i32* %25, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 24
  %92 = call i32 @LD_SB(i32* %91)
  store i32 %92, i32* %26, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %7, align 8
  %97 = load i32, i32* %23, align 4
  %98 = load i32, i32* %24, align 4
  %99 = load i32, i32* %25, align 4
  %100 = load i32, i32* %26, align 4
  %101 = call i32 @XORI_B4_128_SB(i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* %22, align 4
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i64, i64* %17, align 8
  %110 = load i32, i32* %27, align 4
  %111 = load i32, i32* %28, align 4
  %112 = load i32, i32* %29, align 4
  %113 = load i32, i32* %30, align 4
  %114 = load i32, i32* %32, align 4
  %115 = load i32, i32* %33, align 4
  %116 = load i32, i32* %34, align 4
  %117 = load i32, i32* %35, align 4
  %118 = call i32 @HORIZ_8TAP_8WID_4VECS_FILT(i32 %102, i32 %103, i32 %104, i32 %105, i64 %106, i64 %107, i64 %108, i64 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %32, align 4
  %120 = load i32, i32* %33, align 4
  %121 = load i32, i32* %34, align 4
  %122 = load i32, i32* %35, align 4
  %123 = call i32 @SRARI_H4_SH(i32 %119, i32 %120, i32 %121, i32 %122, i32 6)
  %124 = load i32, i32* %32, align 4
  %125 = load i32, i32* %33, align 4
  %126 = load i32, i32* %34, align 4
  %127 = load i32, i32* %35, align 4
  %128 = call i32 @SAT_SH4_SH(i32 %124, i32 %125, i32 %126, i32 %127, i32 7)
  %129 = load i32, i32* %32, align 4
  %130 = load i32, i32* %33, align 4
  %131 = call i64 @PCKEV_XORI128_UB(i32 %129, i32 %130)
  store i64 %131, i64* %18, align 8
  %132 = load i64, i64* %18, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = call i32 @ST_UB(i64 %132, i32* %133)
  %135 = load i32, i32* %34, align 4
  %136 = load i32, i32* %35, align 4
  %137 = call i64 @PCKEV_XORI128_UB(i32 %135, i32 %136)
  store i64 %137, i64* %18, align 8
  %138 = load i64, i64* %18, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 16
  %141 = call i32 @ST_UB(i64 %138, i32* %140)
  %142 = load i32, i32* %10, align 4
  %143 = load i32*, i32** %9, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %9, align 8
  %146 = load i32, i32* %23, align 4
  %147 = load i32, i32* %24, align 4
  %148 = load i32, i32* %25, align 4
  %149 = load i32, i32* %26, align 4
  %150 = load i64, i64* %14, align 8
  %151 = load i64, i64* %15, align 8
  %152 = load i64, i64* %16, align 8
  %153 = load i64, i64* %17, align 8
  %154 = load i32, i32* %27, align 4
  %155 = load i32, i32* %28, align 4
  %156 = load i32, i32* %29, align 4
  %157 = load i32, i32* %30, align 4
  %158 = load i32, i32* %32, align 4
  %159 = load i32, i32* %33, align 4
  %160 = load i32, i32* %34, align 4
  %161 = load i32, i32* %35, align 4
  %162 = call i32 @HORIZ_8TAP_8WID_4VECS_FILT(i32 %146, i32 %147, i32 %148, i32 %149, i64 %150, i64 %151, i64 %152, i64 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* %32, align 4
  %164 = load i32, i32* %33, align 4
  %165 = load i32, i32* %34, align 4
  %166 = load i32, i32* %35, align 4
  %167 = call i32 @SRARI_H4_SH(i32 %163, i32 %164, i32 %165, i32 %166, i32 6)
  %168 = load i32, i32* %32, align 4
  %169 = load i32, i32* %33, align 4
  %170 = load i32, i32* %34, align 4
  %171 = load i32, i32* %35, align 4
  %172 = call i32 @SAT_SH4_SH(i32 %168, i32 %169, i32 %170, i32 %171, i32 7)
  %173 = load i32, i32* %32, align 4
  %174 = load i32, i32* %33, align 4
  %175 = call i64 @PCKEV_XORI128_UB(i32 %173, i32 %174)
  store i64 %175, i64* %18, align 8
  %176 = load i64, i64* %18, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = call i32 @ST_UB(i64 %176, i32* %177)
  %179 = load i32, i32* %34, align 4
  %180 = load i32, i32* %35, align 4
  %181 = call i64 @PCKEV_XORI128_UB(i32 %179, i32 %180)
  store i64 %181, i64* %18, align 8
  %182 = load i64, i64* %18, align 8
  %183 = load i32*, i32** %9, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 16
  %185 = call i32 @ST_UB(i64 %182, i32* %184)
  %186 = load i32, i32* %10, align 4
  %187 = load i32*, i32** %9, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32* %189, i32** %9, align 8
  br label %57

190:                                              ; preds = %57
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB(i32*) #1

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
