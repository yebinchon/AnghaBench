; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vsrc_mptestsrc.c_cbp_test.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vsrc_mptestsrc.c_cbp_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32)* @cbp_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbp_test(i32** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32*], align 16
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %76, %3
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 128
  br i1 %13, label %14, label %79

14:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %72, %14
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 128
  br i1 %17, label %18, label %75

18:                                               ; preds = %15
  %19 = load i32**, i32*** %4, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 %26, 2
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %25, i64 %32
  %34 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  store i32* %33, i32** %34, align 16
  %35 = load i32**, i32*** %4, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %40, i64 %46
  %48 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  store i32* %47, i32** %48, align 8
  %49 = load i32**, i32*** %4, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %54, i64 %60
  %62 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  store i32* %61, i32** %62, align 16
  %63 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 64, %66
  %68 = mul nsw i32 %67, 4
  %69 = call i32 @draw_cbp(i32** %63, i32* %64, i32 %65, i32 %68, i32 1024)
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %18
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 16
  store i32 %74, i32* %7, align 4
  br label %15

75:                                               ; preds = %15
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 16
  store i32 %78, i32* %8, align 4
  br label %11

79:                                               ; preds = %11
  ret void
}

declare dso_local i32 @draw_cbp(i32**, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
