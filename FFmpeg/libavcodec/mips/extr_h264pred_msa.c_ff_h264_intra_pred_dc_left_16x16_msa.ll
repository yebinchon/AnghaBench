; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264pred_msa.c_ff_h264_intra_pred_dc_left_16x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264pred_msa.c_ff_h264_intra_pred_dc_left_16x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h264_intra_pred_dc_left_16x16_msa(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 -1
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %3, align 8
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = mul i64 0, %13
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = mul i64 1, %18
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = mul i64 2, %25
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %4, align 8
  %33 = mul i64 3, %32
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* %4, align 8
  %40 = mul i64 4, %39
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i64, i64* %4, align 8
  %47 = mul i64 5, %46
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* %4, align 8
  %54 = mul i64 6, %53
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load i64, i64* %4, align 8
  %61 = mul i64 7, %60
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i64, i64* %4, align 8
  %68 = mul i64 8, %67
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i64, i64* %4, align 8
  %75 = mul i64 9, %74
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = load i64, i64* %4, align 8
  %82 = mul i64 10, %81
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = load i64, i64* %4, align 8
  %89 = mul i64 11, %88
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = load i64, i64* %4, align 8
  %96 = mul i64 12, %95
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = load i64, i64* %4, align 8
  %103 = mul i64 13, %102
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %7, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = load i64, i64* %4, align 8
  %110 = mul i64 14, %109
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %7, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = load i64, i64* %4, align 8
  %117 = mul i64 15, %116
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 8
  %124 = ashr i32 %123, 4
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i64 @__msa_fill_b(i32 %125)
  store i64 %126, i64* %8, align 8
  %127 = load i64, i64* %8, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* %8, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = load i64, i64* %4, align 8
  %137 = call i32 @ST_UB8(i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i32* %135, i64 %136)
  %138 = load i64, i64* %4, align 8
  %139 = mul i64 8, %138
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 %139
  store i32* %141, i32** %6, align 8
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* %8, align 8
  %144 = load i64, i64* %8, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* %8, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %8, align 8
  %150 = load i32*, i32** %6, align 8
  %151 = load i64, i64* %4, align 8
  %152 = call i32 @ST_UB8(i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i32* %150, i64 %151)
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
