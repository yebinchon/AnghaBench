; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxScaleApply.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxScaleApply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_guMtxScaleApply(i32** %0, i32** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32**, i32*** %6, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load i32**, i32*** %7, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %17, i32* %21, align 4
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32**, i32*** %7, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %28, i32* %32, align 4
  %33 = load i32**, i32*** %6, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32**, i32*** %7, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32 %39, i32* %43, align 4
  %44 = load i32**, i32*** %6, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32**, i32*** %7, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  store i32 %50, i32* %54, align 4
  %55 = load i32**, i32*** %6, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32**, i32*** %7, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  %66 = load i32**, i32*** %6, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32**, i32*** %7, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %72, i32* %76, align 4
  %77 = load i32**, i32*** %6, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32**, i32*** %7, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32 %83, i32* %87, align 4
  %88 = load i32**, i32*** %6, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32**, i32*** %7, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  store i32 %94, i32* %98, align 4
  %99 = load i32**, i32*** %6, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 2
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %10, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32**, i32*** %7, align 8
  %107 = getelementptr inbounds i32*, i32** %106, i64 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %105, i32* %109, align 4
  %110 = load i32**, i32*** %6, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %10, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32**, i32*** %7, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 %116, i32* %120, align 4
  %121 = load i32**, i32*** %6, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i64 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %10, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i32**, i32*** %7, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 2
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  store i32 %127, i32* %131, align 4
  %132 = load i32**, i32*** %6, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 2
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %10, align 4
  %138 = mul nsw i32 %136, %137
  %139 = load i32**, i32*** %7, align 8
  %140 = getelementptr inbounds i32*, i32** %139, i64 2
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 3
  store i32 %138, i32* %142, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
