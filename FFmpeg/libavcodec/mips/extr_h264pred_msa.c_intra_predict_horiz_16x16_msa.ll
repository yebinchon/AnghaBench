; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264pred_msa.c_intra_predict_horiz_16x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264pred_msa.c_intra_predict_horiz_16x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*, i64)* @intra_predict_horiz_16x16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intra_predict_horiz_16x16_msa(i32* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
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
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = mul i64 0, %30
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = mul i64 1, %35
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = mul i64 2, %40
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = mul i64 3, %45
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @__msa_fill_b(i32 %49)
  store i64 %50, i64* %13, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @__msa_fill_b(i32 %51)
  store i64 %52, i64* %14, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @__msa_fill_b(i32 %53)
  store i64 %54, i64* %15, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i64 @__msa_fill_b(i32 %55)
  store i64 %56, i64* %16, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = mul i64 4, %58
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = mul i64 5, %63
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = mul i64 6, %68
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %11, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = mul i64 7, %73
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @__msa_fill_b(i32 %77)
  store i64 %78, i64* %17, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @__msa_fill_b(i32 %79)
  store i64 %80, i64* %18, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i64 @__msa_fill_b(i32 %81)
  store i64 %82, i64* %19, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i64 @__msa_fill_b(i32 %83)
  store i64 %84, i64* %20, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = mul i64 8, %86
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %9, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load i64, i64* %6, align 8
  %92 = mul i64 9, %91
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %10, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = load i64, i64* %6, align 8
  %97 = mul i64 10, %96
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %11, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = load i64, i64* %6, align 8
  %102 = mul i64 11, %101
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i64 @__msa_fill_b(i32 %105)
  store i64 %106, i64* %21, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i64 @__msa_fill_b(i32 %107)
  store i64 %108, i64* %22, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i64 @__msa_fill_b(i32 %109)
  store i64 %110, i64* %23, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i64 @__msa_fill_b(i32 %111)
  store i64 %112, i64* %24, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = load i64, i64* %6, align 8
  %115 = mul i64 12, %114
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %9, align 4
  %118 = load i32*, i32** %5, align 8
  %119 = load i64, i64* %6, align 8
  %120 = mul i64 13, %119
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %10, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = load i64, i64* %6, align 8
  %125 = mul i64 14, %124
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %11, align 4
  %128 = load i32*, i32** %5, align 8
  %129 = load i64, i64* %6, align 8
  %130 = mul i64 15, %129
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i64 @__msa_fill_b(i32 %133)
  store i64 %134, i64* %25, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i64 @__msa_fill_b(i32 %135)
  store i64 %136, i64* %26, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i64 @__msa_fill_b(i32 %137)
  store i64 %138, i64* %27, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i64 @__msa_fill_b(i32 %139)
  store i64 %140, i64* %28, align 8
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* %14, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* %16, align 8
  %145 = load i64, i64* %17, align 8
  %146 = load i64, i64* %18, align 8
  %147 = load i64, i64* %19, align 8
  %148 = load i64, i64* %20, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = load i64, i64* %8, align 8
  %151 = call i32 @ST_UB8(i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i32* %149, i64 %150)
  %152 = load i64, i64* %8, align 8
  %153 = mul i64 8, %152
  %154 = load i32*, i32** %7, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 %153
  store i32* %155, i32** %7, align 8
  %156 = load i64, i64* %21, align 8
  %157 = load i64, i64* %22, align 8
  %158 = load i64, i64* %23, align 8
  %159 = load i64, i64* %24, align 8
  %160 = load i64, i64* %25, align 8
  %161 = load i64, i64* %26, align 8
  %162 = load i64, i64* %27, align 8
  %163 = load i64, i64* %28, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = load i64, i64* %8, align 8
  %166 = call i32 @ST_UB8(i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i32* %164, i64 %165)
  ret void
}

declare dso_local i64 @__msa_fill_b(i32) #1

declare dso_local i32 @ST_UB8(i64, i64, i64, i64, i64, i64, i64, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
