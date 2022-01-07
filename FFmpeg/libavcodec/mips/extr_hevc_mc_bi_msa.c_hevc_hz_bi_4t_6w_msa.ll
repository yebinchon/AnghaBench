; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_6w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_6w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_bi_4t_6w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_bi_4t_6w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %40 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i64 @LD_SB(i32* %41)
  store i64 %42, i64* %28, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 -1
  store i32* %44, i32** %9, align 8
  %45 = call i32 @__msa_ldi_h(i32 128)
  store i32 %45, i32* %39, align 4
  %46 = load i32, i32* %39, align 4
  %47 = shl i32 %46, 6
  store i32 %47, i32* %39, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = call i32 @LD_SH(i32* %48)
  store i32 %49, i32* %38, align 4
  %50 = load i32, i32* %38, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %19, align 4
  %53 = call i32 @SPLATI_H2_SH(i32 %50, i32 0, i32 1, i32 %51, i32 %52)
  %54 = load i64, i64* %28, align 8
  %55 = add nsw i64 %54, 2
  store i64 %55, i64* %29, align 8
  %56 = load i32, i32* %16, align 4
  %57 = ashr i32 %56, 2
  store i32 %57, i32* %17, align 4
  br label %58

58:                                               ; preds = %62, %8
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %17, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %209

62:                                               ; preds = %58
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i64, i64* %20, align 8
  %66 = load i64, i64* %21, align 8
  %67 = load i64, i64* %22, align 8
  %68 = load i64, i64* %23, align 8
  %69 = call i32 @LD_SB4(i32* %63, i32 %64, i64 %65, i64 %66, i64 %67, i64 %68)
  %70 = load i32, i32* %10, align 4
  %71 = mul nsw i32 4, %70
  %72 = load i32*, i32** %9, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %9, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %24, align 4
  %78 = load i32, i32* %25, align 4
  %79 = load i32, i32* %26, align 4
  %80 = load i32, i32* %27, align 4
  %81 = call i32 @LD_SH4(i32* %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %12, align 4
  %83 = mul nsw i32 4, %82
  %84 = load i32*, i32** %11, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %11, align 8
  %87 = load i64, i64* %20, align 8
  %88 = load i64, i64* %21, align 8
  %89 = load i64, i64* %22, align 8
  %90 = load i64, i64* %23, align 8
  %91 = call i32 @XORI_B4_128_SB(i64 %87, i64 %88, i64 %89, i64 %90)
  %92 = load i32, i32* %39, align 4
  store i32 %92, i32* %34, align 4
  %93 = load i32, i32* %39, align 4
  store i32 %93, i32* %35, align 4
  %94 = load i32, i32* %39, align 4
  store i32 %94, i32* %36, align 4
  %95 = load i32, i32* %39, align 4
  store i32 %95, i32* %37, align 4
  %96 = load i64, i64* %20, align 8
  %97 = load i64, i64* %20, align 8
  %98 = load i64, i64* %21, align 8
  %99 = load i64, i64* %21, align 8
  %100 = load i64, i64* %28, align 8
  %101 = load i64, i64* %28, align 8
  %102 = load i64, i64* %30, align 8
  %103 = load i64, i64* %31, align 8
  %104 = call i32 @VSHF_B2_SB(i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103)
  %105 = load i64, i64* %22, align 8
  %106 = load i64, i64* %22, align 8
  %107 = load i64, i64* %23, align 8
  %108 = load i64, i64* %23, align 8
  %109 = load i64, i64* %28, align 8
  %110 = load i64, i64* %28, align 8
  %111 = load i64, i64* %32, align 8
  %112 = load i64, i64* %33, align 8
  %113 = call i32 @VSHF_B2_SB(i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112)
  %114 = load i64, i64* %30, align 8
  %115 = load i64, i64* %31, align 8
  %116 = load i64, i64* %32, align 8
  %117 = load i64, i64* %33, align 8
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %34, align 4
  %123 = load i32, i32* %35, align 4
  %124 = load i32, i32* %36, align 4
  %125 = load i32, i32* %37, align 4
  %126 = call i32 @DPADD_SB4_SH(i64 %114, i64 %115, i64 %116, i64 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = load i64, i64* %20, align 8
  %128 = load i64, i64* %20, align 8
  %129 = load i64, i64* %21, align 8
  %130 = load i64, i64* %21, align 8
  %131 = load i64, i64* %29, align 8
  %132 = load i64, i64* %29, align 8
  %133 = load i64, i64* %30, align 8
  %134 = load i64, i64* %31, align 8
  %135 = call i32 @VSHF_B2_SB(i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134)
  %136 = load i64, i64* %22, align 8
  %137 = load i64, i64* %22, align 8
  %138 = load i64, i64* %23, align 8
  %139 = load i64, i64* %23, align 8
  %140 = load i64, i64* %29, align 8
  %141 = load i64, i64* %29, align 8
  %142 = load i64, i64* %32, align 8
  %143 = load i64, i64* %33, align 8
  %144 = call i32 @VSHF_B2_SB(i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143)
  %145 = load i64, i64* %30, align 8
  %146 = load i64, i64* %31, align 8
  %147 = load i64, i64* %32, align 8
  %148 = load i64, i64* %33, align 8
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* %34, align 4
  %154 = load i32, i32* %35, align 4
  %155 = load i32, i32* %36, align 4
  %156 = load i32, i32* %37, align 4
  %157 = call i32 @DPADD_SB4_SH(i64 %145, i64 %146, i64 %147, i64 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load i32, i32* %24, align 4
  %159 = load i32, i32* %25, align 4
  %160 = load i32, i32* %26, align 4
  %161 = load i32, i32* %27, align 4
  %162 = load i32, i32* %34, align 4
  %163 = load i32, i32* %35, align 4
  %164 = load i32, i32* %36, align 4
  %165 = load i32, i32* %37, align 4
  %166 = load i32, i32* %34, align 4
  %167 = load i32, i32* %35, align 4
  %168 = load i32, i32* %36, align 4
  %169 = load i32, i32* %37, align 4
  %170 = call i32 @HEVC_BI_RND_CLIP4(i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 7, i32 %166, i32 %167, i32 %168, i32 %169)
  %171 = load i32, i32* %35, align 4
  %172 = load i32, i32* %34, align 4
  %173 = load i32, i32* %37, align 4
  %174 = load i32, i32* %36, align 4
  %175 = load i32, i32* %34, align 4
  %176 = load i32, i32* %35, align 4
  %177 = call i32 @PCKEV_B2_SH(i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176)
  %178 = load i32, i32* %34, align 4
  %179 = load i32*, i32** %13, align 8
  %180 = load i32, i32* %14, align 4
  %181 = call i32 @ST_W2(i32 %178, i32 0, i32 2, i32* %179, i32 %180)
  %182 = load i32, i32* %34, align 4
  %183 = load i32*, i32** %13, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 4
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @ST_H2(i32 %182, i32 2, i32 6, i32* %184, i32 %185)
  %187 = load i32, i32* %35, align 4
  %188 = load i32*, i32** %13, align 8
  %189 = load i32, i32* %14, align 4
  %190 = mul nsw i32 2, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @ST_W2(i32 %187, i32 0, i32 2, i32* %192, i32 %193)
  %195 = load i32, i32* %35, align 4
  %196 = load i32*, i32** %13, align 8
  %197 = load i32, i32* %14, align 4
  %198 = mul nsw i32 2, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = getelementptr inbounds i32, i32* %200, i64 4
  %202 = load i32, i32* %14, align 4
  %203 = call i32 @ST_H2(i32 %195, i32 2, i32 6, i32* %201, i32 %202)
  %204 = load i32, i32* %14, align 4
  %205 = mul nsw i32 4, %204
  %206 = load i32*, i32** %13, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32* %208, i32** %13, align 8
  br label %58

209:                                              ; preds = %58
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_W2(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_H2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
