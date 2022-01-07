; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_extract_even2avg_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_extract_even2avg_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32)* @extract_even2avg_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_even2avg_c(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32* %14, i32** %8, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32* %18, i32** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = mul nsw i32 %19, 4
  %21 = load i32*, i32** %6, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = mul nsw i32 %24, 4
  %26 = load i32*, i32** %7, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %34, %5
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %77

34:                                               ; preds = %31
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 4, %36
  %38 = add nsw i32 %37, 0
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 4, %43
  %45 = add nsw i32 %44, 0
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %41, %48
  %50 = ashr i32 %49, 1
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = mul nsw i32 4, %56
  %58 = add nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = mul nsw i32 4, %63
  %65 = add nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %61, %68
  %70 = ashr i32 %69, 1
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %31

77:                                               ; preds = %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
