; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/tests/extr_test_misc2_gen.c_op_check.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/tests/extr_test_misc2_gen.c_op_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16)* @op_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_check(i16 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  %4 = load i16, i16* %3, align 2
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, 61440
  %7 = icmp eq i32 %6, 24576
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

9:                                                ; preds = %1
  %10 = load i16, i16* %3, align 2
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 61688
  %13 = icmp eq i32 %12, 20680
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %61

15:                                               ; preds = %9
  %16 = load i16, i16* %3, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 65408
  %19 = icmp eq i32 %18, 20096
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %61

21:                                               ; preds = %15
  %22 = load i16, i16* %3, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 61440
  %25 = icmp eq i32 %24, 40960
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %61

27:                                               ; preds = %21
  %28 = load i16, i16* %3, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %29, 61440
  %31 = icmp eq i32 %30, 61440
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %61

33:                                               ; preds = %27
  %34 = load i16, i16* %3, align 2
  %35 = zext i16 %34 to i32
  %36 = and i32 %35, 65528
  %37 = icmp eq i32 %36, 20080
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i16, i16* %3, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp ne i32 %40, 20081
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i16, i16* %3, align 2
  %44 = zext i16 %43 to i32
  %45 = icmp ne i32 %44, 20086
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %61

47:                                               ; preds = %42, %38, %33
  %48 = load i16, i16* %3, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %49, 63
  %51 = icmp sge i32 %50, 40
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i16, i16* %3, align 2
  %54 = zext i16 %53 to i32
  %55 = and i32 %54, -64
  %56 = call i32 (...) @rand()
  %57 = srem i32 %56, 40
  %58 = or i32 %55, %57
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %3, align 2
  br label %60

60:                                               ; preds = %52, %47
  store i32 1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %46, %32, %26, %20, %14, %8
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
