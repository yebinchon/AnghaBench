; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_8t_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_8t_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_8t_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_8t_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
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
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %40 = load i64, i64* @ff_hevc_mask_arr, align 8
  %41 = add nsw i64 %40, 16
  %42 = call i64 @LD_SB(i64 %41)
  store i64 %42, i64* %39, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 -3
  store i32* %44, i32** %7, align 8
  %45 = call i32 @__msa_ldi_h(i32 128)
  store i32 %45, i32* %38, align 4
  %46 = load i32, i32* %38, align 4
  %47 = shl i32 %46, 6
  store i32 %47, i32* %38, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @LD_SH(i32* %48)
  store i32 %49, i32* %37, align 4
  %50 = load i32, i32* %37, align 4
  %51 = load i32, i32* %22, align 4
  %52 = load i32, i32* %23, align 4
  %53 = load i32, i32* %24, align 4
  %54 = load i32, i32* %25, align 4
  %55 = call i32 @SPLATI_H4_SH(i32 %50, i32 0, i32 1, i32 2, i32 3, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i64, i64* %39, align 8
  %57 = add nsw i64 %56, 2
  store i64 %57, i64* %26, align 8
  %58 = load i64, i64* %39, align 8
  %59 = add nsw i64 %58, 4
  store i64 %59, i64* %27, align 8
  %60 = load i64, i64* %39, align 8
  %61 = add nsw i64 %60, 6
  store i64 %61, i64* %28, align 8
  %62 = load i32, i32* %12, align 4
  %63 = ashr i32 %62, 3
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %68, %6
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %13, align 4
  %67 = icmp ne i32 %65, 0
  br i1 %67, label %68, label %206

68:                                               ; preds = %64
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* %18, align 8
  %76 = load i64, i64* %19, align 8
  %77 = load i64, i64* %20, align 8
  %78 = load i64, i64* %21, align 8
  %79 = call i32 @LD_SB8(i32* %69, i32 %70, i64 %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76, i64 %77, i64 %78)
  %80 = load i32, i32* %8, align 4
  %81 = mul nsw i32 8, %80
  %82 = load i32*, i32** %7, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %7, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* %17, align 8
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %19, align 8
  %91 = load i64, i64* %20, align 8
  %92 = load i64, i64* %21, align 8
  %93 = call i32 @XORI_B8_128_SB(i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92)
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* %39, align 8
  %97 = load i64, i64* %26, align 8
  %98 = load i64, i64* %27, align 8
  %99 = load i64, i64* %28, align 8
  %100 = load i64, i64* %29, align 8
  %101 = load i64, i64* %30, align 8
  %102 = load i64, i64* %31, align 8
  %103 = load i64, i64* %32, align 8
  %104 = call i32 @VSHF_B4_SB(i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103)
  %105 = load i32, i32* %38, align 4
  store i32 %105, i32* %33, align 4
  %106 = load i64, i64* %29, align 8
  %107 = load i64, i64* %30, align 8
  %108 = load i64, i64* %31, align 8
  %109 = load i64, i64* %32, align 8
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* %23, align 4
  %112 = load i32, i32* %24, align 4
  %113 = load i32, i32* %25, align 4
  %114 = load i32, i32* %33, align 4
  %115 = load i32, i32* %33, align 4
  %116 = load i32, i32* %33, align 4
  %117 = load i32, i32* %33, align 4
  %118 = call i32 @DPADD_SB4_SH(i64 %106, i64 %107, i64 %108, i64 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117)
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* %17, align 8
  %121 = load i64, i64* %39, align 8
  %122 = load i64, i64* %26, align 8
  %123 = load i64, i64* %27, align 8
  %124 = load i64, i64* %28, align 8
  %125 = load i64, i64* %29, align 8
  %126 = load i64, i64* %30, align 8
  %127 = load i64, i64* %31, align 8
  %128 = load i64, i64* %32, align 8
  %129 = call i32 @VSHF_B4_SB(i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128)
  %130 = load i32, i32* %38, align 4
  store i32 %130, i32* %34, align 4
  %131 = load i64, i64* %29, align 8
  %132 = load i64, i64* %30, align 8
  %133 = load i64, i64* %31, align 8
  %134 = load i64, i64* %32, align 8
  %135 = load i32, i32* %22, align 4
  %136 = load i32, i32* %23, align 4
  %137 = load i32, i32* %24, align 4
  %138 = load i32, i32* %25, align 4
  %139 = load i32, i32* %34, align 4
  %140 = load i32, i32* %34, align 4
  %141 = load i32, i32* %34, align 4
  %142 = load i32, i32* %34, align 4
  %143 = call i32 @DPADD_SB4_SH(i64 %131, i64 %132, i64 %133, i64 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142)
  %144 = load i64, i64* %18, align 8
  %145 = load i64, i64* %19, align 8
  %146 = load i64, i64* %39, align 8
  %147 = load i64, i64* %26, align 8
  %148 = load i64, i64* %27, align 8
  %149 = load i64, i64* %28, align 8
  %150 = load i64, i64* %29, align 8
  %151 = load i64, i64* %30, align 8
  %152 = load i64, i64* %31, align 8
  %153 = load i64, i64* %32, align 8
  %154 = call i32 @VSHF_B4_SB(i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153)
  %155 = load i32, i32* %38, align 4
  store i32 %155, i32* %35, align 4
  %156 = load i64, i64* %29, align 8
  %157 = load i64, i64* %30, align 8
  %158 = load i64, i64* %31, align 8
  %159 = load i64, i64* %32, align 8
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* %23, align 4
  %162 = load i32, i32* %24, align 4
  %163 = load i32, i32* %25, align 4
  %164 = load i32, i32* %35, align 4
  %165 = load i32, i32* %35, align 4
  %166 = load i32, i32* %35, align 4
  %167 = load i32, i32* %35, align 4
  %168 = call i32 @DPADD_SB4_SH(i64 %156, i64 %157, i64 %158, i64 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167)
  %169 = load i64, i64* %20, align 8
  %170 = load i64, i64* %21, align 8
  %171 = load i64, i64* %39, align 8
  %172 = load i64, i64* %26, align 8
  %173 = load i64, i64* %27, align 8
  %174 = load i64, i64* %28, align 8
  %175 = load i64, i64* %29, align 8
  %176 = load i64, i64* %30, align 8
  %177 = load i64, i64* %31, align 8
  %178 = load i64, i64* %32, align 8
  %179 = call i32 @VSHF_B4_SB(i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178)
  %180 = load i32, i32* %38, align 4
  store i32 %180, i32* %36, align 4
  %181 = load i64, i64* %29, align 8
  %182 = load i64, i64* %30, align 8
  %183 = load i64, i64* %31, align 8
  %184 = load i64, i64* %32, align 8
  %185 = load i32, i32* %22, align 4
  %186 = load i32, i32* %23, align 4
  %187 = load i32, i32* %24, align 4
  %188 = load i32, i32* %25, align 4
  %189 = load i32, i32* %36, align 4
  %190 = load i32, i32* %36, align 4
  %191 = load i32, i32* %36, align 4
  %192 = load i32, i32* %36, align 4
  %193 = call i32 @DPADD_SB4_SH(i64 %181, i64 %182, i64 %183, i64 %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192)
  %194 = load i32, i32* %33, align 4
  %195 = load i32, i32* %34, align 4
  %196 = load i32, i32* %35, align 4
  %197 = load i32, i32* %36, align 4
  %198 = load i32*, i32** %9, align 8
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @ST_D8(i32 %194, i32 %195, i32 %196, i32 %197, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %198, i32 %199)
  %201 = load i32, i32* %10, align 4
  %202 = mul nsw i32 8, %201
  %203 = load i32*, i32** %9, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  store i32* %205, i32** %9, align 8
  br label %64

206:                                              ; preds = %64
  ret void
}

declare dso_local i64 @LD_SB(i64) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
