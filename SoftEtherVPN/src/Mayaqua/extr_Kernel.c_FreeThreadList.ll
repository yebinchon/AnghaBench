; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_FreeThreadList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_FreeThreadList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeThreadList(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %35

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @LockList(i32* %9)
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %25, %8
  %12 = load i64, i64* %3, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @LIST_NUM(i32* %13)
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load i32*, i32** %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i32* @LIST_DATA(i32* %17, i64 %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @INFINITE, align 4
  %22 = call i32 @WaitThread(i32* %20, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @ReleaseThread(i32* %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i64, i64* %3, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %11

28:                                               ; preds = %11
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @DeleteAll(i32* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @UnlockList(i32* %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @ReleaseList(i32* %33)
  br label %35

35:                                               ; preds = %28, %7
  ret void
}

declare dso_local i32 @LockList(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i32* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i32 @DeleteAll(i32*) #1

declare dso_local i32 @UnlockList(i32*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
