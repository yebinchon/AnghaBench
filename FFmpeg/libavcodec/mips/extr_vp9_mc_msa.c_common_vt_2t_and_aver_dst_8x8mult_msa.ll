; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_vt_2t_and_aver_dst_8x8mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_vt_2t_and_aver_dst_8x8mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_vt_2t_and_aver_dst_8x8mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_vt_2t_and_aver_dst_8x8mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @LD_SH(i32* %45)
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %44, align 4
  %48 = call i64 @__msa_splati_h(i32 %47, i32 0)
  store i64 %48, i64* %39, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i64 @LD_UB(i32* %49)
  store i64 %50, i64* %18, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %7, align 8
  %55 = load i32, i32* %12, align 4
  %56 = ashr i32 %55, 3
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %61, %6
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %13, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %213

61:                                               ; preds = %57
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i64, i64* %19, align 8
  %65 = load i64, i64* %20, align 8
  %66 = load i64, i64* %21, align 8
  %67 = load i64, i64* %22, align 8
  %68 = load i64, i64* %23, align 8
  %69 = load i64, i64* %24, align 8
  %70 = load i64, i64* %25, align 8
  %71 = load i64, i64* %26, align 8
  %72 = call i32 @LD_UB8(i32* %62, i32 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i64 %70, i64 %71)
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 8, %73
  %75 = load i32*, i32** %7, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %7, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @LD4(i32* %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i64, i64* %27, align 8
  %88 = call i32 @INSERT_D2_UB(i32 %85, i32 %86, i64 %87)
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %17, align 4
  %91 = load i64, i64* %28, align 8
  %92 = call i32 @INSERT_D2_UB(i32 %89, i32 %90, i64 %91)
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = mul nsw i32 4, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @LD4(i32* %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i64, i64* %29, align 8
  %107 = call i32 @INSERT_D2_UB(i32 %104, i32 %105, i64 %106)
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load i64, i64* %30, align 8
  %111 = call i32 @INSERT_D2_UB(i32 %108, i32 %109, i64 %110)
  %112 = load i64, i64* %19, align 8
  %113 = load i64, i64* %18, align 8
  %114 = load i64, i64* %20, align 8
  %115 = load i64, i64* %19, align 8
  %116 = load i64, i64* %21, align 8
  %117 = load i64, i64* %20, align 8
  %118 = load i64, i64* %22, align 8
  %119 = load i64, i64* %21, align 8
  %120 = load i64, i64* %31, align 8
  %121 = load i64, i64* %32, align 8
  %122 = load i64, i64* %33, align 8
  %123 = load i64, i64* %34, align 8
  %124 = call i32 @ILVR_B4_UB(i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123)
  %125 = load i64, i64* %23, align 8
  %126 = load i64, i64* %22, align 8
  %127 = load i64, i64* %24, align 8
  %128 = load i64, i64* %23, align 8
  %129 = load i64, i64* %25, align 8
  %130 = load i64, i64* %24, align 8
  %131 = load i64, i64* %26, align 8
  %132 = load i64, i64* %25, align 8
  %133 = load i64, i64* %35, align 8
  %134 = load i64, i64* %36, align 8
  %135 = load i64, i64* %37, align 8
  %136 = load i64, i64* %38, align 8
  %137 = call i32 @ILVR_B4_UB(i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136)
  %138 = load i64, i64* %31, align 8
  %139 = load i64, i64* %32, align 8
  %140 = load i64, i64* %33, align 8
  %141 = load i64, i64* %34, align 8
  %142 = load i64, i64* %39, align 8
  %143 = load i64, i64* %39, align 8
  %144 = load i64, i64* %39, align 8
  %145 = load i64, i64* %39, align 8
  %146 = load i32, i32* %40, align 4
  %147 = load i32, i32* %41, align 4
  %148 = load i32, i32* %42, align 4
  %149 = load i32, i32* %43, align 4
  %150 = call i32 @DOTP_UB4_UH(i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %40, align 4
  %152 = load i32, i32* %41, align 4
  %153 = load i32, i32* %42, align 4
  %154 = load i32, i32* %43, align 4
  %155 = call i32 @SRARI_H4_UH(i32 %151, i32 %152, i32 %153, i32 %154, i32 7)
  %156 = load i32, i32* %40, align 4
  %157 = load i32, i32* %41, align 4
  %158 = load i32, i32* %42, align 4
  %159 = load i32, i32* %43, align 4
  %160 = call i32 @SAT_UH4_UH(i32 %156, i32 %157, i32 %158, i32 %159, i32 7)
  %161 = load i32, i32* %40, align 4
  %162 = load i32, i32* %41, align 4
  %163 = load i32, i32* %42, align 4
  %164 = load i32, i32* %43, align 4
  %165 = load i64, i64* %27, align 8
  %166 = load i64, i64* %28, align 8
  %167 = load i32*, i32** %9, align 8
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @PCKEV_AVG_ST8x4_UB(i32 %161, i32 %162, i32 %163, i32 %164, i64 %165, i64 %166, i32* %167, i32 %168)
  %170 = load i32, i32* %10, align 4
  %171 = mul nsw i32 4, %170
  %172 = load i32*, i32** %9, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32* %174, i32** %9, align 8
  %175 = load i64, i64* %35, align 8
  %176 = load i64, i64* %36, align 8
  %177 = load i64, i64* %37, align 8
  %178 = load i64, i64* %38, align 8
  %179 = load i64, i64* %39, align 8
  %180 = load i64, i64* %39, align 8
  %181 = load i64, i64* %39, align 8
  %182 = load i64, i64* %39, align 8
  %183 = load i32, i32* %40, align 4
  %184 = load i32, i32* %41, align 4
  %185 = load i32, i32* %42, align 4
  %186 = load i32, i32* %43, align 4
  %187 = call i32 @DOTP_UB4_UH(i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i32 %183, i32 %184, i32 %185, i32 %186)
  %188 = load i32, i32* %40, align 4
  %189 = load i32, i32* %41, align 4
  %190 = load i32, i32* %42, align 4
  %191 = load i32, i32* %43, align 4
  %192 = call i32 @SRARI_H4_UH(i32 %188, i32 %189, i32 %190, i32 %191, i32 7)
  %193 = load i32, i32* %40, align 4
  %194 = load i32, i32* %41, align 4
  %195 = load i32, i32* %42, align 4
  %196 = load i32, i32* %43, align 4
  %197 = call i32 @SAT_UH4_UH(i32 %193, i32 %194, i32 %195, i32 %196, i32 7)
  %198 = load i32, i32* %40, align 4
  %199 = load i32, i32* %41, align 4
  %200 = load i32, i32* %42, align 4
  %201 = load i32, i32* %43, align 4
  %202 = load i64, i64* %29, align 8
  %203 = load i64, i64* %30, align 8
  %204 = load i32*, i32** %9, align 8
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @PCKEV_AVG_ST8x4_UB(i32 %198, i32 %199, i32 %200, i32 %201, i64 %202, i64 %203, i32* %204, i32 %205)
  %207 = load i32, i32* %10, align 4
  %208 = mul nsw i32 4, %207
  %209 = load i32*, i32** %9, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  store i32* %211, i32** %9, align 8
  %212 = load i64, i64* %26, align 8
  store i64 %212, i64* %18, align 8
  br label %57

213:                                              ; preds = %57
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_UB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INSERT_D2_UB(i32, i32, i64) #1

declare dso_local i32 @ILVR_B4_UB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DOTP_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_UH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_UH4_UH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_AVG_ST8x4_UB(i32, i32, i32, i32, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
