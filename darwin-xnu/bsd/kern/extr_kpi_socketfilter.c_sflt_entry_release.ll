; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socketfilter.c_sflt_entry_release.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socketfilter.c_sflt_entry_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_filter_entry = type { %struct.socket_filter_entry*, i32 }

@sock_filter_cleanup_lock = common dso_local global i32 0, align 4
@sock_filter_cleanup_entries = common dso_local global %struct.socket_filter_entry* null, align 8
@sock_filter_cleanup_thread = common dso_local global i32* null, align 8
@sflt_cleanup_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"sflt_entry_release - sfe_refcount (%d) <= 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket_filter_entry*)* @sflt_entry_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sflt_entry_release(%struct.socket_filter_entry* %0) #0 {
  %2 = alloca %struct.socket_filter_entry*, align 8
  %3 = alloca i32, align 4
  store %struct.socket_filter_entry* %0, %struct.socket_filter_entry** %2, align 8
  %4 = load %struct.socket_filter_entry*, %struct.socket_filter_entry** %2, align 8
  %5 = getelementptr inbounds %struct.socket_filter_entry, %struct.socket_filter_entry* %4, i32 0, i32 1
  %6 = call i32 @OSDecrementAtomic(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load i32, i32* @sock_filter_cleanup_lock, align 4
  %11 = call i32 @lck_mtx_lock(i32 %10)
  %12 = load %struct.socket_filter_entry*, %struct.socket_filter_entry** @sock_filter_cleanup_entries, align 8
  %13 = load %struct.socket_filter_entry*, %struct.socket_filter_entry** %2, align 8
  %14 = getelementptr inbounds %struct.socket_filter_entry, %struct.socket_filter_entry* %13, i32 0, i32 0
  store %struct.socket_filter_entry* %12, %struct.socket_filter_entry** %14, align 8
  %15 = load %struct.socket_filter_entry*, %struct.socket_filter_entry** %2, align 8
  store %struct.socket_filter_entry* %15, %struct.socket_filter_entry** @sock_filter_cleanup_entries, align 8
  %16 = load %struct.socket_filter_entry*, %struct.socket_filter_entry** %2, align 8
  %17 = getelementptr inbounds %struct.socket_filter_entry, %struct.socket_filter_entry* %16, i32 0, i32 0
  %18 = load %struct.socket_filter_entry*, %struct.socket_filter_entry** %17, align 8
  %19 = icmp eq %struct.socket_filter_entry* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %9
  %21 = load i32*, i32** @sock_filter_cleanup_thread, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @sflt_cleanup_thread, align 4
  %25 = call i32 @kernel_thread_start(i32 %24, i32* null, i32** @sock_filter_cleanup_thread)
  br label %28

26:                                               ; preds = %20
  %27 = call i32 @wakeup(%struct.socket_filter_entry** @sock_filter_cleanup_entries)
  br label %28

28:                                               ; preds = %26, %23
  br label %29

29:                                               ; preds = %28, %9
  %30 = load i32, i32* @sock_filter_cleanup_lock, align 4
  %31 = call i32 @lck_mtx_unlock(i32 %30)
  br label %39

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %29
  ret void
}

declare dso_local i32 @OSDecrementAtomic(i32*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @kernel_thread_start(i32, i32*, i32**) #1

declare dso_local i32 @wakeup(%struct.socket_filter_entry**) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
