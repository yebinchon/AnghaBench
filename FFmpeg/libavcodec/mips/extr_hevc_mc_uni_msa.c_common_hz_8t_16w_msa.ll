; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_8t_16w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_8t_16w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_8t_16w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_8t_16w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %56 = ashr i32 %55, 2
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %61, %6
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %13, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %198

61:                                               ; preds = %57
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %21, align 4
  %66 = call i32 @LD_SB2(i32* %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* %22, align 4
  %72 = call i32 @LD_SB2(i32* %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 2, %73
  %75 = load i32*, i32** %7, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %7, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %23, align 4
  %81 = load i32, i32* %25, align 4
  %82 = call i32 @LD_SB2(i32* %78, i32 %79, i32 %80, i32 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %24, align 4
  %87 = load i32, i32* %26, align 4
  %88 = call i32 @LD_SB2(i32* %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %8, align 4
  %90 = mul nsw i32 2, %89
  %91 = load i32*, i32** %7, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %7, align 8
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %22, align 4
  %98 = call i32 @XORI_B4_128_SB(i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %23, align 4
  %100 = load i32, i32* %24, align 4
  %101 = load i32, i32* %25, align 4
  %102 = load i32, i32* %26, align 4
  %103 = call i32 @XORI_B4_128_SB(i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* %22, align 4
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* %15, align 8
  %110 = load i64, i64* %16, align 8
  %111 = load i64, i64* %17, align 8
  %112 = load i32, i32* %27, align 4
  %113 = load i32, i32* %28, align 4
  %114 = load i32, i32* %29, align 4
  %115 = load i32, i32* %30, align 4
  %116 = load i32, i32* %32, align 4
  %117 = load i32, i32* %33, align 4
  %118 = load i32, i32* %34, align 4
  %119 = load i32, i32* %35, align 4
  %120 = call i32 @HORIZ_8TAP_8WID_4VECS_FILT(i32 %104, i32 %105, i32 %106, i32 %107, i64 %108, i64 %109, i64 %110, i64 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %32, align 4
  %122 = load i32, i32* %33, align 4
  %123 = load i32, i32* %34, align 4
  %124 = load i32, i32* %35, align 4
  %125 = call i32 @SRARI_H4_SH(i32 %121, i32 %122, i32 %123, i32 %124, i32 6)
  %126 = load i32, i32* %32, align 4
  %127 = load i32, i32* %33, align 4
  %128 = load i32, i32* %34, align 4
  %129 = load i32, i32* %35, align 4
  %130 = call i32 @SAT_SH4_SH(i32 %126, i32 %127, i32 %128, i32 %129, i32 7)
  %131 = load i32, i32* %32, align 4
  %132 = load i32, i32* %33, align 4
  %133 = call i64 @PCKEV_XORI128_UB(i32 %131, i32 %132)
  store i64 %133, i64* %18, align 8
  %134 = load i64, i64* %18, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = call i32 @ST_UB(i64 %134, i32* %135)
  %137 = load i32, i32* %10, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %9, align 8
  %141 = load i32, i32* %34, align 4
  %142 = load i32, i32* %35, align 4
  %143 = call i64 @PCKEV_XORI128_UB(i32 %141, i32 %142)
  store i64 %143, i64* %18, align 8
  %144 = load i64, i64* %18, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @ST_UB(i64 %144, i32* %145)
  %147 = load i32, i32* %10, align 4
  %148 = load i32*, i32** %9, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32* %150, i32** %9, align 8
  %151 = load i32, i32* %23, align 4
  %152 = load i32, i32* %24, align 4
  %153 = load i32, i32* %25, align 4
  %154 = load i32, i32* %26, align 4
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* %15, align 8
  %157 = load i64, i64* %16, align 8
  %158 = load i64, i64* %17, align 8
  %159 = load i32, i32* %27, align 4
  %160 = load i32, i32* %28, align 4
  %161 = load i32, i32* %29, align 4
  %162 = load i32, i32* %30, align 4
  %163 = load i32, i32* %32, align 4
  %164 = load i32, i32* %33, align 4
  %165 = load i32, i32* %34, align 4
  %166 = load i32, i32* %35, align 4
  %167 = call i32 @HORIZ_8TAP_8WID_4VECS_FILT(i32 %151, i32 %152, i32 %153, i32 %154, i64 %155, i64 %156, i64 %157, i64 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = load i32, i32* %32, align 4
  %169 = load i32, i32* %33, align 4
  %170 = load i32, i32* %34, align 4
  %171 = load i32, i32* %35, align 4
  %172 = call i32 @SRARI_H4_SH(i32 %168, i32 %169, i32 %170, i32 %171, i32 6)
  %173 = load i32, i32* %32, align 4
  %174 = load i32, i32* %33, align 4
  %175 = load i32, i32* %34, align 4
  %176 = load i32, i32* %35, align 4
  %177 = call i32 @SAT_SH4_SH(i32 %173, i32 %174, i32 %175, i32 %176, i32 7)
  %178 = load i32, i32* %32, align 4
  %179 = load i32, i32* %33, align 4
  %180 = call i64 @PCKEV_XORI128_UB(i32 %178, i32 %179)
  store i64 %180, i64* %18, align 8
  %181 = load i64, i64* %18, align 8
  %182 = load i32*, i32** %9, align 8
  %183 = call i32 @ST_UB(i64 %181, i32* %182)
  %184 = load i32, i32* %10, align 4
  %185 = load i32*, i32** %9, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32* %187, i32** %9, align 8
  %188 = load i32, i32* %34, align 4
  %189 = load i32, i32* %35, align 4
  %190 = call i64 @PCKEV_XORI128_UB(i32 %188, i32 %189)
  store i64 %190, i64* %18, align 8
  %191 = load i64, i64* %18, align 8
  %192 = load i32*, i32** %9, align 8
  %193 = call i32 @ST_UB(i64 %191, i32* %192)
  %194 = load i32, i32* %10, align 4
  %195 = load i32*, i32** %9, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32* %197, i32** %9, align 8
  br label %57

198:                                              ; preds = %57
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

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
