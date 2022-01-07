; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/uxkern/extr_ux_exception.c_ux_exception.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/uxkern/extr_ux_exception.c_ux_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGEMT = common dso_local global i32 0, align 4
@SIGSYS = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGABRT = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ux_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ux_exception(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @machine_exception(i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %46

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %45 [
    i32 136, label %18
    i32 135, label %26
    i32 137, label %28
    i32 133, label %30
    i32 132, label %32
    i32 134, label %43
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @SIGSEGV, align 4
  store i32 %23, i32* %4, align 4
  br label %46

24:                                               ; preds = %18
  %25 = load i32, i32* @SIGBUS, align 4
  store i32 %25, i32* %4, align 4
  br label %46

26:                                               ; preds = %16
  %27 = load i32, i32* @SIGILL, align 4
  store i32 %27, i32* %4, align 4
  br label %46

28:                                               ; preds = %16
  %29 = load i32, i32* @SIGFPE, align 4
  store i32 %29, i32* %4, align 4
  br label %46

30:                                               ; preds = %16
  %31 = load i32, i32* @SIGEMT, align 4
  store i32 %31, i32* %4, align 4
  br label %46

32:                                               ; preds = %16
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %42 [
    i32 128, label %34
    i32 129, label %36
    i32 130, label %38
    i32 131, label %40
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* @SIGSYS, align 4
  store i32 %35, i32* %4, align 4
  br label %46

36:                                               ; preds = %32
  %37 = load i32, i32* @SIGPIPE, align 4
  store i32 %37, i32* %4, align 4
  br label %46

38:                                               ; preds = %32
  %39 = load i32, i32* @SIGABRT, align 4
  store i32 %39, i32* %4, align 4
  br label %46

40:                                               ; preds = %32
  %41 = load i32, i32* @SIGKILL, align 4
  store i32 %41, i32* %4, align 4
  br label %46

42:                                               ; preds = %32
  br label %45

43:                                               ; preds = %16
  %44 = load i32, i32* @SIGTRAP, align 4
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %16, %42
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %43, %40, %38, %36, %34, %30, %28, %26, %24, %22, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @machine_exception(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
