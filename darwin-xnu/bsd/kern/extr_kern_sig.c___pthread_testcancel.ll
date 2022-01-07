; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c___pthread_testcancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c___pthread_testcancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uthread = type { i32 }

@UT_NOTCANCELPT = common dso_local global i32 0, align 4
@UT_CANCELDISABLE = common dso_local global i32 0, align 4
@UT_CANCEL = common dso_local global i32 0, align 4
@UT_CANCELED = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__pthread_testcancel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.uthread*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @current_thread()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @get_bsdthread_info(i32 %6)
  %8 = inttoptr i64 %7 to %struct.uthread*
  store %struct.uthread* %8, %struct.uthread** %4, align 8
  %9 = load i32, i32* @UT_NOTCANCELPT, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.uthread*, %struct.uthread** %4, align 8
  %12 = getelementptr inbounds %struct.uthread, %struct.uthread* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.uthread*, %struct.uthread** %4, align 8
  %16 = getelementptr inbounds %struct.uthread, %struct.uthread* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UT_CANCELDISABLE, align 4
  %19 = load i32, i32* @UT_CANCEL, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @UT_CANCELED, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = load i32, i32* @UT_CANCEL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @EINTR, align 4
  %31 = call i32 @unix_syscall_return(i32 %30)
  br label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @thread_abort_safely(i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %1
  ret void
}

declare dso_local i32 @current_thread(...) #1

declare dso_local i64 @get_bsdthread_info(i32) #1

declare dso_local i32 @unix_syscall_return(i32) #1

declare dso_local i32 @thread_abort_safely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
