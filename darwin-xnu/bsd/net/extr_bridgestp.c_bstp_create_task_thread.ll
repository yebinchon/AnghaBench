; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_create_task_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_create_task_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"bstp_task\00", align 1
@bstp_task_grp = common dso_local global i32 0, align 4
@bstp_task_attr = common dso_local global i32 0, align 4
@bstp_task_mtx = common dso_local global i32 0, align 4
@bstp_lock_grp = common dso_local global i32 0, align 4
@bstp_lock_attr = common dso_local global i32 0, align 4
@bstp_task_thread_func = common dso_local global i64 0, align 8
@bstp_task_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bstp_create_task_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_create_task_thread() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  %3 = call i32* (...) @lck_grp_attr_alloc_init()
  store i32* %3, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %4)
  store i32 %5, i32* @bstp_task_grp, align 4
  %6 = call i32 (...) @lck_attr_alloc_init()
  store i32 %6, i32* @bstp_task_attr, align 4
  %7 = load i32, i32* @bstp_task_mtx, align 4
  %8 = load i32, i32* @bstp_lock_grp, align 4
  %9 = load i32, i32* @bstp_lock_attr, align 4
  %10 = call i32 @lck_mtx_init(i32 %7, i32 %8, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @lck_grp_attr_free(i32* %11)
  %13 = load i64, i64* @bstp_task_thread_func, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @kernel_thread_start(i32 %14, i32* null, i32* @bstp_task_thread)
  store i32 %15, i32* %1, align 4
  ret void
}

declare dso_local i32* @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32*) #1

declare dso_local i32 @lck_attr_alloc_init(...) #1

declare dso_local i32 @lck_mtx_init(i32, i32, i32) #1

declare dso_local i32 @lck_grp_attr_free(i32*) #1

declare dso_local i32 @kernel_thread_start(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
