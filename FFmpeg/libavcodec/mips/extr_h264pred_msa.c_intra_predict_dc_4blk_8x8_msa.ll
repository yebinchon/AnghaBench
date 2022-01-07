; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264pred_msa.c_intra_predict_dc_4blk_8x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264pred_msa.c_intra_predict_dc_4blk_8x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @intra_predict_dc_4blk_8x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intra_predict_dc_4blk_8x8_msa(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 0, %20
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = call i64 @LD_UB(i32* %22)
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* %15, align 8
  %26 = call i32 @__msa_hadd_u_h(i64 %24, i64 %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = call i64 @__msa_hadd_u_w(i32 %27, i32 %28)
  store i64 %29, i64* %17, align 8
  %30 = load i64, i64* %17, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @__msa_copy_u_w(i32 %31, i32 0)
  store i32 %32, i32* %5, align 4
  %33 = load i64, i64* %17, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @__msa_copy_u_w(i32 %34, i32 1)
  store i32 %35, i32* %6, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 0, %37
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = mul nsw i32 1, %46
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = mul nsw i32 2, %55
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = mul nsw i32 3, %64
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = mul nsw i32 4, %73
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %8, align 4
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = mul nsw i32 5, %80
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = mul nsw i32 6, %89
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load i32*, i32** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = mul nsw i32 7, %98
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 4
  %108 = ashr i32 %107, 3
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %109, %110
  %112 = add nsw i32 %111, 4
  %113 = ashr i32 %112, 3
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 2
  %116 = ashr i32 %115, 2
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 2
  %119 = ashr i32 %118, 2
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %5, align 4
  %121 = mul nsw i32 %120, 16843009
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %6, align 4
  %123 = mul nsw i32 %122, 16843009
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %8, align 4
  %125 = mul nsw i32 %124, 16843009
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %7, align 4
  %127 = mul nsw i32 %126, 16843009
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %10, align 4
  %129 = shl i32 %128, 32
  %130 = load i32, i32* %9, align 4
  %131 = or i32 %129, %130
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %12, align 4
  %133 = shl i32 %132, 32
  %134 = load i32, i32* %11, align 4
  %135 = or i32 %133, %134
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32*, i32** %3, align 8
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @SD4(i32 %136, i32 %137, i32 %138, i32 %139, i32* %140, i32 %141)
  %143 = load i32, i32* %4, align 4
  %144 = mul nsw i32 4, %143
  %145 = load i32*, i32** %3, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32* %147, i32** %3, align 8
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = load i32*, i32** %3, align 8
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @SD4(i32 %148, i32 %149, i32 %150, i32 %151, i32* %152, i32 %153)
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @__msa_hadd_u_h(i64, i64) #1

declare dso_local i64 @__msa_hadd_u_w(i32, i32) #1

declare dso_local i32 @__msa_copy_u_w(i32, i32) #1

declare dso_local i32 @SD4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
