; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution.c_setup_3x3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution.c_setup_3x3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32**, i32*, i32, i32, i32, i32, i32, i32)* @setup_3x3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_3x3(i32 %0, i32** %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32** %1, i32*** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %22

22:                                               ; preds = %79, %9
  %23 = load i32, i32* %19, align 4
  %24 = icmp slt i32 %23, 9
  br i1 %24, label %25, label %82

25:                                               ; preds = %22
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %19, align 4
  %28 = srem i32 %27, 3
  %29 = sub nsw i32 %28, 1
  %30 = add nsw i32 %26, %29
  %31 = call i32 @FFABS(i32 %30)
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %19, align 4
  %34 = sdiv i32 %33, 3
  %35 = add nsw i32 %32, %34
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @FFABS(i32 %36)
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %20, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %25
  %42 = load i32, i32* %15, align 4
  %43 = mul nsw i32 2, %42
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %20, align 4
  %46 = sub nsw i32 %44, %45
  br label %49

47:                                               ; preds = %25
  %48 = load i32, i32* %20, align 4
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi i32 [ %46, %41 ], [ %48, %47 ]
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %21, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* %17, align 4
  %56 = mul nsw i32 2, %55
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* %21, align 4
  %59 = sub nsw i32 %57, %58
  br label %62

60:                                               ; preds = %49
  %61 = load i32, i32* %21, align 4
  br label %62

62:                                               ; preds = %60, %54
  %63 = phi i32 [ %59, %54 ], [ %61, %60 ]
  store i32 %63, i32* %21, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %18, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* %13, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32**, i32*** %11, align 8
  %76 = load i32, i32* %19, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  store i32* %74, i32** %78, align 8
  br label %79

79:                                               ; preds = %62
  %80 = load i32, i32* %19, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %19, align 4
  br label %22

82:                                               ; preds = %22
  ret void
}

declare dso_local i32 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
