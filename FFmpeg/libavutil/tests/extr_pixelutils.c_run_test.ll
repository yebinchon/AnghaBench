; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_pixelutils.c_run_test.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_pixelutils.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sad_c = common dso_local global i32 0, align 4
@W1 = common dso_local global i32 0, align 4
@W2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %53, %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %56

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %6, align 8
  store i32* %18, i32** %11, align 8
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %29 [
    i32 0, label %20
    i32 1, label %25
    i32 2, label %28
  ]

20:                                               ; preds = %16
  %21 = load i32*, i32** %10, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %11, align 8
  br label %29

25:                                               ; preds = %16
  %26 = load i32*, i32** %11, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %11, align 8
  br label %29

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %16, %28, %25, %20
  store i32 1, i32* %7, align 4
  br label %30

30:                                               ; preds = %49, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @sad_c, align 4
  %33 = call i32 @FF_ARRAY_ELEMS(i32 %32)
  %34 = icmp sle i32 %31, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @W1, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @W2, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @run_single_test(i8* %36, i32* %37, i32 %38, i32* %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %46, %35
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %30

52:                                               ; preds = %30
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %13

56:                                               ; preds = %13
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @FF_ARRAY_ELEMS(i32) #1

declare dso_local i32 @run_single_test(i8*, i32*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
