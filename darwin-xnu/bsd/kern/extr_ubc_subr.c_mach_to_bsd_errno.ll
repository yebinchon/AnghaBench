; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_mach_to_bsd_errno.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_mach_to_bsd_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mach_to_bsd_errno(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %34 [
    i32 130, label %5
    i32 168, label %6
    i32 167, label %6
    i32 144, label %6
    i32 162, label %6
    i32 156, label %6
    i32 158, label %6
    i32 155, label %6
    i32 166, label %6
    i32 165, label %6
    i32 148, label %6
    i32 159, label %6
    i32 160, label %6
    i32 173, label %6
    i32 171, label %6
    i32 170, label %6
    i32 164, label %6
    i32 163, label %6
    i32 157, label %6
    i32 145, label %6
    i32 154, label %6
    i32 153, label %6
    i32 135, label %8
    i32 143, label %8
    i32 140, label %8
    i32 136, label %8
    i32 139, label %10
    i32 134, label %10
    i32 128, label %10
    i32 161, label %10
    i32 169, label %12
    i32 149, label %14
    i32 137, label %14
    i32 172, label %14
    i32 150, label %16
    i32 174, label %18
    i32 147, label %18
    i32 133, label %18
    i32 175, label %20
    i32 129, label %22
    i32 152, label %22
    i32 151, label %22
    i32 131, label %22
    i32 132, label %24
    i32 142, label %26
    i32 146, label %28
    i32 141, label %30
    i32 138, label %32
  ]

5:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

6:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %7 = load i32, i32* @EINVAL, align 4
  store i32 %7, i32* %2, align 4
  br label %36

8:                                                ; preds = %1, %1, %1, %1
  %9 = load i32, i32* @EACCES, align 4
  store i32 %9, i32* %2, align 4
  br label %36

10:                                               ; preds = %1, %1, %1, %1
  %11 = load i32, i32* @ENOMEM, align 4
  store i32 %11, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load i32, i32* @EIO, align 4
  store i32 %13, i32* %2, align 4
  br label %36

14:                                               ; preds = %1, %1, %1
  %15 = load i32, i32* @EPERM, align 4
  store i32 %15, i32* %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load i32, i32* @EBUSY, align 4
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %1, %1, %1
  %19 = load i32, i32* @EEXIST, align 4
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load i32, i32* @EINTR, align 4
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %1, %1, %1, %1
  %23 = load i32, i32* @ENOENT, align 4
  store i32 %23, i32* %2, align 4
  br label %36

24:                                               ; preds = %1
  %25 = load i32, i32* @ECONNRESET, align 4
  store i32 %25, i32* %2, align 4
  br label %36

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOTSUP, align 4
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %1
  %29 = load i32, i32* @ENETDOWN, align 4
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOENT, align 4
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %1
  %33 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @EIO, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %5
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
