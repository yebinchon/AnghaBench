; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_coalition.c_coalition_reap_syscall.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_coalition.c_coalition_reap_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@COALITION_NULL = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"(%llu, %u) -> %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @coalition_reap_syscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coalition_reap_syscall(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @copyin(i32 %15, i32* %8, i32 4)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %50

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @coalition_find_by_id(i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @COALITION_NULL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @ESRCH, align 4
  store i32 %28, i32* %3, align 4
  br label %50

29:                                               ; preds = %21
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @coalition_reap_internal(i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @coalition_release(i64 %32)
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %42 [
    i32 129, label %35
    i32 131, label %36
    i32 128, label %38
    i32 130, label %40
  ]

35:                                               ; preds = %29
  br label %44

36:                                               ; preds = %29
  %37 = load i32, i32* @EPERM, align 4
  store i32 %37, i32* %7, align 4
  br label %44

38:                                               ; preds = %29
  %39 = load i32, i32* @ESRCH, align 4
  store i32 %39, i32* %7, align 4
  br label %44

40:                                               ; preds = %29
  %41 = load i32, i32* @EBUSY, align 4
  store i32 %41, i32* %7, align 4
  br label %44

42:                                               ; preds = %29
  %43 = load i32, i32* @EIO, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %40, %38, %36, %35
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @coal_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %27, %19, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i64 @coalition_find_by_id(i32) #1

declare dso_local i32 @coalition_reap_internal(i64) #1

declare dso_local i32 @coalition_release(i64) #1

declare dso_local i32 @coal_dbg(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
