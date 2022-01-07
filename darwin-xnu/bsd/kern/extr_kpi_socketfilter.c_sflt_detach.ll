; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socketfilter.c_sflt_detach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socketfilter.c_sflt_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.socket_filter_entry* }
%struct.socket_filter_entry = type { i32, %struct.TYPE_6__*, %struct.socket_filter_entry* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@sock_filter_lock = common dso_local global i32 0, align 4
@SFEF_ATTACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sflt_detach(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.socket_filter_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = icmp eq %struct.TYPE_7__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %56

15:                                               ; preds = %10
  %16 = load i32, i32* @sock_filter_lock, align 4
  %17 = call i32 @lck_rw_lock_exclusive(i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.socket_filter_entry*, %struct.socket_filter_entry** %19, align 8
  store %struct.socket_filter_entry* %20, %struct.socket_filter_entry** %6, align 8
  br label %21

21:                                               ; preds = %42, %15
  %22 = load %struct.socket_filter_entry*, %struct.socket_filter_entry** %6, align 8
  %23 = icmp ne %struct.socket_filter_entry* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load %struct.socket_filter_entry*, %struct.socket_filter_entry** %6, align 8
  %26 = getelementptr inbounds %struct.socket_filter_entry, %struct.socket_filter_entry* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load %struct.socket_filter_entry*, %struct.socket_filter_entry** %6, align 8
  %35 = getelementptr inbounds %struct.socket_filter_entry, %struct.socket_filter_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SFEF_ATTACHED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %46

41:                                               ; preds = %33, %24
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.socket_filter_entry*, %struct.socket_filter_entry** %6, align 8
  %44 = getelementptr inbounds %struct.socket_filter_entry, %struct.socket_filter_entry* %43, i32 0, i32 2
  %45 = load %struct.socket_filter_entry*, %struct.socket_filter_entry** %44, align 8
  store %struct.socket_filter_entry* %45, %struct.socket_filter_entry** %6, align 8
  br label %21

46:                                               ; preds = %40, %21
  %47 = load %struct.socket_filter_entry*, %struct.socket_filter_entry** %6, align 8
  %48 = icmp ne %struct.socket_filter_entry* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.socket_filter_entry*, %struct.socket_filter_entry** %6, align 8
  %51 = call i32 @sflt_detach_locked(%struct.socket_filter_entry* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* @sock_filter_lock, align 4
  %54 = call i32 @lck_rw_unlock_exclusive(i32 %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @lck_rw_lock_exclusive(i32) #1

declare dso_local i32 @sflt_detach_locked(%struct.socket_filter_entry*) #1

declare dso_local i32 @lck_rw_unlock_exclusive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
