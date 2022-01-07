; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_8t_32w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_8t_32w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_8t_32w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_8t_32w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
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
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %39 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %40 = call i64 @LD_SB(i32* %39)
  store i64 %40, i64* %38, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 -3
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @LD_SH(i32* %43)
  store i32 %44, i32* %36, align 4
  %45 = load i32, i32* %36, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* %20, align 4
  %50 = call i32 @SPLATI_H4_SH(i32 %45, i32 0, i32 1, i32 2, i32 3, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load i64, i64* %38, align 8
  %52 = add nsw i64 %51, 2
  store i64 %52, i64* %21, align 8
  %53 = load i64, i64* %38, align 8
  %54 = add nsw i64 %53, 4
  store i64 %54, i64* %22, align 8
  %55 = load i64, i64* %38, align 8
  %56 = add nsw i64 %55, 6
  store i64 %56, i64* %23, align 8
  %57 = load i64, i64* %38, align 8
  %58 = add nsw i64 %57, 8
  store i64 %58, i64* %24, align 8
  %59 = load i64, i64* %38, align 8
  %60 = add nsw i64 %59, 10
  store i64 %60, i64* %25, align 8
  %61 = load i64, i64* %38, align 8
  %62 = add nsw i64 %61, 12
  store i64 %62, i64* %26, align 8
  %63 = load i64, i64* %38, align 8
  %64 = add nsw i64 %63, 14
  store i64 %64, i64* %27, align 8
  %65 = call i32 @__msa_ldi_h(i32 128)
  store i32 %65, i32* %37, align 4
  %66 = load i32, i32* %37, align 4
  %67 = shl i32 %66, 6
  store i32 %67, i32* %37, align 4
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %73, %6
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %13, align 4
  %72 = icmp ne i32 %70, 0
  br i1 %72, label %73, label %199

73:                                               ; preds = %69
  %74 = load i32*, i32** %7, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %15, align 8
  %77 = call i32 @LD_SB2(i32* %74, i32 16, i64 %75, i64 %76)
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 24
  %80 = call i64 @LD_SB(i32* %79)
  store i64 %80, i64* %16, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %7, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* %16, align 8
  %88 = call i32 @XORI_B3_128_SB(i64 %85, i64 %86, i64 %87)
  %89 = load i64, i64* %14, align 8
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %38, align 8
  %92 = load i64, i64* %21, align 8
  %93 = load i64, i64* %22, align 8
  %94 = load i64, i64* %23, align 8
  %95 = load i64, i64* %28, align 8
  %96 = load i64, i64* %29, align 8
  %97 = load i64, i64* %30, align 8
  %98 = load i64, i64* %31, align 8
  %99 = call i32 @VSHF_B4_SB(i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98)
  %100 = load i32, i32* %37, align 4
  store i32 %100, i32* %32, align 4
  %101 = load i64, i64* %28, align 8
  %102 = load i64, i64* %29, align 8
  %103 = load i64, i64* %30, align 8
  %104 = load i64, i64* %31, align 8
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %32, align 4
  %110 = load i32, i32* %32, align 4
  %111 = load i32, i32* %32, align 4
  %112 = load i32, i32* %32, align 4
  %113 = call i32 @DPADD_SB4_SH(i64 %101, i64 %102, i64 %103, i64 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* %15, align 8
  %116 = load i64, i64* %24, align 8
  %117 = load i64, i64* %25, align 8
  %118 = load i64, i64* %26, align 8
  %119 = load i64, i64* %27, align 8
  %120 = load i64, i64* %28, align 8
  %121 = load i64, i64* %29, align 8
  %122 = load i64, i64* %30, align 8
  %123 = load i64, i64* %31, align 8
  %124 = call i32 @VSHF_B4_SB(i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123)
  %125 = load i32, i32* %37, align 4
  store i32 %125, i32* %33, align 4
  %126 = load i64, i64* %28, align 8
  %127 = load i64, i64* %29, align 8
  %128 = load i64, i64* %30, align 8
  %129 = load i64, i64* %31, align 8
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* %33, align 4
  %135 = load i32, i32* %33, align 4
  %136 = load i32, i32* %33, align 4
  %137 = load i32, i32* %33, align 4
  %138 = call i32 @DPADD_SB4_SH(i64 %126, i64 %127, i64 %128, i64 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137)
  %139 = load i64, i64* %15, align 8
  %140 = load i64, i64* %15, align 8
  %141 = load i64, i64* %38, align 8
  %142 = load i64, i64* %21, align 8
  %143 = load i64, i64* %22, align 8
  %144 = load i64, i64* %23, align 8
  %145 = load i64, i64* %28, align 8
  %146 = load i64, i64* %29, align 8
  %147 = load i64, i64* %30, align 8
  %148 = load i64, i64* %31, align 8
  %149 = call i32 @VSHF_B4_SB(i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148)
  %150 = load i32, i32* %37, align 4
  store i32 %150, i32* %34, align 4
  %151 = load i64, i64* %28, align 8
  %152 = load i64, i64* %29, align 8
  %153 = load i64, i64* %30, align 8
  %154 = load i64, i64* %31, align 8
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %19, align 4
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %34, align 4
  %160 = load i32, i32* %34, align 4
  %161 = load i32, i32* %34, align 4
  %162 = load i32, i32* %34, align 4
  %163 = call i32 @DPADD_SB4_SH(i64 %151, i64 %152, i64 %153, i64 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162)
  %164 = load i64, i64* %16, align 8
  %165 = load i64, i64* %16, align 8
  %166 = load i64, i64* %38, align 8
  %167 = load i64, i64* %21, align 8
  %168 = load i64, i64* %22, align 8
  %169 = load i64, i64* %23, align 8
  %170 = load i64, i64* %28, align 8
  %171 = load i64, i64* %29, align 8
  %172 = load i64, i64* %30, align 8
  %173 = load i64, i64* %31, align 8
  %174 = call i32 @VSHF_B4_SB(i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173)
  %175 = load i32, i32* %37, align 4
  store i32 %175, i32* %35, align 4
  %176 = load i64, i64* %28, align 8
  %177 = load i64, i64* %29, align 8
  %178 = load i64, i64* %30, align 8
  %179 = load i64, i64* %31, align 8
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* %20, align 4
  %184 = load i32, i32* %35, align 4
  %185 = load i32, i32* %35, align 4
  %186 = load i32, i32* %35, align 4
  %187 = load i32, i32* %35, align 4
  %188 = call i32 @DPADD_SB4_SH(i64 %176, i64 %177, i64 %178, i64 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187)
  %189 = load i32, i32* %32, align 4
  %190 = load i32, i32* %33, align 4
  %191 = load i32, i32* %34, align 4
  %192 = load i32, i32* %35, align 4
  %193 = load i32*, i32** %9, align 8
  %194 = call i32 @ST_SH4(i32 %189, i32 %190, i32 %191, i32 %192, i32* %193, i32 8)
  %195 = load i32, i32* %10, align 4
  %196 = load i32*, i32** %9, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32* %198, i32** %9, align 8
  br label %69

199:                                              ; preds = %69
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
