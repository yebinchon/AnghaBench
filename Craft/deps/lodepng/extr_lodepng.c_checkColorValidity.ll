; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_checkColorValidity.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_checkColorValidity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @checkColorValidity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkColorValidity(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %62 [
    i32 0, label %7
    i32 2, label %24
    i32 3, label %32
    i32 4, label %46
    i32 6, label %54
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %23, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 37, i32* %3, align 4
  br label %64

23:                                               ; preds = %19, %16, %13, %10, %7
  br label %63

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 16
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 37, i32* %3, align 4
  br label %64

31:                                               ; preds = %27, %24
  br label %63

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 8
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 37, i32* %3, align 4
  br label %64

45:                                               ; preds = %41, %38, %35, %32
  br label %63

46:                                               ; preds = %2
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 8
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 16
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 37, i32* %3, align 4
  br label %64

53:                                               ; preds = %49, %46
  br label %63

54:                                               ; preds = %2
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 16
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i32 37, i32* %3, align 4
  br label %64

61:                                               ; preds = %57, %54
  br label %63

62:                                               ; preds = %2
  store i32 31, i32* %3, align 4
  br label %64

63:                                               ; preds = %61, %53, %45, %31, %23
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62, %60, %52, %44, %30, %22
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
