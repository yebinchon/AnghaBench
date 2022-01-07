; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_process_policy.c_proc_get_originatorbgstate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_process_policy.c_proc_get_originatorbgstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TASK_POLICY_DARWIN_BG = common dso_local global i32 0, align 4
@PROC_FLAG_APPLICATION = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@KERN_INVALID_VALUE = common dso_local global i64 0, align 8
@ENOATTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_get_originatorbgstate(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = call %struct.TYPE_3__* (...) @current_proc()
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = call i32 (...) @current_thread()
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @TASK_POLICY_DARWIN_BG, align 4
  %15 = call i32 @proc_get_effective_thread_policy(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  store i32 1, i32* %19, align 4
  store i32 0, i32* %2, align 4
  br label %56

20:                                               ; preds = %1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @proc_get_darwinbgstate(i32 %23, i32* %6)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PROC_FLAG_APPLICATION, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @PROC_FLAG_APPLICATION, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32*, i32** %3, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %2, align 4
  br label %56

32:                                               ; preds = %20
  %33 = call i64 @thread_get_current_voucher_origin_pid(i32* %8)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @KERN_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @KERN_INVALID_TASK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @ESRCH, align 4
  store i32 %42, i32* %2, align 4
  br label %56

43:                                               ; preds = %37
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @KERN_INVALID_VALUE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @ENOATTR, align 4
  store i32 %48, i32* %2, align 4
  br label %56

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %2, align 4
  br label %56

51:                                               ; preds = %32
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @proc_pidbackgrounded(i32 %52, i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %49, %47, %41, %30, %18
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_3__* @current_proc(...) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @proc_get_effective_thread_policy(i32, i32) #1

declare dso_local i32 @proc_get_darwinbgstate(i32, i32*) #1

declare dso_local i64 @thread_get_current_voucher_origin_pid(i32*) #1

declare dso_local i32 @proc_pidbackgrounded(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
