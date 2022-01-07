; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_validate_namespace_args.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_validate_namespace_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @validate_namespace_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_namespace_args(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp eq i64 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %42

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp eq i64 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %42

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %42

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp eq i64 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %42

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp eq i64 %32, 4
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %42

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %37, 4
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %39, %34, %29, %22, %17, %12
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %40, %23
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
