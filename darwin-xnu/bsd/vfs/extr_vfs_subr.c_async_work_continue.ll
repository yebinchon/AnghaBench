; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_async_work_continue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_async_work_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_work_lst = type { i32 }

@vnode_async_work_list = common dso_local global %struct.async_work_lst zeroinitializer, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@async_work_handled = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"found VBAD vp (%p) on async queue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @async_work_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @async_work_continue() #0 {
  %1 = alloca %struct.async_work_lst*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store %struct.async_work_lst* @vnode_async_work_list, %struct.async_work_lst** %1, align 8
  br label %4

4:                                                ; preds = %28, %9, %0
  %5 = call i32 (...) @vnode_list_lock()
  %6 = load %struct.async_work_lst*, %struct.async_work_lst** %1, align 8
  %7 = call i64 @TAILQ_EMPTY(%struct.async_work_lst* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = load %struct.async_work_lst*, %struct.async_work_lst** %1, align 8
  %11 = load i32, i32* @THREAD_UNINT, align 4
  %12 = call i32 @assert_wait(%struct.async_work_lst* %10, i32 %11)
  %13 = call i32 (...) @vnode_list_unlock()
  %14 = call i32 @thread_block(i32 ptrtoint (void ()* @async_work_continue to i32))
  br label %4

15:                                               ; preds = %4
  %16 = load i32, i32* @async_work_handled, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @async_work_handled, align 4
  %18 = load %struct.async_work_lst*, %struct.async_work_lst** %1, align 8
  %19 = call i64 @TAILQ_FIRST(%struct.async_work_lst* %18)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @process_vp(i64 %20, i32 0, i32* %2)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @NULLVP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %25, %15
  br label %4
}

declare dso_local i32 @vnode_list_lock(...) #1

declare dso_local i64 @TAILQ_EMPTY(%struct.async_work_lst*) #1

declare dso_local i32 @assert_wait(%struct.async_work_lst*, i32) #1

declare dso_local i32 @vnode_list_unlock(...) #1

declare dso_local i32 @thread_block(i32) #1

declare dso_local i64 @TAILQ_FIRST(%struct.async_work_lst*) #1

declare dso_local i64 @process_vp(i64, i32, i32*) #1

declare dso_local i32 @panic(i8*, i64) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
