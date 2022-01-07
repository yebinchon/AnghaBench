; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jrevdct.c_ff_j_rev_dct2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jrevdct.c_ff_j_rev_dct2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCTSTRIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_j_rev_dct2(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 4
  store i32 %10, i32* %8, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @DCTSTRIDE, align 4
  %13 = mul nsw i32 0, %12
  %14 = add nsw i32 0, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @DCTSTRIDE, align 4
  %20 = mul nsw i32 0, %19
  %21 = add nsw i32 1, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %17, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @DCTSTRIDE, align 4
  %28 = mul nsw i32 0, %27
  %29 = add nsw i32 0, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @DCTSTRIDE, align 4
  %35 = mul nsw i32 0, %34
  %36 = add nsw i32 1, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %32, %39
  store i32 %40, i32* %4, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* @DCTSTRIDE, align 4
  %43 = mul nsw i32 1, %42
  %44 = add nsw i32 0, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %2, align 8
  %49 = load i32, i32* @DCTSTRIDE, align 4
  %50 = mul nsw i32 1, %49
  %51 = add nsw i32 1, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %47, %54
  store i32 %55, i32* %5, align 4
  %56 = load i32*, i32** %2, align 8
  %57 = load i32, i32* @DCTSTRIDE, align 4
  %58 = mul nsw i32 1, %57
  %59 = add nsw i32 0, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* @DCTSTRIDE, align 4
  %65 = mul nsw i32 1, %64
  %66 = add nsw i32 1, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %62, %69
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %71, %72
  %74 = ashr i32 %73, 3
  %75 = load i32*, i32** %2, align 8
  %76 = load i32, i32* @DCTSTRIDE, align 4
  %77 = mul nsw i32 0, %76
  %78 = add nsw i32 0, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  store i32 %74, i32* %80, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %81, %82
  %84 = ashr i32 %83, 3
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* @DCTSTRIDE, align 4
  %87 = mul nsw i32 0, %86
  %88 = add nsw i32 1, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  store i32 %84, i32* %90, align 4
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %5, align 4
  %93 = sub nsw i32 %91, %92
  %94 = ashr i32 %93, 3
  %95 = load i32*, i32** %2, align 8
  %96 = load i32, i32* @DCTSTRIDE, align 4
  %97 = mul nsw i32 1, %96
  %98 = add nsw i32 0, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  store i32 %94, i32* %100, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %6, align 4
  %103 = sub nsw i32 %101, %102
  %104 = ashr i32 %103, 3
  %105 = load i32*, i32** %2, align 8
  %106 = load i32, i32* @DCTSTRIDE, align 4
  %107 = mul nsw i32 1, %106
  %108 = add nsw i32 1, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  store i32 %104, i32* %110, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
