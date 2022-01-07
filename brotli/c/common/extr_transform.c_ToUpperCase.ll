; ModuleID = '/home/carl/AnghaBench/brotli/c/common/extr_transform.c_ToUpperCase.c'
source_filename = "/home/carl/AnghaBench/brotli/c/common/extr_transform.c_ToUpperCase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ToUpperCase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ToUpperCase(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 192
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 97
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %16, 122
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, 32
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %18, %13, %8
  store i32 1, i32* %2, align 4
  br label %39

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 224
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %32, 32
  store i32 %33, i32* %31, align 4
  store i32 2, i32* %2, align 4
  br label %39

34:                                               ; preds = %24
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %37, 5
  store i32 %38, i32* %36, align 4
  store i32 3, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %29, %23
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
