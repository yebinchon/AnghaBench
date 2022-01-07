; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_set_thread_exit_reason.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_set_thread_exit_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uthread = type { i64 }
%struct.task = type { i32 }

@OS_REASON_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_thread_exit_reason(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uthread*, align 8
  %8 = alloca %struct.task*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct.uthread* @get_bsdthread_info(i8* %11)
  store %struct.uthread* %12, %struct.uthread** %7, align 8
  store %struct.task* null, %struct.task** %8, align 8
  store i32* null, i32** %9, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @OS_REASON_NULL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %53

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = call %struct.task* @get_threadtask(i8* %23)
  store %struct.task* %24, %struct.task** %8, align 8
  %25 = load %struct.task*, %struct.task** %8, align 8
  %26 = call i64 @get_bsdtask_info(%struct.task* %25)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @proc_lock(i32* %28)
  br label %30

30:                                               ; preds = %22, %19
  %31 = load %struct.uthread*, %struct.uthread** %7, align 8
  %32 = getelementptr inbounds %struct.uthread, %struct.uthread* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OS_REASON_NULL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.uthread*, %struct.uthread** %7, align 8
  %39 = getelementptr inbounds %struct.uthread, %struct.uthread* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %43

40:                                               ; preds = %30
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @os_reason_free(i64 %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @proc_unlock(i32* %51)
  br label %53

53:                                               ; preds = %18, %46, %43
  ret void
}

declare dso_local %struct.uthread* @get_bsdthread_info(i8*) #1

declare dso_local %struct.task* @get_threadtask(i8*) #1

declare dso_local i64 @get_bsdtask_info(%struct.task*) #1

declare dso_local i32 @proc_lock(i32*) #1

declare dso_local i32 @os_reason_free(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @proc_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
