; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspConvert32uto16s.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspConvert32uto16s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ScspConvert32uto16s(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %57, %4
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %60

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 32767
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32*, i32** %7, align 8
  store i32 32767, i32* %19, align 4
  br label %31

20:                                               ; preds = %14
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, -32768
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  store i32 -32768, i32* %25, align 4
  br label %30

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %24
  br label %31

31:                                               ; preds = %30, %18
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 32767
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32*, i32** %7, align 8
  store i32 32767, i32* %40, align 4
  br label %52

41:                                               ; preds = %31
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, -32768
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  store i32 -32768, i32* %46, align 4
  br label %51

47:                                               ; preds = %41
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %45
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %7, align 8
  br label %57

57:                                               ; preds = %52
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %9, align 8
  br label %10

60:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
