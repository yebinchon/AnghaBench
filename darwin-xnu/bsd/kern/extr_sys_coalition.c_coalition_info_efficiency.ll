; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_coalition.c_coalition_info_efficiency.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_coalition.c_coalition_info_efficiency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COALITION_TYPE_JETSAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@COALITION_EFFICIENCY_VALID_FLAGS = common dso_local global i32 0, align 4
@COALITION_FLAGS_EFFICIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @coalition_info_efficiency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coalition_info_efficiency(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @coalition_type(i32 %10)
  %12 = load i64, i64* @COALITION_TYPE_JETSAM, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %42

16:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @MIN(i32 %18, i32 4)
  %20 = call i32 @copyin(i32 %17, i32* %9, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %42

25:                                               ; preds = %16
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @COALITION_EFFICIENCY_VALID_FLAGS, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %42

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @COALITION_FLAGS_EFFICIENT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @coalition_set_efficient(i32 %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %30, %23, %14
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @coalition_type(i32) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @coalition_set_efficient(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
