; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_fixed.c_DEC_UQUAD.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_fixed.c_DEC_UQUAD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32)* @DEC_UQUAD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @DEC_UQUAD(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = lshr i32 %8, 12
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 3
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 31
  %14 = mul nsw i32 %13, 2
  %15 = add nsw i32 1, %14
  %16 = mul i32 %11, %15
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 1
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = lshr i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = lshr i32 %25, 2
  %27 = and i32 %26, 3
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 31
  %30 = mul nsw i32 %29, 2
  %31 = add nsw i32 1, %30
  %32 = mul i32 %27, %31
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 1
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = lshr i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = lshr i32 %41, 4
  %43 = and i32 %42, 3
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 31
  %46 = mul nsw i32 %45, 2
  %47 = add nsw i32 1, %46
  %48 = mul i32 %43, %47
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 1
  %53 = load i32, i32* %6, align 4
  %54 = shl i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = lshr i32 %55, 1
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %5, align 4
  %58 = lshr i32 %57, 6
  %59 = and i32 %58, 3
  %60 = load i32, i32* %6, align 4
  %61 = ashr i32 %60, 31
  %62 = mul nsw i32 %61, 2
  %63 = add nsw i32 1, %62
  %64 = mul i32 %59, %63
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  ret i32* %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
