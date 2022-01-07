; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/stdio/extr_scanf.c___sccl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/stdio/extr_scanf.c___sccl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @__sccl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @__sccl(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* %9, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 94
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %5, align 8
  %17 = load i32, i32* %15, align 4
  store i32 %17, i32* %6, align 4
  br label %19

18:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @memset(i8* %20, i32 %21, i32 256)
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 -1
  store i32* %27, i32** %3, align 8
  br label %78

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 1, %29
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %77, %28
  %32 = load i32, i32* %8, align 4
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 %33, i8* %37, align 1
  br label %38

38:                                               ; preds = %71, %31
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %5, align 8
  %41 = load i32, i32* %39, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %75 [
    i32 0, label %43
    i32 45, label %46
    i32 93, label %73
  ]

43:                                               ; preds = %38
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 -1
  store i32* %45, i32** %3, align 8
  br label %78

46:                                               ; preds = %38
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 93
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %46
  store i32 45, i32* %6, align 4
  br label %77

56:                                               ; preds = %51
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %5, align 8
  br label %59

59:                                               ; preds = %67, %56
  %60 = load i32, i32* %8, align 4
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  store i8 %61, i8* %66, align 1
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %59, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %6, align 4
  br label %38

73:                                               ; preds = %38
  %74 = load i32*, i32** %5, align 8
  store i32* %74, i32** %3, align 8
  br label %78

75:                                               ; preds = %38
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %55
  br label %31

78:                                               ; preds = %73, %43, %25
  %79 = load i32*, i32** %3, align 8
  ret i32* %79
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
