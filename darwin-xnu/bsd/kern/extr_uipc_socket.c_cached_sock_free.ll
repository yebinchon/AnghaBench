; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_cached_sock_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_cached_sock_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }

@so_cache_mtx = common dso_local global i32 0, align 4
@so_cache_time = common dso_local global i32 0, align 4
@cached_sock_count = common dso_local global i64 0, align 8
@max_cached_sock_count = common dso_local global i64 0, align 8
@so_cache_zone = common dso_local global i32 0, align 4
@so_cache_hw = common dso_local global i64 0, align 8
@so_cache_head = common dso_local global i32 0, align 4
@so_cache_ent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*)* @cached_sock_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cached_sock_free(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %3 = load i32, i32* @so_cache_mtx, align 4
  %4 = call i32 @lck_mtx_lock(i32 %3)
  %5 = call i32 (...) @net_uptime()
  store i32 %5, i32* @so_cache_time, align 4
  %6 = load i64, i64* @cached_sock_count, align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* @cached_sock_count, align 8
  %8 = load i64, i64* @max_cached_sock_count, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i64, i64* @cached_sock_count, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* @cached_sock_count, align 8
  %13 = load i32, i32* @so_cache_mtx, align 4
  %14 = call i32 @lck_mtx_unlock(i32 %13)
  %15 = load i32, i32* @so_cache_zone, align 4
  %16 = load %struct.socket*, %struct.socket** %2, align 8
  %17 = call i32 @zfree(i32 %15, %struct.socket* %16)
  br label %33

18:                                               ; preds = %1
  %19 = load i64, i64* @so_cache_hw, align 8
  %20 = load i64, i64* @cached_sock_count, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* @cached_sock_count, align 8
  store i64 %23, i64* @so_cache_hw, align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = load %struct.socket*, %struct.socket** %2, align 8
  %26 = load i32, i32* @so_cache_ent, align 4
  %27 = call i32 @STAILQ_INSERT_TAIL(i32* @so_cache_head, %struct.socket* %25, i32 %26)
  %28 = load i32, i32* @so_cache_time, align 4
  %29 = load %struct.socket*, %struct.socket** %2, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @so_cache_mtx, align 4
  %32 = call i32 @lck_mtx_unlock(i32 %31)
  br label %33

33:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @net_uptime(...) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @zfree(i32, %struct.socket*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
