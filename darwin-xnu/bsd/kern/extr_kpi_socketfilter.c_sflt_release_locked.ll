; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socketfilter.c_sflt_release_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socketfilter.c_sflt_release_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_filter = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (i32)* }

@sock_filter_lock = common dso_local global i32 0, align 4
@M_IFADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket_filter*)* @sflt_release_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sflt_release_locked(%struct.socket_filter* %0) #0 {
  %2 = alloca %struct.socket_filter*, align 8
  store %struct.socket_filter* %0, %struct.socket_filter** %2, align 8
  %3 = load %struct.socket_filter*, %struct.socket_filter** %2, align 8
  %4 = getelementptr inbounds %struct.socket_filter, %struct.socket_filter* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, -1
  store i64 %6, i64* %4, align 8
  %7 = load %struct.socket_filter*, %struct.socket_filter** %2, align 8
  %8 = getelementptr inbounds %struct.socket_filter, %struct.socket_filter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load %struct.socket_filter*, %struct.socket_filter** %2, align 8
  %13 = getelementptr inbounds %struct.socket_filter, %struct.socket_filter* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = icmp ne i32 (i32)* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = load i32, i32* @sock_filter_lock, align 4
  %19 = call i32 @lck_rw_unlock_exclusive(i32 %18)
  %20 = load %struct.socket_filter*, %struct.socket_filter** %2, align 8
  %21 = getelementptr inbounds %struct.socket_filter, %struct.socket_filter* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = load %struct.socket_filter*, %struct.socket_filter** %2, align 8
  %25 = getelementptr inbounds %struct.socket_filter, %struct.socket_filter* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %23(i32 %27)
  %29 = load i32, i32* @sock_filter_lock, align 4
  %30 = call i32 @lck_rw_lock_exclusive(i32 %29)
  br label %31

31:                                               ; preds = %17, %11
  %32 = load %struct.socket_filter*, %struct.socket_filter** %2, align 8
  %33 = load i32, i32* @M_IFADDR, align 4
  %34 = call i32 @FREE(%struct.socket_filter* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @lck_rw_unlock_exclusive(i32) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32) #1

declare dso_local i32 @FREE(%struct.socket_filter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
