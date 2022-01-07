; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kdasm.c_valid_ea.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kdasm.c_valid_ea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @valid_ea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_ea(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %73

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 63
  switch i64 %11, label %72 [
    i64 0, label %12
    i64 1, label %12
    i64 2, label %12
    i64 3, label %12
    i64 4, label %12
    i64 5, label %12
    i64 6, label %12
    i64 7, label %12
    i64 8, label %17
    i64 9, label %17
    i64 10, label %17
    i64 11, label %17
    i64 12, label %17
    i64 13, label %17
    i64 14, label %17
    i64 15, label %17
    i64 16, label %22
    i64 17, label %22
    i64 18, label %22
    i64 19, label %22
    i64 20, label %22
    i64 21, label %22
    i64 22, label %22
    i64 23, label %22
    i64 24, label %27
    i64 25, label %27
    i64 26, label %27
    i64 27, label %27
    i64 28, label %27
    i64 29, label %27
    i64 30, label %27
    i64 31, label %27
    i64 32, label %32
    i64 33, label %32
    i64 34, label %32
    i64 35, label %32
    i64 36, label %32
    i64 37, label %32
    i64 38, label %32
    i64 39, label %32
    i64 40, label %37
    i64 41, label %37
    i64 42, label %37
    i64 43, label %37
    i64 44, label %37
    i64 45, label %37
    i64 46, label %37
    i64 47, label %37
    i64 48, label %42
    i64 49, label %42
    i64 50, label %42
    i64 51, label %42
    i64 52, label %42
    i64 53, label %42
    i64 54, label %42
    i64 55, label %42
    i64 56, label %47
    i64 57, label %52
    i64 58, label %57
    i64 59, label %62
    i64 60, label %67
  ]

12:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9
  %13 = load i64, i64* %5, align 8
  %14 = and i64 %13, 2048
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  br label %73

17:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9
  %18 = load i64, i64* %5, align 8
  %19 = and i64 %18, 1024
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %73

22:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9
  %23 = load i64, i64* %5, align 8
  %24 = and i64 %23, 512
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %73

27:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9
  %28 = load i64, i64* %5, align 8
  %29 = and i64 %28, 256
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %73

32:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9
  %33 = load i64, i64* %5, align 8
  %34 = and i64 %33, 128
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %73

37:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9
  %38 = load i64, i64* %5, align 8
  %39 = and i64 %38, 64
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %73

42:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9
  %43 = load i64, i64* %5, align 8
  %44 = and i64 %43, 32
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %73

47:                                               ; preds = %9
  %48 = load i64, i64* %5, align 8
  %49 = and i64 %48, 16
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %73

52:                                               ; preds = %9
  %53 = load i64, i64* %5, align 8
  %54 = and i64 %53, 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %73

57:                                               ; preds = %9
  %58 = load i64, i64* %5, align 8
  %59 = and i64 %58, 2
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %3, align 4
  br label %73

62:                                               ; preds = %9
  %63 = load i64, i64* %5, align 8
  %64 = and i64 %63, 1
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %3, align 4
  br label %73

67:                                               ; preds = %9
  %68 = load i64, i64* %5, align 8
  %69 = and i64 %68, 4
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %67, %62, %57, %52, %47, %42, %37, %32, %27, %22, %17, %12, %8
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
