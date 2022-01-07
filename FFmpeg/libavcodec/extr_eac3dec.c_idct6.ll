; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eac3dec.c_idct6.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eac3dec.c_idct6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COEFF_0 = common dso_local global i32 0, align 4
@COEFF_1 = common dso_local global i32 0, align 4
@COEFF_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @idct6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idct6(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 5
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @COEFF_0, align 4
  %25 = mul nsw i32 %23, %24
  %26 = ashr i32 %25, 23
  store i32 %26, i32* %6, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @COEFF_1, align 4
  %31 = mul nsw i32 %29, %30
  %32 = ashr i32 %31, 23
  store i32 %32, i32* %3, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = load i32, i32* @COEFF_2, align 4
  %41 = mul nsw i32 %39, %40
  %42 = ashr i32 %41, 23
  store i32 %42, i32* %7, align 4
  %43 = load i32*, i32** %2, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %3, align 4
  %47 = ashr i32 %46, 1
  %48 = add nsw i32 %45, %47
  store i32 %48, i32* %4, align 4
  %49 = load i32*, i32** %2, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %3, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32*, i32** %2, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = load i32*, i32** %2, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32*, i32** %2, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = load i32*, i32** %2, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %75, %78
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32*, i32** %2, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32*, i32** %2, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32*, i32** %2, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sub nsw i32 %95, %96
  %98 = load i32*, i32** %2, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %8, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i32*, i32** %2, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load i32*, i32** %2, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 5
  store i32 %107, i32* %109, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
