; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi_dsp.c_ff_ivi_col_haar8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi_dsp.c_ff_ivi_col_haar8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_ivi_col_haar8(i32* %0, i64* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %142, %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %145

22:                                               ; preds = %19
  %23 = load i64*, i64** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %104

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 16
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 24
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 32
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 40
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 56
  %53 = load i32, i32* %52, align 4
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = mul i64 0, %55
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = mul i64 1, %60
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = mul i64 2, %65
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = mul i64 3, %70
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = mul i64 4, %75
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %6, align 8
  %80 = load i64, i64* %7, align 8
  %81 = mul i64 5, %80
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = mul i64 6, %85
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = mul i64 7, %90
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @INV_HAAR8(i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i64 %58, i64 %63, i64 %68, i64 %73, i64 %78, i64 %83, i64 %88, i64 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102)
  br label %137

104:                                              ; preds = %22
  %105 = load i64*, i64** %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = mul i64 7, %106
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  store i64 0, i64* %108, align 8
  %109 = load i64*, i64** %6, align 8
  %110 = load i64, i64* %7, align 8
  %111 = mul i64 6, %110
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  store i64 0, i64* %112, align 8
  %113 = load i64*, i64** %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = mul i64 5, %114
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  store i64 0, i64* %116, align 8
  %117 = load i64*, i64** %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = mul i64 4, %118
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  store i64 0, i64* %120, align 8
  %121 = load i64*, i64** %6, align 8
  %122 = load i64, i64* %7, align 8
  %123 = mul i64 3, %122
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  store i64 0, i64* %124, align 8
  %125 = load i64*, i64** %6, align 8
  %126 = load i64, i64* %7, align 8
  %127 = mul i64 2, %126
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  store i64 0, i64* %128, align 8
  %129 = load i64*, i64** %6, align 8
  %130 = load i64, i64* %7, align 8
  %131 = mul i64 1, %130
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  store i64 0, i64* %132, align 8
  %133 = load i64*, i64** %6, align 8
  %134 = load i64, i64* %7, align 8
  %135 = mul i64 0, %134
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  store i64 0, i64* %136, align 8
  br label %137

137:                                              ; preds = %104, %29
  %138 = load i32*, i32** %5, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %5, align 8
  %140 = load i64*, i64** %6, align 8
  %141 = getelementptr inbounds i64, i64* %140, i32 1
  store i64* %141, i64** %6, align 8
  br label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %19

145:                                              ; preds = %19
  ret void
}

declare dso_local i32 @INV_HAAR8(i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
