; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_monoblack2Y_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_monoblack2Y_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32*)* @monoblack2Y_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monoblack2Y_c(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %18 = load i32*, i32** %7, align 8
  store i32* %18, i32** %13, align 8
  %19 = load i32, i32* %11, align 4
  %20 = add nsw i32 %19, 7
  %21 = ashr i32 %20, 3
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %53, %6
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %22
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %14, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %49, %26
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %15, align 4
  %38 = sub nsw i32 7, %37
  %39 = ashr i32 %36, %38
  %40 = and i32 %39, 1
  %41 = mul nsw i32 %40, 16383
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = mul nsw i32 8, %43
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  store i32 %41, i32* %48, align 4
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %15, align 4
  br label %32

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %22

56:                                               ; preds = %22
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, 7
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %56
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %66

66:                                               ; preds = %85, %60
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %68, 7
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %15, align 4
  %74 = sub nsw i32 7, %73
  %75 = ashr i32 %72, %74
  %76 = and i32 %75, 1
  %77 = mul nsw i32 %76, 16383
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %14, align 4
  %80 = mul nsw i32 8, %79
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  store i32 %77, i32* %84, align 4
  br label %85

85:                                               ; preds = %71
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %15, align 4
  br label %66

88:                                               ; preds = %66
  br label %89

89:                                               ; preds = %88, %56
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
