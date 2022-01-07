; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_simple_idct.c_idct4row.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_simple_idct.c_idct4row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R3 = common dso_local global i32 0, align 4
@R_SHIFT = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@R2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @idct4row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idct4row(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @R3, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load i32, i32* @R_SHIFT, align 4
  %29 = sub nsw i32 %28, 1
  %30 = shl i32 1, %29
  %31 = add nsw i32 %27, %30
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* @R3, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* @R_SHIFT, align 4
  %38 = sub nsw i32 %37, 1
  %39 = shl i32 1, %38
  %40 = add nsw i32 %36, %39
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @R1, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @R2, align 4
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @R2, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @R1, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sub nsw i32 %50, %53
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* @R_SHIFT, align 4
  %59 = ashr i32 %57, %58
  %60 = load i32*, i32** %2, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* @R_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = load i32*, i32** %2, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load i32, i32* @R_SHIFT, align 4
  %73 = ashr i32 %71, %72
  %74 = load i32*, i32** %2, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32, i32* @R_SHIFT, align 4
  %80 = ashr i32 %78, %79
  %81 = load i32*, i32** %2, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  store i32 %80, i32* %82, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
